class ArticleResource < JSONAPI::Resource
  
  include JSONAPI::Authorization::PunditScopedResource
  attributes :title, :description
  has_one :user

  paginator :offset
end