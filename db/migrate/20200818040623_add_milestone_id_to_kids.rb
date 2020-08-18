class AddMilestoneIdToKids < ActiveRecord::Migration[6.0]
  def change
    add_reference :kids, :milestone, null: false, foreign_key: true
  end
end
