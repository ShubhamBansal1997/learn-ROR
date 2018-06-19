#!/usr/bin/ruby
# @Author: Shubham Bansal
# @Date:   2018-06-19 08:34:27
# @Last Modified by:   Shubham Bansal
# @Last Modified time: 2018-06-19 08:35:20
FactoryBot.define do
  factory :user do
    name  { Faker::Name.name }
    email 'foo@bar.com'
    password  'foobar'
  end
end
