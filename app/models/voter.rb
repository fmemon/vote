class Voter < ActiveRecord::Base
  has_many :vote_record
  
  
end
# == Schema Information
#
# Table name: voters
#
#  id         :integer         not null, primary key
#  username   :string(255)
#  password   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

