# Practice
The application does SELECT by Identification ID only. You can run it from Postman:

http://localhost:8081/api/identification/1.0?IdentificationID=1

Method is GET

Database design is in Tables.sql file

Test data:

select * from [dbo].[Identification] with(nolock)

IdentificationID	FirstName	LastName	DOB	Gender	Title

1	Bob	Frederick	1980-06-21	M	Manager
2	Ivica	Djordjevic	1969-01-01	M	Developer


select * from Address with(nolock)

AddressID	IdentificationID	type	number	street	Unit	State	zipcode

1	1	home	1234	blah blah St	1 a	WV	12345
2	1	work	5678	main St	200	KS	54321
3	2	home	321	1st St	NULL	KS	25251


select * from Communication with(nolock)

AddressID	IdentificationID	type	number	street	Unit	State	zipcode

1	1	home	1234	blah blah St	1 a	WV	12345
2	1	work	5678	main St	200	KS	54321
3	2	home	321	1st St	NULL	KS	25251
