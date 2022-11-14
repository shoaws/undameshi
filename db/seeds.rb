# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!(
  [
    {name: 'test1', email: 'test1@test1', password: 'testtest'}
  ]
)

Omikuji.create!(
  [
    {name: '大吉'},
    {name: '中吉'},
    {name: '小吉'},
    {name: '吉'},
    {name: '半吉'},
    {name: '末吉'},
    {name: '末小吉'},
    {name: '凶'},
    {name: '小凶'},
    {name: '半凶'},
    {name: '末凶'},
    {name: '大凶'},
  ]
)