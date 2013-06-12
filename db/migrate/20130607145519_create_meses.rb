class CreateMeses < ActiveRecord::Migration
  def up
   create_table 'meses' do |t|
      t.string 'mes' 
      t.string 'dias'
      t.timestamps 
   end
  end
  def down
    drop_table 'meses'
  end
end
