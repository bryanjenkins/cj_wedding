class Guest < ActiveRecord::Base
  attr_accessible :coming, :group_id, :name
  belongs_to :group
end
