class CreateAuthers < ActiveRecord::Migration
  def change
    create_table :authers do |t|
      t.string :name
      t.string :DOB

      t.timestamps
    end
  end
end
