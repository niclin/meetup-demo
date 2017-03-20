class MeetupsController < ApplicationController
  def index
    @meetups = Meetup.all
  end

  def new
    @meetup = Meetup.new
  end
end
