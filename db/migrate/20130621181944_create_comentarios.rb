class CreateComentarios < ActiveRecord::Migration
  def up
    create_table :comentarios do |t|
    t.string 'comentario'
    t.string 'evento'
    t.string 'usuario'
    t.timestamps
  end

  def down
    drop_table 'comentarios'
  end
end
