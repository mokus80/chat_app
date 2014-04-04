class MessagesController < ApplicationController
	
	def index
		#last_checket_at = params[:last_checked_at]
		@messages = Message.all
	end

	def create
		Message.create(params[:content])
		redirect_to '/messages'
	end

	def test
		@test = @messages = Message.all
		render json: @test
	end

end
