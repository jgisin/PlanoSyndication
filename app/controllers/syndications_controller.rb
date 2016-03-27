class SyndicationsController < ApplicationController

  #Both methods respond with the first (most recent) record.

  def tour_urls
    @url = Syndication.tour_urls.first
    render :body => @url.body
  end

  def tour_slides_descriptions
    @descriptions = Syndication.tour_slides_descriptions.first
    render :body => @descriptions.body
  end

end
