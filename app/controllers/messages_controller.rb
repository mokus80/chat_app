class MessagesController < ApplicationController
	
	def index
		last_checket_at = params[:last_checked_at]
		@messages = Message.all.reverse
		#render json: @messages
	end

	def create
		Message.create(params[:content])
		redirect_to '/messages'
	end
end
