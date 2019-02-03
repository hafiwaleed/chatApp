class User < ApplicationRecord
	# Include default devise modules. Others available are:
  	# :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  	devise :database_authenticatable, :registerable,
         	:recoverable, :rememberable, :validatable

    # full name of a user
    def name
    	full_name = self.first_name + " " + self.last_name
    end

    # user is a teacher or a student
    def type_of_user
    	self.person_type
    end

end