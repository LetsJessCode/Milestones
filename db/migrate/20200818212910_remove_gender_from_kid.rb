class RemoveGenderFromKid < ActiveRecord::Migration[6.0]
  def change
    remove_column :kids, :gender, :string
  end
end
