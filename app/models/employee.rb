class Employee < ActiveRecord::Base
	validates :firstname, presence: true
	validates :middlename, presence: true
	validates :lastname, presence: true
	validates :email, presence: true
	validates :gender, presence: true
	validates :address, presence: true
	validates :username, presence: true
	validates :password, presence: true
	validates :contact_no, presence: true
	GENDER=["Male","Female"]

	 def to_s
  	"#{firstname} #{middlename} #{lastname}"
  end
end
