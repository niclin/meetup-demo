class MeetupsController < ApplicationController
  def index
    @meetups = Meetup.all
  end
end
