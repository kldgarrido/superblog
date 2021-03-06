# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :string
#  blog_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Comment < ApplicationRecord
	validates :blog, :presence => true
	validates :user, :presence => true
	validates :body, :presence => true
	validates :body, :presence => true, :length => { :minimum => 1}

	belongs_to :blog
	belongs_to :user
end
