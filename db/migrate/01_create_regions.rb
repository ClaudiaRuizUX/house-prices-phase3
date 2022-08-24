class CreateRegions < ActiveRecord::Migration[5.2]
    def change
        create_table :regions do |t|
            t.string :region_name
            t.string :government_reference
        end
    end
end