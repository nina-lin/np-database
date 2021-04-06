insert into volunteer values ('V6951540','Sally','Heton','58 Trinity Ave.','Attle','NY','44812','1993-6-23','2017-10-26','Yes',1504,'911-492-8207','sheton@protonmail.com','Mark Heton','443-825-6797'
);
insert into volunteer values ('V2757419','Mahima','Farley','50 Southview St.','Tonawanda','IL','29158','1965-8-14','2018-2-16','Yes',193,'417-752-3072','mahima@farley.com','Bryson McDaniel','200-846-4249'
);
insert into volunteer values ('V1181055','Khadeejah','Bass','93 Trinity Ave.','Fullerton','IA','42721','1987-2-13','2018-7-20','Yes',113,'946-238-6119','kha.bass@protonmail.com','Bella Okabe','812-152-5479'
);
insert into volunteer values ('V3304869','Eben','McGowan','55 Kingston Hill','Hope','LA','33971','1984-11-11','2017-9-13','No',72,'287-228-5974','info@mcgowanllc.com','Stella Gardner','631-103-9072'
);
insert into volunteer values ('V2033306','Lacy','Bell','3 Hawker St.','Shelby','NH','74098','1970-8-28','2018-9-1','Yes',2884,'245-119-6609','lbell@shell.org','Brian Bell','350-105-1707'
);
insert into volunteer values ('V5917585','Madeline','Perry','94 Clarendon Grove','Great Barrington','TX','77379','1983-4-22','2019-6-16','No',1122,'771-585-8724','madeline@perry.com','Perry Perry','586-696-7684'
);
insert into volunteer values ('V9698362','Susannah','Hines','90 Pedley Ln.','Scunthorpe','FL','66506','1997-1-20','2014-11-25','No',179,'218-552-6226','shines@protonmail.com','Mike Hines','322-470-5610'
);
insert into volunteer values ('V6329265','Leonard','Harmon','49 Goodwood Blvd.','Sandbach','DC','64089','1967-11-4','2015-8-11','No',110,'745-529-8660','l_harmon@protonmail.com','Sam Harmon','839-392-1989'
);
insert into volunteer values ('V7621299','Karan','Lee','38 Baker Hill','Skokie','IL','38716','1967-9-9','2016-10-24','Yes',158,'382-454-6958','leeK@gmail.com','Elizabeth Stimms','777-626-5436');

insert into position values('V6951540', 'Technical');
insert into position values('V2757419', 'Office');
insert into position values('V1181055', 'Office');
insert into position values('V2033306', 'Field');
insert into position values('V9698362', 'Treasury');
insert into position values('V6329265', 'Managerial');
insert into position values('V7621299', 'Treasury');
insert into position values('V9698362', 'Managerial');
insert into position values('V3304869', 'Office');
insert into position values('V1181055', 'Treasury');
insert into position values('V6951540', 'Office');

insert into projPreference values('V6951540', 'Fundraiser');
insert into projPreference values('V2757419', 'Communications');
insert into projPreference values('V1181055', 'Fundraiser');
insert into projPreference values('V3304869', 'Communications');
insert into projPreference values('V2033306', 'Scheduling');
insert into projPreference values('V5917585', 'IT & Infrastructure');
insert into projPreference values('V9698362', 'Event Planning');
insert into projPreference values('V6329265', 'Outreach');
insert into projPreference values('V7621299', 'Scheduling');
insert into projPreference values('V2033306', 'IT & Infrastructure');
insert into projPreference values('V3304869', 'Fundraiser');
insert into projPreference values('V5917585', 'Event Planning');
insert into projPreference values('V7621299', 'Outreach');
insert into projPreference values('V3304869', 'Scheduling');
insert into projPreference values('V2033306', 'Event Planning');
insert into projPreference values('V2033306', 'Scheduling');
insert into projPreference values('V7621299', 'Outreach');
insert into projPreference values('V9698362', 'Event Planning');
insert into projPreference values('V5917585', 'Scheduling');
insert into projPreference values('V2757419', 'IT & Infrastructure');
insert into projPreference values('V3304869', 'Event Planning');
insert into projPreference values('V6329265', 'Field Work');
insert into projPreference values('V2033306', 'Communications');
insert into projPreference values('V5917585', 'IT & Infrastructure');
insert into projPreference values('V2033306', 'IT & Infrastructure');
insert into projPreference values('V5917585', 'Fundraiser');

insert into project values ('P7620633','Neighborhood Meals','Provides meals for underserved K-12 students and families.','Ongoing','Outreach','Jun Fukuyama');
insert into project values ('P4854831','Elementary Book Fair','2016 Fundraiser for local school libraries.','Complete','Development','Amara Lord');
insert into project values ('P1582330','Tiny Tots Hackaton','Early STEM program for qualifying K12 students.','Ongoing','Development','Barry Leech');
insert into project values ('P8336607','Supplying Our Schools','Summer fundraiser for school supplies.','Ongoing','Outreach','Antony Ridley');
insert into project values ('P7230251',"'1,000 Pages Project'",'Early childhood development project via 2-month reading program.','Ongoing','Development','Freyja Deacon');
insert into project values ('P3915335','The Summer Library','Early childhood development project via 3-month reading program.','Ongoing','Development','Arian Novak');
insert into project values ('P6350465','Lifetime Teachers','Pairing mentors and K12 students in need of tutoring.','Inactive','Development','Eathan Cunningham');

