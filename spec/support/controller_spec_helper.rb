#!/usr/bin/ruby
# @Author: Shubham Bansal
# @Date:   2018-06-19 09:23:25
# @Last Modified by:   Shubham Bansal
# @Last Modified time: 2018-06-19 09:27:57
module  ControllerSpecHelper
  # generate tokens from user_id
  def token_generator(user_id)
    JsonWebToken.encode(user_id: user_id)
  end

  # generate expired token from user id
  def expired_token_generator(user_id)
    JsonWebToken.encode({ user_id: user_id }, (Time.now.to_i - 10))
  end

  # return valid headers
  def valid_headers
    {
      "Authorization" =>  token_generator(user.id)
      "Content-Type"  =>  "application/json"
    }
  end

  # retutn invalid header
  def invalid_headers
    {
      "Authorization" =>  nil,
      "Content-Type"  =>  "application/json"
    }
  end
end
