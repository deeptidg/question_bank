class User < ActiveRecord::Base
	
	has_many :questions

	has_secure_password

	validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { in: 4..12 }, 
	          format: { with: /\A[a-z][a-z0-9]*$\Z/, message: 'can only contain lower case letters and numbers'} 
	validates :password, length: { in: 4..8 }
	validates :password_confirmation, length: { in: 4..8 }

	def your_questions(params)
		questions.paginate(page: params[:page], order: 'created_at DESC', per_page: 3)
	end
end

