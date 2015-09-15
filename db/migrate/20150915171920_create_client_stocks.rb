class CreateClientStocks < ActiveRecord::Migration
  def change
    create_table :client_stocks do |t|

      t.timestamps null: false
    end
  end
end
