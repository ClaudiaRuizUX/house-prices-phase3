class CreateUsers < ActiveRecord::Migration[5.2]
    def change
        create_table :users do |t|
            t.string :name
        end
    end
end

# migration script that inherit from activerecord
# change: is what we are going to do to the database
# on this case we create a table
# for each of the properties I only want one property
# by default it will add an id