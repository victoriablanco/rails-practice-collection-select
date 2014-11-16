class CreateEmployments < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.decimal :lat
      t.decimal :lng
      t.timestamps
    end

    create_table :employments do |t|
      t.belongs_to :person
      t.belongs_to :organization
      t.belongs_to :job_title
      t.belongs_to :location
      t.timestamps
    end
  end
end
