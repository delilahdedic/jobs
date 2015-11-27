class CreateJobies < ActiveRecord::Migration
  def change
    create_table :jobies do |t|
      t.string :occupation
      t.string :name
      t.string :lastname
      t.string :phone

      t.timestamps
    end
  end
end
