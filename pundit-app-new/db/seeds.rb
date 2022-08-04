# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
space_x=Company.create! name:'space X',domain: 'spacex.com'
tesla=Company.create! name:'Tesla',domain: 'tesla.com'
apple=Company.create! name:'Apple',domain: 'apple.com'
google=Company.create! name:'Google',domain: 'google.com'
amazon=Company.create! name:'Amazon',domain: 'amazon.com'

[space_x,tesla, apple,google,amazon].each do |company| 
  ['harsha','mani','eshwar','gautham'].each do |username| 
    email="#{username}@#{company.domain}" 
    User.create!(email: email, password: 'example')
  end 

  name='2018 plan'
  content="#{company.name}'s plan for the year 2018..."
  Document.create!(company: company, name: name, content: content)

  name="the next big thing"
  technologies=['VR','AI','wearables','Streaming video','voice assistants']
  mediums=['in space ','in hovercrafts','on a remote island','for cats','delivered by drone']
  big_thing="#{technologies.sample} #{mediums.sample}"
  content="The next big thing is something only #{company.name} can do: #{big_thing}."
  Document.create!(company: company, name: name, content: content )
end

consultant1= User.create!(email: 'harsha@gmail.com',password: 'example')
Permission.create!(company: google, user: consultant1, can_write: true)
Permission.create!(company: apple, user: consultant1, can_write: true)

consultant2= User.create!(email: 'mani@gmail.com',password: 'example')
Permission.create!(company: space_x, user: consultant2, can_write: false)
Permission.create!(company: amazon, user: consultant2, can_write: false)

elon_musk= User.create!(email: 'sai@gmail.com',password: 'example')
Permission.create!(company: space_x, user: elon_musk, can_write: true)
Permission.create!(company: tesla, user: elon_musk, can_write: true)