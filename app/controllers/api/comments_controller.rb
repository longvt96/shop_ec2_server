class Api::CommentsController < Api::ApiController
  before_action :authenticate_user_from_token!
  before_action :authenticate_user!

  def create
    comment = Comment.new(comment_params)
    if comment.save
      render :status => 200,
             :json => { :status => true,
                        :message => "Comment Created",
                        :data => {
                            :comment => comment
                          } }
    else
      render :status => 200,
             :json => { :status => false,
                        :message => "Create comment error",
                        :data => {:error_code => 117, :error_message =>"Fail" } }
    end

  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
  def comment_params
    params.require(:comment).permit(:content, :product_id, :user_id)
  end
end