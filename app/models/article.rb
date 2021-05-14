class Article < ApplicationRecord
	paginates_per 4
	validates :title, presence: true
	mount_uploader :avatar, AvatarUploader
	has_many :comments
end
