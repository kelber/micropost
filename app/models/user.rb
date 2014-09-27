class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	
	# attr_accessible :description, :email, :location, :name 

	has_many :posts

	validates :email, presence: true,
					  uniqueless: true
					  
	validates :password, presence: true

	validates :name, presence: true

end
