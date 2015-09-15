class AddAmountToClientStock < ActiveRecord::Migration
  def change
    add_column(:client_stocks, :amount, :integer)
  end
end
