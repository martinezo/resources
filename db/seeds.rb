# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Admin::User.create(login: 'martinezo', name: 'Ramón Martínez Olvera', mail: 'martinezo@inb.unam.mx', department_id: 1, user_type_id: 1)
Admin::User.create(login: 'rmartinez1006', name: 'Roberto Martínez Olvera', mail: 'rmartinez1006@prodigy.net', department_id: 1, user_type_id: 1)
