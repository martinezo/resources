#resource_types
Catalogs::ResourceType.delete_all
Catalogs::ResourceType.create(id: 1, name: "Salon de clases", description: "Salón para impartir clases")
Catalogs::ResourceType.create(id: 2, name: "Aula de videoconferencias", description: "Aula para videoconferencias")
Catalogs::ResourceType.create(id: 3, name: "Videoproyector", description: "Videoproyector")
Catalogs::ResourceType.create(id:4, name: "Apuntador laser", description: "Apuntador Laser")

#resources
Catalogs::Resource.delete_all
Catalogs::Resource.create(id: 1, abbr: 'SC-A', name: 'Salon de Clase A', resource_type_id: 1, description: 'Salon de clase A para 32 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 2, abbr: 'SC-B', name: 'Salon de Clase B', resource_type_id: 1, description: 'Salon de clase B para 33 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 3, abbr: 'SC-C', name: 'Salon de Clase C', resource_type_id: 1, description: 'Salon de clase C para 33 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 4, abbr: 'SC-D', name: 'Salon de Clase D', resource_type_id: 1, description: 'Salon de clase D para 34 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 5, abbr: 'SC-E', name: 'Salon de Clase E', resource_type_id: 1, description: 'Salon de clase E para 34 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 6, abbr: 'SC-F', name: 'Salon de Clase F', resource_type_id: 1, description: 'Salon de clase F para 35 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 7, abbr: 'SC-G', name: 'Salon de Clase G', resource_type_id: 1, description: 'Salon de clase G para 35 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 8, abbr: 'SC-H', name: 'Salon de Clase H', resource_type_id: 1, description: 'Salon de clase H para 36 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 9, abbr: 'SC-I', name: 'Salon de Clase I', resource_type_id: 1, description: 'Salon de clase I para 36 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 10, abbr: 'SC-J', name: 'Salon de Clase J', resource_type_id: 1, description: 'Salon de clase J para 37 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 11, abbr: 'SC-K', name: 'Salon de Clase K', resource_type_id: 1, description: 'Salon de clase K para 37 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 12, abbr: 'SC-L', name: 'Salon de Clase L', resource_type_id: 1, description: 'Salon de clase L para 38 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 13, abbr: 'SC-M', name: 'Salon de Clase M', resource_type_id: 1, description: 'Salon de clase M para 38 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 14, abbr: 'SC-N', name: 'Salon de Clase N', resource_type_id: 1, description: 'Salon de clase N para 39 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 15, abbr: 'SC-O', name: 'Salon de Clase O', resource_type_id: 1, description: 'Salon de clase O para 39 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 16, abbr: 'SC-P', name: 'Salon de Clase P', resource_type_id: 1, description: 'Salon de clase P para 40 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 17, abbr: 'SC-Q', name: 'Salon de Clase Q', resource_type_id: 1, description: 'Salon de clase Q para 40 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 18, abbr: 'SC-R', name: 'Salon de Clase R', resource_type_id: 1, description: 'Salon de clase R para 41 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 19, abbr: 'SC-S', name: 'Salon de Clase S', resource_type_id: 1, description: 'Salon de clase S para 41 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 20, abbr: 'SC-T', name: 'Salon de Clase T', resource_type_id: 1, description: 'Salon de clase T para 42 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 21, abbr: 'VC-A', name: 'Aula de videoconferencia A', resource_type_id: 1, description: 'Aula de videoconferencia A para 21 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 22, abbr: 'VC-B', name: 'Aula de videoconferencia B', resource_type_id: 1, description: 'Aula de videoconferencia B para 22 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 23, abbr: 'VC-C', name: 'Aula de videoconferencia C', resource_type_id: 1, description: 'Aula de videoconferencia C para 22 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 24, abbr: 'VC-D', name: 'Aula de videoconferencia D', resource_type_id: 1, description: 'Aula de videoconferencia D para 22 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 25, abbr: 'VC-E', name: 'Aula de videoconferencia E', resource_type_id: 1, description: 'Aula de videoconferencia E para 23 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 26, abbr: 'VC-F', name: 'Aula de videoconferencia F', resource_type_id: 1, description: 'Aula de videoconferencia F para 23 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 27, abbr: 'VC-G', name: 'Aula de videoconferencia G', resource_type_id: 1, description: 'Aula de videoconferencia G para 23 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 28, abbr: 'VC-H', name: 'Aula de videoconferencia H', resource_type_id: 1, description: 'Aula de videoconferencia H para 24 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 29, abbr: 'VC-I', name: 'Aula de videoconferencia I', resource_type_id: 1, description: 'Aula de videoconferencia I para 24 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 30, abbr: 'VC-J', name: 'Aula de videoconferencia J', resource_type_id: 1, description: 'Aula de videoconferencia J para 24 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 31, abbr: 'VC-K', name: 'Aula de videoconferencia K', resource_type_id: 1, description: 'Aula de videoconferencia K para 25 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 32, abbr: 'VC-L', name: 'Aula de videoconferencia L', resource_type_id: 1, description: 'Aula de videoconferencia L para 25 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 33, abbr: 'VC-M', name: 'Aula de videoconferencia M', resource_type_id: 1, description: 'Aula de videoconferencia M para 25 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 34, abbr: 'VC-N', name: 'Aula de videoconferencia N', resource_type_id: 1, description: 'Aula de videoconferencia N para 26 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 35, abbr: 'VC-O', name: 'Aula de videoconferencia O', resource_type_id: 1, description: 'Aula de videoconferencia O para 26 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 36, abbr: 'VC-P', name: 'Aula de videoconferencia P', resource_type_id: 1, description: 'Aula de videoconferencia P para 26 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 37, abbr: 'VC-Q', name: 'Aula de videoconferencia Q', resource_type_id: 1, description: 'Aula de videoconferencia Q para 27 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 38, abbr: 'VC-R', name: 'Aula de videoconferencia R', resource_type_id: 1, description: 'Aula de videoconferencia R para 27 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 39, abbr: 'VC-S', name: 'Aula de videoconferencia S', resource_type_id: 1, description: 'Aula de videoconferencia S para 27 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 40, abbr: 'VC-T', name: 'Aula de videoconferencia T', resource_type_id: 1, description: 'Aula de videoconferencia T para 28 personas' , admin_user_id: 1)
Catalogs::Resource.create(id: 41, abbr: 'VP-45480', name: 'Videoproyector  SONY', resource_type_id: 3, description: 'Videoproyector SONY - INV. UNAM 306393', admin_user_id: 1)
Catalogs::Resource.create(id: 42, abbr: 'VP-17130', name: 'Videoproyector  EPSON', resource_type_id: 3, description: 'Videoproyector EPSON - INV. UNAM 586341', admin_user_id: 1)
Catalogs::Resource.create(id: 43, abbr: 'VP-88548', name: 'Videoproyector  INFOCUS', resource_type_id: 3, description: 'Videoproyector INFOCUS - INV. UNAM 376728', admin_user_id: 1)
Catalogs::Resource.create(id: 44, abbr: 'VP-40308', name: 'Videoproyector  VIEWSONIC', resource_type_id: 3, description: 'Videoproyector VIEWSONIC - INV. UNAM 142316', admin_user_id: 1)
Catalogs::Resource.create(id: 45, abbr: 'VP-79134', name: 'Videoproyector  SONY', resource_type_id: 3, description: 'Videoproyector SONY - INV. UNAM 114768', admin_user_id: 1)
Catalogs::Resource.create(id: 46, abbr: 'VP-84894', name: 'Videoproyector  EPSON', resource_type_id: 3, description: 'Videoproyector EPSON - INV. UNAM 760046', admin_user_id: 1)
Catalogs::Resource.create(id: 47, abbr: 'VP-83930', name: 'Videoproyector  INFOCUS', resource_type_id: 3, description: 'Videoproyector INFOCUS - INV. UNAM 122946', admin_user_id: 1)
Catalogs::Resource.create(id: 48, abbr: 'VP-15907', name: 'Videoproyector  VIEWSONIC', resource_type_id: 3, description: 'Videoproyector VIEWSONIC - INV. UNAM 699466', admin_user_id: 1)

#users
Admin::User.delete_all
Admin::User.create(id: 1, login: 'rmartinez1006', name: 'Roberto Martínez Olvera', mail: 'rmartinez1006@prodigy.net', department_id: 1, user_type_id: 1)
Admin::User.create(id: 2, login: 'martinezo', name: 'Ramón Martínez Olvera', mail: 'martinezo@inb.unam.mx', department_id: 2, user_type_id: 1)
Admin::User.create(id: 3, login: 'admin1', name: 'Usuario administrador de prueba 1', mail: 'admin1@inb.unam.mx', department_id: 1, user_type_id: 2)
#password: adm1
Admin::User.create(id: 4, login: 'admin2', name: 'Usuario administrador de prueba 2', mail: 'admin2@inb.unam.mx', department_id: 2, user_type_id: 2)
#password: adm2
Admin::User.create(id: 5, login: 'user1', name: 'Usuario manager de prueba 1', mail: 'user1@inb.unam.mx', department_id: 1, user_type_id: 3)
#password: us1
Admin::User.create(id: 6, login: 'user2', name: 'Usuario manager de prueba 2', mail: 'user2@inb.unam.mx', department_id: 2, user_type_id: 3)
#password: us2

#institutions
Catalogs::Institution.delete_all
Catalogs::Institution.create(id: 1, abbr: 'INB', name: 'Instituto de Neurobiología de la UNAM')
Catalogs::Institution.create(id: 2, abbr: 'IFC', name: 'Instituto de Fisiología Celular de la UNAM')
Catalogs::Institution.create(id: 3, abbr: 'IIB', name: 'Instituto de Investigaciones Biomédicas de la UNAM')

#headquartes
Catalogs::Headquarter.delete_all
Catalogs::Headquarter.create(id: 2, institution_id: 1, name: 'Videoconferencias', responsible: 'Laura Ortiz Soto', email: 'martinezo@inb.unam.mx', phone: 'Ext. UNAM 3015')
Catalogs::Headquarter.create(id: 3, institution_id: 2, name: 'Videoconferencias', responsible: 'Fernando Villanueva Orozco', email: 'martinezo@inb.unam.mx', phone: 'Ext. UNAM 3111')

#departments
Catalogs::Department.delete_all
Catalogs::Department.create(id: 1, abbr: 'uvc', name: 'Unidad de Videoconferencia INB-UNAM', img_header: 'uvc_header.png', institution_id: 1)
Catalogs::Department.create(id: 2, abbr: 'pos', name: 'Unidad de Posgrado INB-UNAM', img_header: 'pos_header.png', institution_id: 1)
Catalogs::Department.create(id: 3, abbr: 'mic', name: 'Unidad de Microscopía INB-UNAM', img_header: 'mic_header.png', institution_id: 1)

#events_types
Catalogs::EventType.delete_all
Catalogs::EventType.create(id: 1, name: 'Videoconferencia')
Catalogs::EventType.create(id: 2, name: 'Clase')
Catalogs::EventType.create(id: 3, name: 'Seminario')
Catalogs::EventType.create(id: 4, name: 'Examen tutoral')
Catalogs::EventType.create(id: 5, name: 'Reunion de trabajo')
Catalogs::EventType.create(id: 6, name: 'Otro')

#statuses
Catalogs::Status.delete_all
Catalogs::Status.create(id: 1, name: 'Enviado')
Catalogs::Status.create(id: 2, name: 'Por confirmar')
Catalogs::Status.create(id: 3, name: 'Confirmado')
Catalogs::Status.create(id: 4, name: 'Cancelado')
Catalogs::Status.create(id: 5, name: 'Efectuado')