insert into timeslot values ('T2878876', '8:30:00',	'13:00:00',	'morning');
insert into timeslot values ('T5051556', '15:00:00', '19:00:00',	'afternoon');
insert into timeslot values ('T7695867', '18:00:00',	'23:00:00',	'evening');
insert into timeslot values ('T5158626', '8:30:00', '13:30:00',	'morning');
insert into timeslot values ('T7252424', '9:00:00',	'13:30:00',	'morning');
insert into timeslot values ('T7264551', '18:30:00',	'23:30:00',	'evening');
insert into timeslot values ('T4941888', '19:00:00',	'23:00:00',	'evening');
insert into timeslot values ('T2184931', '14:00:00',	'20:00:00',	'afternoon');
insert into timeslot values ('T1489970', '14:00:00',	'19:00:00',	'afternoon');
insert into timeslot values ('T6827392', '', '', 'none');
insert into timeslot values ('T6827393', '', '', 'none');

insert into shift values('T1489970','V2757419');
insert into shift values('T1489970','V1181055');
insert into shift values('T2184931','V3304869');
insert into shift values('T4941888','V2033306');
insert into shift values('T1489970','V5917585');
insert into shift values('T7695867','V9698362');
insert into shift values('T7695867','V6329265');
insert into shift values('T2184931','V7621299');
insert into shift values('T2878876','V6951540');
insert into shift values('T6827392','V9698362');
insert into shift values('T6827393','V1181055');

insert into worksOn values('V5917585', 'P6350465', '2019-12-17');
insert into worksOn values('V2033306', 'P7620633', '2019-1-16');
insert into worksOn values('V2033306', 'P6350465', '2019-12-20');
insert into worksOn values('V2757419', 'P6350465', '2019-6-14');
insert into worksOn values('V9698362', 'P3915335', '2019-6-28');
insert into worksOn values('V1181055', 'P7230251', '2019-4-28');
insert into worksOn values('V5917585', 'P7230251', '2019-5-20');
insert into worksOn values('V2757419', 'P4854831', '2019-8-23');
insert into worksOn values('V5917585', 'P4854831', '2019-10-12');
insert into worksOn values('V2757419', 'P8336607', '2019-3-2');
insert into worksOn values('V3304869', 'P1582330', '2019-7-7');
insert into worksOn values('V6329265', 'P7230251', '2019-3-9');
insert into worksOn values('V7621299', 'P1582330', '2019-9-20');

insert into location values('P7620633', 'Florida');
insert into location values('P4854831', 'District of Columbia');
insert into location values('P1582330', 'Louisiana');
insert into location values('P8336607', 'Louisiana');
insert into location values('P7230251', 'Iowa');
insert into location values('P3915335', 'New York');
insert into location values('P6350465', 'Iowa');
insert into location values('P4854831', 'New Hampshire');
insert into location values('P1582330', 'Texas');
insert into location values('P8336607', 'Illinois');

insert into donor values ('D2214719','Ashwin','Knight','17 Hereford Rd.','Stonanne','IA','36110','Donates separately from partner Jannah Knight','Knight Corp.','329-689-4719','ashwin@knight.org','2');
insert into donor values ('D1781751','Jannah','Knight','95 Little Ln.','Woodbank','PA','38548','Donates separately from partner Ashwin Knight','Knight Corp.','541-997-4412','jannah@knight.org','2');
insert into donor values ('D3668950','Mateo','Ventura','24 Byron Commmons','Rome','NY','11206','Mark donations as anonymous','MSR Industries','265-867-4674','mventura@msr.com','3');
insert into donor values ('D7717343','Jayson','North','69 Byron Ave.','Belwall','SC','51150','Very involved on social media','Self Employed','629-726-5775','jayson.north@protonmail.com','3');
insert into donor values ('D6865286','Mazie','Jung','4 Lime St.','Skokie','IL','24391','Mark donations as anonymous','Self Employed','942-893-5682','maziejung@gmail.com','3');
insert into donor values ('D4137269','Juliette','Wu','23 Edinburgh Rd.','Hell','TX','75202','Usually will donate with enough outreach.','Enco Oil Refinery','929-260-1922','jwu@enco.com','1');

insert into donation values ('D7717343','P7620633',5000,'2015-10-25');
insert into donation values ('D2214719','P1582330',650,'2016-9-29');
insert into donation values ('D4137269','P4854831',950,'2018-7-2');
insert into donation values ('D7717343','P3915335',700,'2020-10-7');
insert into donation values ('D4137269','P1582330',2500,'2018-6-17');
insert into donation values ('D4137269','P3915335',800,'2014-2-11');
insert into donation values ('D7717343','P4854831',4000,'2019-11-7');
insert into donation values ('D7717343','P7230251',1500,'2020-9-12');
insert into donation values ('D1781751','P4854831',450,'2012-2-11');
insert into donation values ('D1781751','P7620633',5000,'2013-3-27');
insert into donation values ('D6865286','P7620633',250,'2013-3-20');
insert into donation values ('D1781751','P1582330',5500,'2013-6-2');
insert into donation values ('D1781751','P6350465',800,'2015-3-29');
insert into donation values ('D7717343','P6350465',550,'2012-3-3');
insert into donation values ('D1781751','P8336607',700,'2016-1-25');
insert into donation values ('D4137269','P8336607',1500,'2016-6-26');
insert into donation values ('D6865286','P3915335',650,'2016-12-14');
insert into donation values ('D7717343','P1582330',750,'2016-11-14');
insert into donation values ('D3668950','P3915335',200,'2016-1-16');
insert into donation values ('D6865286','P1582330',650,'2020-11-6');
insert into donation values ('D3668950','P7230251',2000,'2012-1-11');
insert into donation values ('D4137269','P7230251',200,'2018-2-1');
insert into donation values ('D1781751','P7230251',4500,'2017-9-29');
insert into donation values ('D1781751','P3915335',550,'2017-8-12');
insert into donation values ('D2214719','P4854831',100000,'2015-6-19');
insert into donation values ('D6865286','P4854831',750,'2016-8-29');
