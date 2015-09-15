class Client < ActiveRecord::Base
  has_many :client_stocks
  has_many :stocks, through: :client_stocks, dependent: :destroy
end
