class Author < ApplicationRecord
	has_and_belongs_to_many :books

	def fullname
		"#{surname}, #{firstname}"
	end
end
