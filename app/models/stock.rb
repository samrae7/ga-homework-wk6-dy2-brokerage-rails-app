class Stock < ActiveRecord::Base
  has_many :client_stocks
  has_many :clients, through: :client_stocks, dependent: :destroy
end
