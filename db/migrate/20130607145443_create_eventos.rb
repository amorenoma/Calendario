class CreateEventos < ActiveRecord::Migration
  def up
    create_table 'eventos' do |t|
      t.datetime 'fecha' 
      t.string 'asignatura'
      t.string 'tipo'
      t.string 'aula'
      t.string 'dificultad'
      t.timestamps
    end
  end

  def down
    drop_table 'eventos'
  end
end
