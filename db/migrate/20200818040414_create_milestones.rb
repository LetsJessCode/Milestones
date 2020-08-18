class CreateMilestones < ActiveRecord::Migration[6.0]
  def change
    create_table :milestones do |t|
      t.string :title
      t.date :date
      t.string :age
      t.string :location
      t.text :content
      t.timestamps
    end
  end
end
