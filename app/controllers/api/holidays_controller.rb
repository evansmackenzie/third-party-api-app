class Api::HolidaysController < ApplicationController

  def index
    @holidays = HTTP.get("https://holidayapi.com/v1/holidays?pretty&key=#{Rails.application.credentials.third_party_api[:api_key]}&country=US&year=2020").parse

    render "index.json.jb"
    
  end

end
