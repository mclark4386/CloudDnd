class User < ActiveRecord::Base
	attr_accessible :email, :password, :password_confirmation, :name

	has_secure_password #Only in rails 3.1+

	validates :password, :presence => {:on => :create}
	validates :email, :presence => {:on => :create}

end
