class Post < ActiveRecord::Base
	#attr_accessible :content, :user_id

	belongs_to :user

	validates :content, presence: true,
						length: { minimum:  6  }

end
