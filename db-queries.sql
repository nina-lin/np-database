-- CUS510 Stage 4 – Nina Lin
-- Write queries to do the following

-- Return all volunteers, sorted by last name, then first name

select fname, lname
from volunteer
order by lname asc, fname;

-- Return a list of projects that have more than one location

select projName, count(location) as "# of Locations"
from project inner join location
	on project.projectID = location.projectID
group by projName
having count(location) > 1;

-- Return the number of volunteers who have registered for a given non-timeslot based project.

select shiftType, startTime, endTime, count(volunteer.empID) as "# of Volunteers"
from volunteer, project, timeslot, shift, worksOn
where volunteer.empID = shift.empID
	and volunteer.empID = worksOn.empID
	and shift.slotID = timeslot.slotID
	and project.projectID = worksOn.projectID
	and shiftType = "none"
group by shiftType;

-- break down by name

select fname, lname, projName, shiftType, startTime, endTime
from volunteer, project, timeslot, shift, worksOn
where volunteer.empID = shift.empID
	and volunteer.empID = worksOn.empID
	and shift.slotID = timeslot.slotID
	and project.projectID = worksOn.projectID
	and shiftType = "none";

-- Return the number of volunteers who have signed up for a time slot associated with a given project.

select timeslot.slotID, count(volunteer.empID) as "# of Volunteers", projName as "Project Name", startTime, endTime
from volunteer, project, timeslot, shift, worksOn
where volunteer.empID = shift.empID
	and volunteer.empID = worksOn.empID
	and shift.slotID = timeslot.slotID
	and project.projectID = worksOn.projectID
	and shiftType not like "none"
group by slotID, startTime, endTime, projName
order by projName, startTime asc

select timeslot.slotID, count(volunteer.empID) as "# of Volunteers", projName as "Project Name", startTime, endTime
from volunteer, project, timeslot, shift, worksOn
where volunteer.empID = shift.empID
	and volunteer.empID = worksOn.empID
	and shift.slotID = timeslot.slotID
	and project.projectID = worksOn.projectID
	and shiftType not like "none"
  and projName = "Lifetime Teachers"
group by slotID, startTime, endTime, projName
order by projName, startTime asc;

-- Return, for each project, its name and the total amount of money donated to it.

select projName as "Project Name", sum(amount) as "Total Amount"
from project, donation
where project.projectID = donation.projectID
group by projName
order by sum(amount) desc;

-- Return the first name, last name, id, and total slots signed up for before a particular date, grouped by volunteer id.

select distinct fname as "First Name", lname as "Last Name", volunteer.empID as "ID", count(signup) as "Count"
from volunteer, project, worksOn
where volunteer.empID = worksOn.empID
	and project.projectID = worksOn.projectID
  and signup > '2019-7-1'
group by volunteer.empID

-- Return complete information on each volunteer, including any positions held.

select *
from volunteer, position
where volunteer.empID = position.empID
order by lname

select *, position.name as "Position Held"
from volunteer, position
where volunteer.empID = position.empID
order by lname

-- Write two more queries that return “interesting” or useful data. Explain in writing why your queries are useful.

-- Find volunteers for ongoing projects that have not yet completed compliance training. This allows the organization to pinpoint actively working volunteers (as opposed to volunteers for completed or incomplete projects who slipped through the cracks) that still need to complete their compliance training, so as to avoid legal repercussions.
select fname as "First Name", lname as "Last Name", projName as "Project Name", supervisor
from volunteer, project, worksOn
where volunteer.empID = worksOn.empID
    and project.projectID = worksOn.projectID
	and status = "Ongoing"
    and training = "No"

-- Find the amount of projects that volunteers are interested in compared to actual hours donated to organization. This allows the organization to pinpoint volunteers that have previously expressed high levels of engagement and compare it to their total hours donated. This also allows the organization to pinpoint high performing individuals who might be able to spare some of those hours for other projects.
select fname as "First Name", lname as "Last Name", hoursWorked as "Total Hours", count(project)
from volunteer, projPreference
where volunteer.empID = projPreference.empID
group by fname,lname, hoursWorked
order by count(project) desc

-- Find projects that have no volunteers, so as to reallocate resources if necessary. This can also be modified to find projects that have little volunteers, by the organization's standards, simply by changing the value of the HAVING clause.
select projName, status, count(volunteer.empID) as "# of Volunteers"
from volunteer
left join worksOn on volunteer.empID = worksOn.empID
right join project on project.projectID = worksOn.projectID
group by projName, status
having count(volunteer.empID) < 1;
