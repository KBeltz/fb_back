# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
    {
        first_name: 'Bubba',
        last_name: 'Gump',
        middle_name: 'Joe',
        gender: 'MALE',
        address_line_one: '1234 Somewhere Ln',
        state: 'NE',
        city: 'Omaha',
        zip_code: '68104',
        personal_phone: '4028675309',
        ssn: '1234'
    },{
        first_name: 'John',
        last_name: 'Doe',
        middle_name: 'James',
        gender: 'MALE',
        address_line_one: '4321 Somewhere Else Ln',
        state: 'NE',
        city: 'Lincoln',
        zip_code: '681502',
        personal_phone: '4028644409',
        ssn: '1111'
    },{
        first_name: 'Jennifer',
        last_name: 'Johnson',
        middle_name: 'Mary',
        gender: 'FEMALE',
        address_line_one: '999 Nowhere Ln',
        state: 'IA',
        city: 'Sioux City',
        zip_code: '22222',
        personal_phone: '4022222222',
        ssn: '2222'
    },{
        first_name: 'James',
        last_name: 'Jackson',
        middle_name: 'The Dude',
        gender: 'MALE',
        address_line_one: '4445 Who Knows Ln',
        state: 'TX',
        city: 'Dallas',
        zip_code: '33333',
        personal_phone: '4023333333',
        ssn: '3333'
    },{
        first_name: 'Sarah',
        last_name: 'Tall',
        middle_name: 'Plain',
        gender: 'FEMALE',
        address_line_one: '333 Whoah Ln',
        state: 'NE',
        city: 'Broken Bow',
        zip_code: '44444',
        personal_phone: '40244444444',
        ssn: '4444'
    },{
        first_name: 'Susie',
        last_name: 'Queue',
        middle_name: 'Sarandon',
        gender: 'FEMALE',
        address_line_one: '5666 Whoooooooah Yeah St',
        state: 'CA',
        city: 'Los Angeles',
        zip_code: '55555',
        personal_phone: '4025555555',
        ssn: '5555'
    },{
        first_name: 'Alexis',
        last_name: 'Smith',
        middle_name: 'Mary',
        gender: 'FEMALE',
        address_line_one: '765 Blurbsby Cir',
        state: 'NY',
        city: 'New York',
        zip_code: '66666',
        personal_phone: '4026666666',
        ssn: '6666'
    },{
        first_name: 'Jack',
        last_name: 'Johnson',
        middle_name: 'Joe',
        gender: 'MALE',
        address_line_one: '888 Whateva Yo Blvd',
        state: 'ND',
        city: 'Fargo',
        zip_code: '77777',
        personal_phone: '4027777777',
        ssn: '7777'
    },{
        first_name: 'John',
        last_name: 'Schmidt',
        middle_name: 'Jacob-Jingle-Heimer',
        gender: 'MALE',
        address_line_one: '11 HisNameIsMyNameToo Pkwy',
        state: 'KS',
        city: 'Kansas City',
        zip_code: '88888',
        personal_phone: '4028888888',
        ssn: '8888'
    },{
        first_name: 'Cindy',
        last_name: 'Sorenson',
        middle_name: 'Mae',
        gender: 'FEMALE',
        address_line_one: '543 Otherwise St',
        state: 'OR',
        city: 'Portland',
        zip_code: '9999',
        personal_phone: '4029999999',
        ssn: '9999'
    }
])