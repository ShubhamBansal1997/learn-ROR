#!/usr/bin/ruby
# @Author: Shubham Bansal
# @Date:   2018-06-18 20:30:22
# @Last Modified by:   Shubham Bansal
# @Last Modified time: 2018-06-18 20:33:35
module RequestSpecHelper
  # Parse JSON response to ruby hash
  def json
    JSON.parse(response.body)
  end
end
