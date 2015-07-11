class Place < ActiveRecord::Base
	belongs_to :user
	has_many :comments, dependent: :destroy #this will destroy every single comments 
	has_many :photos, dependent: :destroy

	geocoded_by :address
	after_validation :geocode

	validates :name, length: { minimum: 3}
	validates :address, :presence => true
	validates :description, :presence => true

	scope :query, -> (query) {
		if query.present?
			where("name LIKE ?", "%#{query}%")
		else 
			scoped #returns the unchanged relation
		end
	}
end
