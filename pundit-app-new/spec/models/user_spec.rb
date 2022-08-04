require 'rails_helper'

RSpec.describe User, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it 'should extract out domain from email' do 
    user=User.new(email: 'harsha@spacex.com', password:'example')
    expect(user.domain).to eq('spacex.com')
  end
end
