# == Schema Information
#
# Table name: blogs
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Blog < ApplicationRecord
	validates :title, :presence => true
	validates :body, :presence => true, :length => { :minimum => 250}
	validates :user, :presence => true

	has_many :comments
	belongs_to :user
end
