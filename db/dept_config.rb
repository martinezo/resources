# CONFIGURATIONS: rake db:dept_config
# tag: identifica la configuración para identificarla idependientemente de su id. Con esta etiqueta se formulas las condiciones para usar la configuración. Cada tag debe ser diferente.
# precedence: la lista se ordena en base a este campo independientemente del id del campo.

Admin::DeptConfig.delete_all

Catalogs::Department.select(:id).each do |dept|
    if dept.id > 0
      Admin::DeptConfig.find_or_create_by(department_id: dept.id, tag: 'headquarters_txt_op_1', label: 'Campo opcional de texto 1 (Sedes). Título:', precedence: 10)
      Admin::DeptConfig.find_or_create_by(department_id: dept.id, tag: 'headquarters_txt_op_1_hint', label: 'Nota para campo opcional de texto 1 (Sedes):', precedence: 20)

      Admin::DeptConfig.find_or_create_by(department_id: dept.id, tag: 'headquarters_txt_op_2', label: 'Campo opcional de texto 2 (Sedes). Título:', precedence: 30)
      Admin::DeptConfig.find_or_create_by(department_id: dept.id, tag: 'headquarters_txt_op_2_hint', label: 'Nota para campo opcional de texto 2 (Sedes):', precedence: 40)

      Admin::DeptConfig.find_or_create_by(department_id: dept.id, tag: 'reservations_txt_op_1', label: 'Campo opcional de texto 1 (Solicitudes). Título:', precedence: 50)
      Admin::DeptConfig.find_or_create_by(department_id: dept.id, tag: 'reservations_txt_op_1_hint', label: 'Nota para campo opcional de texto 1 (Solicitudes):', precedence: 60)

      Admin::DeptConfig.find_or_create_by(department_id: dept.id, tag: 'reservations_txt_op_1', label: 'Campo opcional de texto 1 (Solicitudes). Título:', precedence: 70)
      Admin::DeptConfig.find_or_create_by(department_id: dept.id, tag: 'reservations_txt_op_1_hint', label: 'Nota para campo opcional de texto 1 (Solicitudes):', precedence: 80)

      Admin::DeptConfig.find_or_create_by(department_id: dept.id, tag: 'reservations_txt_op_2', label: 'Campo opcional de texto 2 (Solicitudes). Título:', precedence: 90)
      Admin::DeptConfig.find_or_create_by(department_id: dept.id, tag: 'reservations_txt_op_2_hint', label: 'Nota para campo opcional de texto 2 (Solicitudes):', precedence: 100)

      Admin::DeptConfig.find_or_create_by(department_id: dept.id, tag: 'reservations_txt_op_3', label: 'Campo opcional de texto 3 (Solicitudes). Título:', precedence: 110)
      Admin::DeptConfig.find_or_create_by(department_id: dept.id, tag: 'reservations_txt_op_3_hint', label: 'Nota para campo opcional de texto 3 (Solicitudes):', precedence: 120)

      Admin::DeptConfig.find_or_create_by(department_id: dept.id, tag: 'reservations_txt_op_4', label: 'Campo opcional de texto 4 (Solicitudes). Título:', precedence: 130)
      Admin::DeptConfig.find_or_create_by(department_id: dept.id, tag: 'reservations_txt_op_4_hint', label: 'Nota para campo opcional de texto 4 (Solicitudes):', precedence: 140)
    end
end
