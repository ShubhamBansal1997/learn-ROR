#!/usr/bin/ruby
# @Author: Shubham Bansal
# @Date:   2018-06-18 20:05:04
# @Last Modified by:   Shubham Bansal
# @Last Modified time: 2018-06-18 20:06:37
FactoryBot.define do
  factory :todo do
    title { Faker::Lorem.word  }
    created_by  { Faker::Number.number(10)  }
  end
end
