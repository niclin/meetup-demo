require 'rails_helper'

RSpec.describe "Session", type: :request do

  let!(:user) {  User.create!( :email => "foo@example.org", :password => "12345678", :name => 'test') }

  describe "login" do
    it "should login successfully" do
      post "/api/v1/sessions.json", {:user => {:email => user.email, :password => "12345678"} }

      expect(response).to have_http_status(200)

      data = {
        "session" => {
          "id"=> user.id,
          "name"=> user.name,
        "token"=> user.authentication_token}
      }

      expect(JSON.parse(response.body)).to eq(data)
    end
  end

  it "should login failed if wrong password" do
    post "/api/v1/sessions.json", {:user => {:email => user.email, :password => "xxx"} }

    expect(response).to have_http_status(401)
  end
end
