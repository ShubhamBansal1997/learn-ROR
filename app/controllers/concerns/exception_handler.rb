#!/usr/bin/ruby
# @Author: Shubham Bansal
# @Date:   2018-06-18 20:43:01
# @Last Modified by:   Shubham Bansal
# @Last Modified time: 2018-06-18 20:47:29
module  ExceptionHandler
  # provides the more graceful `included` method
  extend ActiveSupport::Concern

  included  do
    rescue_from ActiveRecord::RecordNotFound do |e|
      json_response({ message: e.message }, :not_found)
    end

    rescue_from ActiveRecord::RecordInvalid do  |e|
      json_response({ message: e.message }, :unprocessable_entity)
    end
  end
end
