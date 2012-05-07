class Webhook < ActiveRecord::Base
  attr_accessible :object, :serialize
  serialize :object, JSON
end
