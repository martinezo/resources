# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# INSTITUTIONS
Catalogs::Institution.find_or_create_by(id: 1, abbr: 'INB', name: 'INSTITUTO DE NEUROBIOLOGIA DE LA UNAM', local: true)

# DEPARTMENTS
Catalogs::Department.find_or_create_by(id: 0, abbr: 'sos', name: 'Sistema de solicitud de soporte y recursos', img_header: 'sr_header.png', institution_id: 1)

# USERS
Admin::User.find_or_create_by(id:1, login: 'martinezo', name: 'Ramón Martínez Olvera', mail: 'martinezo@inb.unam.mx', department_id: 0, user_type_id: 1, initials: 'RMO')
# Admin::User.find_or_create_by(login: 'rmartinez1006', name: 'Roberto Martínez Olvera', mail: 'rmartinez1006@prodigy.net', department_id: 1, user_type_id: 1)

# STATUSES
Catalogs::Status.find_or_create_by(id: 0, name: 'Cancelado')
Catalogs::Status.find_or_create_by(id: 1, name: 'En espera')
Catalogs::Status.find_or_create_by(id: 2, name: 'Recibido')
Catalogs::Status.find_or_create_by(id: 3, name: 'Confirmado')
Catalogs::Status.find_or_create_by(id: 4, name: 'Efectuado')

