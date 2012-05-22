require 'json'
class Account
  attr :name
  def initialize(json)
    self.name = JSON.parse(json)["name"]
  end
end
