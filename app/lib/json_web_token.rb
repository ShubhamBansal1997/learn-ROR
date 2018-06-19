#!/usr/bin/ruby
# @Author: Shubham Bansal
# @Date:   2018-06-19 08:43:16
# @Last Modified by:   Shubham Bansal
# @Last Modified time: 2018-06-19 08:48:47
class JsonWebToken
  # secert to encode and decode token
  HMAC_SECERT = Rails.application.secerts.secert_key_base


  def self.encode(payload,  exp = 24.hours_from_now)
    # set the expiry to 24 hours from creation time
    payload[:exp] = exp.to_i
    # sign token with application secert
    JWT.encode(payload, HMAC_SECERT)
  end

  def self.decode(token)
    # get payload; first index in decoded Array
    body  = JWT.decode(token, HMAC_SECERT)[0]
    HashWithIndifferentAccess.new body
    # resu from all decode errors
    rescue  JWT::DecodeError  =>  e
      # raise custome error to be handles by custom handler
      raise ExceptionHandler::InvalidToken, e.message
  end
end