# HEADQUARTES
Catalogs::Headquarter.find_or_create_by(id: 1, name: 'Laboratorio A-01', institution_id: 1, responsible: 'Dr. Jorge Larriva Shad', email: 'jlsneuro@unam.mx', phone: 'Ext. 34030')
Catalogs::Headquarter.find_or_create_by(id: 2, name: 'Laboratorio A-02', institution_id: 1, responsible: 'Dr. Pavel Rueda Orozco', email: 'pavel.rueda@unam.mx', phone: 'Ext. 34031')
Catalogs::Headquarter.find_or_create_by(id: 3, name: 'Laboratorio A-03', institution_id: 1, responsible: 'Dr. Alfredo Varela Echevarria', email: 'avarela@unam.mx', phone: 'Ext. 34032')
Catalogs::Headquarter.find_or_create_by(id: 4, name: 'Unidad de Microscopía A-05', institution_id: 1, responsible: 'Ing. Elsa Nydia Hernández Ríos', email: 'hrios@unam.mx', phone: 'Ext. 34033')
Catalogs::Headquarter.find_or_create_by(id: 5, name: 'Laboratorio A-13', institution_id: 1, responsible: 'Dr. Gerardo Rojas Piloni', email: 'piloni@unam.mx', phone: 'Ext. 34027')
Catalogs::Headquarter.find_or_create_by(id: 6, name: 'Laboratorio A-14', institution_id: 1, responsible: 'Dra. Carmen Clapp Jiménez', email: 'clapp@unam.mx', phone: 'Ext. 34028')
Catalogs::Headquarter.find_or_create_by(id: 7, name: 'Laboratorio A-15', institution_id: 1, responsible: 'Dr. Gonzalo Martínez de la Escalera', email: 'gmel@unam.mx', phone: 'Ext. 34029')
Catalogs::Headquarter.find_or_create_by(id: 8, name: 'Unidad de Proteogenómica B-01', institution_id: 1, responsible: 'Dra. Anaid Antaramian Salas', email: 'antaramian@unam.mx', phone: 'Ext. 34034')
Catalogs::Headquarter.find_or_create_by(id: 9, name: 'Laboratorio B-02', institution_id: 1, responsible: 'Dr. Manuel Aguilar', email: 'maguilar@unam.mx', phone: 'Ext. 34043')
Catalogs::Headquarter.find_or_create_by(id: 10, name: 'Area Secretarial Jefaturas de Área B-03', institution_id: 1, responsible: 'Dra. María Magdalena Giordano Noyola', email: 'Arellano Ostoa Rogelio', phone: 'Ext. 34046')
Catalogs::Headquarter.find_or_create_by(id: 11, name: 'Fotografía B-03', institution_id: 1, responsible: 'Laura Sánchez Carballo', email: 'luna64@comunidad.unam.mx', phone: 'Ext. 34046')
Catalogs::Headquarter.find_or_create_by(id: 12, name: 'Laboratorio B-04', institution_id: 1, responsible: 'Dr. Roberto Agustín Prado Alcalá', email: 'prado@unam.mx', phone: 'Ext. 34047')
Catalogs::Headquarter.find_or_create_by(id: 13, name: 'Laboratorio B-05', institution_id: 1, responsible: 'Dr. Victor Hugo de Lafuente Flores', email: 'lafuente@unam.mx', phone: 'Ext. 34048')
Catalogs::Headquarter.find_or_create_by(id: 14, name: 'Laboratorio B-06', institution_id: 1, responsible: 'Dra. Thalia Fernández Harmony', email: 'thalia@unam.mx', phone: 'Ext. 34051')
Catalogs::Headquarter.find_or_create_by(id: 15, name: 'Laboratorio B-11', institution_id: 1, responsible: 'Dr. Mauricio Diaz Muñoz', email: 'mdiaz@comunidad.unam.mx', phone: 'Ext. 34035')
Catalogs::Headquarter.find_or_create_by(id: 16, name: 'Laboratorio B-12', institution_id: 1, responsible: 'Dr. José Jesus García Colunga', email: 'garciacolunga@unam.mx', phone: 'Ext. 34063')
Catalogs::Headquarter.find_or_create_by(id: 17, name: 'Unidad de Análisis Conductual B-12', institution_id: 1, responsible: 'Dra. Deisy Gasca', email: 'gasca@inb.unam.mx', phone: 'Ext. 34036')
Catalogs::Headquarter.find_or_create_by(id: 18, name: 'Laboratorio B-14', institution_id: 1, responsible: 'Dra. Maria Isabel Miranda Saucedo', email: 'mirandami@unam.mx', phone: 'Ext. 34039')
Catalogs::Headquarter.find_or_create_by(id: 19, name: 'Laboratorio B-15', institution_id: 1, responsible: 'Dr. Hugo Merchant Nancy', email: 'hugomerchant@unam.mx', phone: 'Ext. 34040')
Catalogs::Headquarter.find_or_create_by(id: 20, name: 'Laboratorio B-16', institution_id: 1, responsible: 'Dr. Miguel Condes Lara', email: 'condes@unam.mx', phone: 'Ext. 34042')
Catalogs::Headquarter.find_or_create_by(id: 21, name: 'Laboratorio C-01', institution_id: 1, responsible: 'Dr. Fernando Peña Ortega', email: 'jfpena@unam.mx', phone: 'Ext. 34057')
Catalogs::Headquarter.find_or_create_by(id: 22, name: 'Laboratorio C-02', institution_id: 1, responsible: 'Dra. Sofia Yolanda Díaz Miranda', email: 'yoldi@unam.mx', phone: 'Ext. 34058')
Catalogs::Headquarter.find_or_create_by(id: 23, name: 'Laboratorio C-03', institution_id: 1, responsible: 'Dr. Manuel Salas Alvarado', email: 'masal@unam.mx', phone: 'Ext. 34059')
Catalogs::Headquarter.find_or_create_by(id: 24, name: 'Unidad de Computo C-11', institution_id: 1, responsible: 'Ing. Ramón Martínez Olvera', email: 'martinezo@inb.unam.mx', phone: 'Ext. 34052')
Catalogs::Headquarter.find_or_create_by(id: 25, name: 'Laboratorio C-12', institution_id: 1, responsible: 'Dr. Fernando Alejandro Barrios Alvarez', email: 'fbarrios@unam.mx', phone: 'Ext. 34053')
Catalogs::Headquarter.find_or_create_by(id: 26, name: 'Laboratorio C-13', institution_id: 1, responsible: 'Dr. Luis Concha Loyola', email: 'lconcha@unam.mx', phone: 'Ext. 34054')
Catalogs::Headquarter.find_or_create_by(id: 27, name: 'Laboratorio D-01', institution_id: 1, responsible: 'Dr. Carlos Aramburo de la Hoz', email: 'aramburo@unam.mx', phone: 'Ext. 34065')
Catalogs::Headquarter.find_or_create_by(id: 28, name: 'Laboratorio D-02', institution_id: 1, responsible: 'Dra. Carmen Yolanda Aceves Velasco', email: 'caracev@unam.mx', phone: 'Ext. 34067')
Catalogs::Headquarter.find_or_create_by(id: 29, name: 'Laboratorio D-03', institution_id: 1, responsible: 'Dr. Carlos Manuel Valverde Rodriguez', email: 'cavaro@unam.mx', phone: 'Ext. 34068')
Catalogs::Headquarter.find_or_create_by(id: 30, name: 'Laboratorio D-04', institution_id: 1, responsible: 'Dr. Juan Riesgo Escovar', email: 'riesgo@unam.mx', phone: 'Ext. 34069')
Catalogs::Headquarter.find_or_create_by(id: 31, name: 'Laboratorio D-05', institution_id: 1, responsible: 'Dra. Teresa Morales Guzmán', email: 'marter@unam.mx', phone: 'Ext. 34071')
Catalogs::Headquarter.find_or_create_by(id: 32, name: 'Laboratorio D-11', institution_id: 1, responsible: 'Dr. Raul Gerardo Paredes Guerrero', email: 'rparedes@.unam.mx', phone: 'Ext. 34060')
Catalogs::Headquarter.find_or_create_by(id: 33, name: 'Laboratorio D-12', institution_id: 1, responsible: 'Dra. María Magdalena Giordano Noyola', email: 'giordano@unam.mx', phone: 'Ext. 34061')
Catalogs::Headquarter.find_or_create_by(id: 34, name: 'Laboratorio D-13', institution_id: 1, responsible: 'Dr. Rogelio Arellano Ostoa', email: 'arellano.ostoa@comunidad.unam.mx', phone: 'Ext. 34062')
Catalogs::Headquarter.find_or_create_by(id: 35, name: 'Laboratorio D-15', institution_id: 1, responsible: 'Dr. Ataulfo Martínez Torres', email: 'ataulfo@unam.mx', phone: 'Ext. 34064')
Catalogs::Headquarter.find_or_create_by(id: 36, name: 'Dirección', institution_id: 1, responsible: 'Dr. Raúl Gerardo Paredes Guerrero', email: 'rparedes@.unam.mx', phone: 'Ext. 34001')
Catalogs::Headquarter.find_or_create_by(id: 37, name: 'Secretaria Académica', institution_id: 1, responsible: 'Dra. Carmen Yolanda Aceves Velasco', email: 'caracev@unam.mx', phone: 'Ext. 34002')
Catalogs::Headquarter.find_or_create_by(id: 38, name: 'Secretaria Técnica', institution_id: 1, responsible: 'Dra. Anaid Antaramian Salas', email: 'antaramian@unam.mx', phone: 'Ext. 34006')
Catalogs::Headquarter.find_or_create_by(id: 39, name: 'Secretaría Administrativa', institution_id: 1, responsible: 'Lic. Felipe Pedroza Montes de Oca', email: 'fpedroza@comunidad.unam.mx', phone: 'Ext. 34009')
Catalogs::Headquarter.find_or_create_by(id: 40, name: 'Contabilidad y Presupuesto', institution_id: 1, responsible: 'C.P. Antonio González Cruz', email: 'gonzalezcruz@comunidad.unam.mx', phone: 'Ext. 34011')
Catalogs::Headquarter.find_or_create_by(id: 41, name: 'Posgrado', institution_id: 1, responsible: 'Mtra. Leonor Casanova Rico', email: 'casanova@inb.unam.mx', phone: 'Ext. 34017')
Catalogs::Headquarter.find_or_create_by(id: 42, name: 'Unidad de Neurodesarrollo', institution_id: 1, responsible: 'Dra. Thalia Harmony Baillet', email: 'thaliah@unam.mx', phone: 'Ext. 34201')
Catalogs::Headquarter.find_or_create_by(id: 43, name: 'Unidad de Resonancia Magnética', institution_id: 1, responsible: 'Dr. Héctor Barragán', email: 'barragan@unam.mx', phone: 'Ext. 34078')
Catalogs::Headquarter.find_or_create_by(id: 44, name: 'Unidad de Videoconferencia', institution_id: 1, responsible: 'I.B.Q. Lourdes Lara Ayala', email: 'lulu@inb.unam.mx', phone: 'Ext. 34015')
Catalogs::Headquarter.find_or_create_by(id: 45, name: 'Unidad de Biomecánica', institution_id: 1, responsible: 'M. en C. Otto Braulio García Garibay', email: 'otto.braulio@inb.unam.mx', phone: 'Ext. 34218')
Catalogs::Headquarter.find_or_create_by(id: 46, name: 'Bioterio', institution_id: 1, responsible: 'M.V.Z. Martín García Servín', email: 'garciasm@unam.mx', phone: 'Ext. 34073')
Catalogs::Headquarter.find_or_create_by(id: 47, name: 'Proveeduría', institution_id: 1, responsible: 'Lic. Iris Gutierrez Huicochea', email: 'caring@teljuriquilla.unam.mx', phone: 'Ext. 34096')
Catalogs::Headquarter.find_or_create_by(id: 48, name: 'Coordinación de Servicios Administrativos', institution_id: 1, responsible: 'Lic. Alejandro Mondragón Téllez', email: 'mondragon@unam.mx', phone: 'Ext. 37099')
Catalogs::Headquarter.find_or_create_by(id: 49, name: 'Biblioteca', institution_id: 1, responsible: 'Dr. Francisco Javier Valles Valenzuela', email: 'jvalles@teljuriquilla.unam.mx', phone: 'Ext. 34234')

