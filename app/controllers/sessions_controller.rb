class SessionsController < ApplicationController
	def new
	end

	def login
		user = User.authenticate(params[:email], params[:password])
		if user
			session[:user_id] = user.id #stores the necessary session ID
			redirect_to root_url, notice: "Logged in!"
		else
			flash.new.alert = "Invalid email or password"
			render "login"
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_url, notice: "Logged Out"
	end
end
