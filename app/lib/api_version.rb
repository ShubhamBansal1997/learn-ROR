#!/usr/bin/ruby
# @Author: Shubham Bansal
# @Date:   2018-06-19 10:50:02
# @Last Modified by:   Shubham Bansal
# @Last Modified time: 2018-06-19 11:02:06
class ApiVersion
  attr_reader :version, :default

  def initialize(version, default = false)
    @version  = version
    @default  = default
  end

  # check whether version is specified or is default
  def matched?(request)
    check_headers(request.headers)  ||  default
  end

  private

  def check_headers(headers)
    # check versoin from Accept Headersl expect custom media type 'todos'
    accept  = header[:accept]
    accept  &&  accept.include?("application/vnd.todos.#{version}+json")
  end
end
