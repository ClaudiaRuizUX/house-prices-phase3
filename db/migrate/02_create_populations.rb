class CreatePopulations < ActiveRecord::Migration[5.2]
    def change
        create_table :populations do |t|
            t.string :name
            t.integer :population
            t.date :date
        end
    end
end