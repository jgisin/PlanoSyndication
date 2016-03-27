class SyndicationsController < ApplicationController

  #Both methods respond with the first (most recent) record. They return a .txt file.

  def tour_urls
    @url = Syndication.tour_urls.first
    send_data @url.body, type: 'text', disposition: "attachment; filename=#{@url.name}"
  end

  def tour_slides_descriptions
    @description = Syndication.tour_slides_descriptions.first
    send_data @description.body, type: 'text', disposition: "attachment; filename=#{@description.name}"
  end

end
