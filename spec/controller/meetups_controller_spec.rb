require 'rails_helper'

RSpec.describe MeetupsController, type: :controller do

  describe "GET index" do
    it "assigns @meetups and render template" do
      meetup1 = Meetup.create(title: "foo", description: "bar")
      meetup2 = Meetup.create(title: "bar", description: "foo")
      get:index
      expect(assigns[:meetups]).to eq([meetup1, meetup2])
    end
  end
end