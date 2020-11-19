# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

DateEvent.destroy_all
DateInfo.destroy_all
Task.destroy_all
Department.destroy_all
TeamMember.destroy_all 
Event.destroy_all
TheDate.destroy_all



###############Departments#############
sales = Department.create(
	name: "Sales"
) 

front_office = Department.create(
	name: "Front Office"
) 

housekeeping = Department.create(
	name: "Housekeeping"
) 

catering = Department.create(
	name: "Catering & Events"
) 

engineering = Department.create(
	name: "Engineering"
)

hr = Department.create(
	name: "Human Resources"
)

finance = Department.create(
	name: "Finance"
)
###############TeamMembers#############
bob = TeamMember.create(
    name: "Bob",
    password: "123",
	access: "Executive",
	birthday: "01/10/1990",
    start_date: "02/15/2018",
    points: 0,
    department_id: front_office.id
) 

sally = TeamMember.create(
    name: "Sally",
    password: "123",
	access: "Executive",
	birthday: "05/23/1988",
    start_date: "01/02/2017",
    points: 0,
    department_id: hr.id
) 

###############Events#############

comic_con = Event.create(
    name: "Comic Con",
    number_of_attendees: 2500,
    importance: "Highly"
)

birthday = Event.create(
    name: "Beyonce's Birthday",
    number_of_attendees: 1500,
    importance: "Highly"
)

###############TheDates#############
augfith = TheDate.create(
   date: "08/05/19" 
)
augsix = TheDate.create(
    date: "08/06/19" 
 )
augseven = TheDate.create(
    date: "08/07/19" 
 )
augeight = TheDate.create(
    date: "08/08/19" 
 )

augnine = TheDate.create(
date: "08/09/19" 
)
augten = TheDate.create(
    date: "08/10/19" 
)
augseleven = TheDate.create(
    date: "08/11/19" 
)
augtwelve = TheDate.create(
    date: "08/12/19" 
)

###############DateEvent#############

comaugfith = DateEvent.create(
    the_date_id: augfith.id,
    event_id: comic_con.id,
    arrival: true,
    main_event: false,
    departure: false
)

comaugsix = DateEvent.create(
    the_date_id: augsix.id,
    event_id: comic_con.id,
    arrival: false,
    main_event: true,
    departure: false
)

comaugseven = DateEvent.create(
    the_date_id: augseven.id,
    event_id: comic_con.id,
    arrival: false,
    main_event: true,
    departure: false
)

comaugeight = DateEvent.create(
    the_date_id: augeight.id,
    event_id: comic_con.id,
    arrival: false,
    main_event: false,
    departure: true
)

bbaugeight = DateEvent.create(
    the_date_id: augeight.id,
    event_id: birthday.id,
    arrival: false,
    main_event: false,
    departure: true
)

bbaugnine = DateEvent.create(
    the_date_id: augnine.id,
    event_id: birthday.id,
    arrival: false,
    main_event: false,
    departure: true
)

bbaugten = DateEvent.create(
    the_date_id: augten.id,
    event_id: birthday.id,
    arrival: false,
    main_event: false,
    departure: true
)

bbaugtwelve = DateEvent.create(
    the_date_id: augtwelve.id,
    event_id: birthday.id,
    arrival: false,
    main_event: false,
    departure: true
)
###############Task#############

taskone = Task.create(
    department_id: front_office.id,
    event_id: comic_con.id, 
   # team_member_id: null, # for certificate or project
    certificate: false,
    project: false,
   # dealdine: null, # for certificate or project
    status: 0, # for certificate or project
    details: "Guests will be arriving at 7am, ensure that all rooms are pre-keyed"
)

tasktwo = Task.create(
    department_id: front_office.id,
    event_id: birthday.id, 
   # team_member_id: null, # for certificate or project
    certificate: false,
    project: false,
   # dealdine: null, # for certificate or project
    status: 0, # for certificate or project
    details: "Make sure Beyonce has the Grand Suite..."
)


###############DateInfo#############


augeightinfo = DateInfo.create(
    the_date_id: augeight.id,
    arrivals: 180,
    departures: 250,
    performance_YTD: "95%",
    occupancy: "80%",
    rate: "$450"
)
   




