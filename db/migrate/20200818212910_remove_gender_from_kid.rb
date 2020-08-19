class RemoveGenderFromKid < ActiveRecord::Migration[6.0]
  def change
    remove_column :kids, :gender, :string
    change_column :milestones, :created_at, :date
  end
end
