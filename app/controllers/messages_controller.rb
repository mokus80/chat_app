class MessagesController < ApplicationController
	
	def index
		#last_checket_at = params[:last_checked_at]
		@messages = Message.limit(10).order('created_at desc')
		@message = Message.new
	end

	def create
		Message.create(params[:message].permit(:content, :user))
		redirect_to '/'
	end

	def test
		@test = User.all
		render json: @test
	end

end
