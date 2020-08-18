class RemoveAgeFromKid < ActiveRecord::Migration[6.0]
  def change
    remove_column :kids, :age, :string
  end
end
