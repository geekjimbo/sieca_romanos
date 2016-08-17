class Addcoltoconvertidor < ActiveRecord::Migration[5.0]
  def change
    add_column :convertidors, :romano, :string
  end
end
