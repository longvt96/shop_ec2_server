class Api::UsersController < Api::ApiController
	before_action :authenticate_user_from_token!, expect: [:forgot_password]
  before_action :authenticate_user!, expect: [:forgot_password]

  def update
  	if current_user.update(user_params)
  		render :status => 200,
            :json => { :status => true,
                  :message => "Success",
                  :data => {} 
                  }
    else
    	render :status => 200,
            :json => { :status => false,
                  :message => "Fail",
                  :data => {} 
                  }
  	end
  end

  def forgot_password
  	user = User.find_by_email(params[:email])
  	if user
  		password = (0...8).map { (65 + rand(26)).chr }.join
  		user.password = password
  		user.password_confirmation = password
  		user.save
  		render :status => 200,
            :json => { :status => true,
                  :message => "Please check email",
                  :data => {} 
                  }
  	else
  		render :status => 200,
            :json => { :status => false,
                  :message => "User Not Found",
                  :data => {} 
                  }
  	end
  end
  private

  def user_params
  	params.require(:users).permit(:password, :password_confirmation)
  end
end