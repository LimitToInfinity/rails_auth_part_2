class AuthenticationController < ApplicationController

  def login
    @user = User.find_by username: params[:username]

    if !@user
      render json: { message: 'Incorrect username' },
        status: :unauthorized
    else

      if !@user.authenticate(params[:password])
        render json: { message: 'Incorrect password' },
          status: :unauthorized
      else

        

      end

    end
  end

end
