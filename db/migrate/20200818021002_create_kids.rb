class CreateKids < ActiveRecord::Migration[6.0]
  def change
    create_table :kids do |t|
      t.string :f_name
      t.string :l_name
      t.string :age
      t.date :birth
      t.string :gender

      t.timestamps
    end
  end
end
