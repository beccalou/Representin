# == Schema Information
#
# Table name: phrases
#
#  id      :integer          not null, primary key
#  user_id :integer
#

class Phrase < ActiveRecord::Base
	belongs_to :users
end
