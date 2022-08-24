class CreatePrices < ActiveRecord::Migration[5.2]
    def change
        create_table :prices do |t|
            t.string :government_reference
            t.float :price
            t.datetime :date
        end
    end
end


# class AddPriceToRegions < ActiveRecord::Migration[5.2]
#     def change
#         add_column :regions, :price, :float
#     end
# end