class Group < ActiveRecord::Base
  attr_accessible :contact_id, :email, :random_group_id
  has_many :guests
end
