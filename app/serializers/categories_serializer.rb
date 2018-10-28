class CategoriesSerializer < ActiveModel::Serializer
  attributes :id, :title, :parent_id, :content_iamge, :products

  def content_iamge
  	object.content_image.url(:thumb)
  end

  def products
  	object.products.active.limit 10
  end
end