class Book < ApplicationRecord

validates :title, presence: true
validates :body, presence: true


validate :add_error_sample

def add_error_sample

	if title.empty?
		errors[:base] << "Title can't be blank"
    end

    if body.empty?
        errors[:base] << "Body can't be blank"
    end
end
end
