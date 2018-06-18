#!/usr/bin/ruby
# @Author: Shubham Bansal
# @Date:   2018-06-18 20:05:04
# @Last Modified by:   Shubham Bansal
# @Last Modified time: 2018-06-18 20:08:01
FactoryBot.define do
  factory :item do
    name  { Faker::StarWars.character }
    done  false
    todo_id nil
  end
end
