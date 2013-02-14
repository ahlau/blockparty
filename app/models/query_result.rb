class QueryResult < ActiveRecord::Base
  INIT = 0
  IN_PROGRESS = 1
  LISTED = 2
  NOT_LISTED = 3
  TIMEOUT = 4
  ERROR = 5
  attr_accessible :code, :end_time, :response, :start_time

  def completed(response = nil, start_time = nil, end_time = nil)
    self.response = response
    self.start_time = start_time
    self.end_time = end_time
  end

  def code_string
    case code
    when INIT
      "init"
    when IN_PROGRESS
      "in progress"
    when LISTED
      "listed"
    when NOT_LISTED
      "not listed"
    when TIMEOUT
      "timeout"
    when ERROR
      "error"
    else
      "nil"
    end
  end
end
