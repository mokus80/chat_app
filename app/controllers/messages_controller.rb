class MessagesController < ApplicationController
	
	def index
		#last_checket_at = params[:last_checked_at]
		@messages = Message.limit(10).order('created_at desc')
		@message = Message.new
	end

	def create
		message = Message.new(params[:message].permit(:content))
		if current_user.present?
			message.user_id = current_user.id
		end
		message.save!
		redirect_to '/'
	end

	def test
		@test = User.all
		render json: @test
	end

end
