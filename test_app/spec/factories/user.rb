FactoryGirl.define do 
  factory :user do 
    username "johndoe"
    email "johndoe@gmail.com"
    password "password"
    admin true
  end 
end