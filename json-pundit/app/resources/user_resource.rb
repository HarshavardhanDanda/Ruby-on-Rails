class UserResource < JSONAPI::Resource
  
  include JSONAPI::Authorization::PunditScopedResource
  attributes :username, :email, :password
  has_many :articles

  paginator :offset
end