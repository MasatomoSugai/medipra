# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "csv"
date = "2019-11-16"
i = 1

CSV.foreach('db/medipra20191116.csv') do |info|
  Product.create!(
    category: info[0],
    YJ_code: info[1],
    ingredients: info[2],
    standard: info[3],
    Kyokuhou: info[4],
    narcotic: info[5],
    other: info[6],
    name: info[7],
    company: info[8],
    generic: info[9],
    original: info[10],
    same_generic: info[11],
    price: info[12],
    transitional_time_limit: info[13],
    spare: info[14],
    created_at: date,
    updated_at: date
  )
end
