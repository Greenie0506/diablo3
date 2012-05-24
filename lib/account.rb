require 'json'

class Account
  attr_accessor :name
  def initialize(json)
    self.name = JSON.parse(json)["account"]
  end
end
