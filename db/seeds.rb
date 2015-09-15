# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Client.delete_all
Stock.delete_all

c1 = Client.create(name: 'Bob Crow', cash: 10000)
c2 = Client.create(name: 'James Connolly', cash: 5000)
c3 = Client.create(name: 'Jeremy Corbyn', cash: 2500)
c4 = Client.create(name: 'Sylvia Pankhurst', cash: 15000)
c5 = Client.create(name: 'Rose Luxembourg', cash: 20000)


s1 = Stock.create(name:'Apple', price:20)
s2 = Stock.create(name:'Walmart', price:10)
s3 = Stock.create(name:'Aldi', price:50)
s4 = Stock.create(name:'Google', price:40)
s5 = Stock.create(name:'Exxon', price:80)

c1.client_stocks.create(stock_id:s1.id, amount:1)
c2.client_stocks.create(stock_id:s2.id, amount:4)
c3.client_stocks.create(stock_id:s3.id, amount:5)
c4.client_stocks.create(stock_id:s4.id, amount:6)
c5.client_stocks.create(stock_id:s5.id, amount:7)


c1.client_stocks.create(stock_id:s3.id, amount:1)
c2.client_stocks.create(stock_id:s4.id, amount:2)
c3.client_stocks.create(stock_id:s4.id, amount:2)
c4.client_stocks.create(stock_id:s2.id, amount:2)
c5.client_stocks.create(stock_id:s1.id, amount:1)