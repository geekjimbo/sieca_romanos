class CreateConvertidors < ActiveRecord::Migration[5.0]
  def change
    create_table :convertidors do |t|

      t.timestamps
    end
  end
end
