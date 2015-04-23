# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# USERS
Admin::User.find_or_create_by(login: 'martinezo', name: 'Ramón Martínez Olvera', mail: 'martinezo@inb.unam.mx', department_id: 1, user_type_id: 1)
# Admin::User.find_or_create_by(login: 'rmartinez1006', name: 'Roberto Martínez Olvera', mail: 'rmartinez1006@prodigy.net', department_id: 1, user_type_id: 1)

# STATUSES
Catalogs::Status.find_or_create_by(id: 0, name: 'Cancelado')
Catalogs::Status.find_or_create_by(id: 1, name: 'En espera')
Catalogs::Status.find_or_create_by(id: 2, name: 'Recibido')
Catalogs::Status.find_or_create_by(id: 3, name: 'Confirmado')
Catalogs::Status.find_or_create_by(id: 4, name: 'Efectuado')


# INSTITUTIONS
Catalogs::Institution.find_or_create_by(id: 1, abbr: 'INB', name: 'INSTITUTO DE NEUROBIOLOGIA DE LA UNAM', local: true)

# DEPARTMENTS
Catalogs::Department.find_or_create_by(id: 0, abbr: 'sos', name: 'Sistema de solicitud de soporte y recursos', img_header: 'resources.jpg', institution_id: 1)

# HEADQUARTES
Catalogs::Headquarter.find_or_create_by(id: 1, name: 'Laboratorio A1', institution_id: 1, responsible: 'Dr. Jorge Larriva Shad', email: 'jlsneuro@unam.mx')
