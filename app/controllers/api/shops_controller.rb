class Api::ShopsController < Api::ApiController
  before_action :authenticate_user_from_token!
  before_action :authenticate_user!
  before_action :set_category, only: [:show, :search]

  # GET /api/profile?auth_token=
  # Get profile of user
  # Input: auth_token
  # Output: Profile of user if auth_token valid
  def index
    render :status => 200,
             :json => { :status => true,
                        :message => "",
                        :data => { 
                          :shops => Shop.all
                        } 
                      }
  end

end