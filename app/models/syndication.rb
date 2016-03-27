class Syndication < ActiveRecord::Base


  #The seed creates all the records with the same timestamp, so it is sorted by both
  #created_at and ID to make sure the most recent records are listed first in this case.

  #Also, similar to routes, names where hard-coded only because of the small data-set.

  def self.tour_urls
    self.where(name: 'tour_urls.txt').order('created_at DESC, id DESC')
  end

  def self.tour_slides_descriptions
    self.where(name: 'tour_slides_descriptions.txt').order('created_at DESC, id DESC')
  end

end
