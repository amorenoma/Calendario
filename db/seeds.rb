# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

eventos = [
  {:fecha => '30-Jun-2013 9:00:00', :asignatura => 'IST', :tipo => 'examen', :aula=> '313', :dificultad => '3', :comentario => ''},
  {:fecha => '10-Jun-2013 12:00:00', :asignatura => 'TC', :tipo => 'examen', :aula=> '302', :dificultad => '4'},
  {:fecha => '12-Jun-2013 12:00:00', :asignatura => 'SAT', :tipo => 'examen', :aula=> '302', :dificultad => '4'},
  {:fecha => '1-Jun-2013 15:00:00', :asignatura => 'DAT', :tipo => 'examen', :aula=> '302', :dificultad => '2'}
]  

meses = [
  {:mes => 'Septiembre', :dias=> '30',:nmes=> '9'},
  {:mes => 'Octubre', :dias=> '31',:nmes=> '10'},
  {:mes => 'Noviembre', :dias=> '30',:nmes=> '11'},
  {:mes => 'Diciembre', :dias=> '31',:nmes=> '12'},
  {:mes => 'Enero', :dias=> '31',:nmes=> '1'},
  {:mes => 'Febrero', :dias=> '28',:nmes=> '2'},
  {:mes => 'Marzo', :dias=> '31',:nmes=> '3'},
  {:mes => 'Abril', :dias=> '30',:nmes=> '4'},
  {:mes => 'Mayo', :dias=> '31',:nmes=> '5'},
  {:mes => 'Junio', :dias=> '30',:nmes=> '6'}
]

usuarios = [
  {:nombre => 'Alexander Moreno', :email => 'alejandro@gmail.com' , :rol => 'Alumno' , :key => 'aaa', :nick => 'Flexo'},
  {:nombre => 'Pedro De las Heras', :email => 'pheras@gmail.com' , :rol => 'Profesor' , :key => '1234', :nick => 'Pheras'}
]

comentarios = [
  {:comentario => 'Este examen no lo aprueba ni dios', :evento => '4' , :usuario => 'Pheras'},
  {:comentario => 'Estais suspensos', :evento => '3' , :usuario => 'Pheras'}
]

Evento.send(:attr_accessible, :fecha, :asignatura, :tipo, :aula, :dificultad)
eventos.each do |evento|
  Evento.create!(evento)
end

Mes.send(:attr_accessible, :mes , :dias)
meses.each do |mes|
  Mes.create!(mes)
end

Usuario.send(:attr_accessible, :nombre , :email, :rol, :key, :nick)
usuarios.each do |usuario|
  Usuario.create!(usuario)
end

Comentario.send(:attr_accessible, :comentario , :evento, :usuario)
comentarios.each do |comentario|
  Comentario.create!(comentario)
end
