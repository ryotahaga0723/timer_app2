# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  name: '管理者A',
  email: 'aaa@gmail.com',
  password: 'aaaaaa',
  password_confirmation: 'aaaaaa',
  admin: true, 
  weight: 60, 
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)
User.create!(
  name: '管理者B', 
  email: 'bbb@gmail.com', 
  password: 'bbbbbb', 
  password_confirmation: 'bbbbbb',
  admin: true, 
  weight: nil, 
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)
User.create!(
  name: '運転者C', 
  email: 'ccc@gmail.com', 
  password: 'cccccc', 
  password_confirmation: 'cccccc',
  admin: false, 
  weight: 60, 
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)
User.create!(
  name: '運転者D', 
  email: 'ddd@gmail.com', 
  password: 'dddddd', 
  password_confirmation: 'dddddd',
  admin: false, 
  weight: 70, 
  created_at: "2019-07-11 02:33:34",
  updated_at: "2019-07-11 02:33:34"
)
User.create!(
  name: '運転者E',
  email: 'eee@gmail.com', 
  password: 'eeeeee', 
  password_confirmation: 'eeeeee',
  admin: false, 
  weight: 55, 
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34"
)

Drinking.create!(
  status: 1, 
  driving_start_time: '2022-05-11 02:33:34', 
  drinking_end_time: '2022-05-10 22:33:34', 
  user_id: 1, 
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34",
  alcohols_attributes: [
    {kind: "ビール", 
    frequency: 5.0,
    quantity: 350, 
    number: 1.0
  },
  {kind: "ワイン", 
  frequency: 15.0,
  quantity: 100, 
  number: 2.0
  }],
  visuallies_attributes: [{
    visually: 1
  }]
)
Drinking.create!(
  status: 2,
  driving_start_time: '2022-05-11 02:33:34', 
  drinking_end_time: "2022-05-11 02:33:34", 
  user_id: 1, 
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34",
  visuallies_attributes: [{
    visually: 2
  }]
)
Drinking.create!(
  status: 1, 
  driving_start_time: '2022-05-13 22:33:34', 
  drinking_end_time: '2022-05-12 22:00:34', 
  user_id: 3, 
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34",
  alcohols_attributes: [
    {kind: "焼酎", 
    frequency: 25.0,
    quantity: 50, 
    number: 1.5
  }],
  visuallies_attributes: [{
    visually: 2
  }]
)
Drinking.create!(
  status: 1, 
  driving_start_time: '2022-05-11 02:33:34', 
  drinking_end_time: '2022-05-10 22:33:34', 
  user_id: 3, 
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34",
  alcohols_attributes: [
    {kind: "ビール", 
    frequency: 5.0,
    quantity: 350, 
    number: 1.0
  }],
  visuallies_attributes: [{
    visually: 1
  }]
)
Drinking.create!(
  status: 2, 
  driving_start_time: '2022-06-11 02:33:34', 
  drinking_end_time: '2022-06-10 22:33:34', 
  user_id: 3, created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34",
  visuallies_attributes: [{
    visually: 1
  }]
)
Drinking.create!(
  status: 2, 
  driving_start_time: '2022-05-11 02:33:34', 
  drinking_end_time: "2022-05-11 02:33:34", 
  user_id: 4, 
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34",
  alcohols_attributes: [
    {kind: "チューハイ", 
    frequency: 5.0,
    quantity: 350, 
    number: 1.0
    },
    {kind: "熱燗", 
    frequency: 5.0,
    quantity: 350, 
    number: 1.0
    }],
  visuallies_attributes: [{
    visually: 1
  }]
)
Drinking.create!(
  status: 1, 
  driving_start_time: '2022-04-11 02:33:34', 
  drinking_end_time: '2022-04-10 22:33:34', 
  user_id: 4, 
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34",
  alcohols_attributes: [
    {kind: "カクテル", 
    frequency: 5.0,
    quantity: 350, 
    number: 1.0
  }],
  visuallies_attributes: [{
    visually: 0
  }]
)
Drinking.create!(
  status: 2, 
  driving_start_time: '2022-05-14 02:33:34', 
  drinking_end_time: '2022-05-10 22:33:34', 
  user_id: 5, 
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34",
  visuallies_attributes: [{
    visually: 1
  }]
)
Drinking.create!(
  status: 2,
  driving_start_time: '2022-06-11 02:33:34', 
  drinking_end_time: "2022-05-11 02:33:34", 
  user_id: 1, 
  created_at: "2019-07-11 02:33:34", 
  updated_at: "2019-07-11 02:33:34",
  visuallies_attributes: [{
    visually: 1
  }]
)