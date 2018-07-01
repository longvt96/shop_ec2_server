class CommentsSerializer < ActiveModel::Serializer
  attributes :id, :content, :product_id, :created_at, :user_name

  def user_name
  	object.user.profile.name
  end
end