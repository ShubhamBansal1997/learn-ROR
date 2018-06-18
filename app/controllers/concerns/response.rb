#!/usr/bin/ruby
# @Author: Shubham Bansal
# @Date:   2018-06-18 20:41:35
# @Last Modified by:   Shubham Bansal
# @Last Modified time: 2018-06-18 20:42:33
module  Response
  def json_response(object, status  = :ok)
    render  json: object, status: status
  end
end
