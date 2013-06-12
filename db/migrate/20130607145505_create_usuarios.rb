class CreateUsuarios < ActiveRecord::Migration
  def up
   create_table 'usuarios' do |t|
      t.string 'nombre' 
      t.string 'email'
      t.string 'rol'
      t.string 'key'
      t.string 'nick'
      t.timestamps 
   end
  end

  def down
    drop_table 'calendars'
  end
end
