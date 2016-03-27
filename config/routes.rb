Rails.application.routes.draw do


  #Routes in this case are hard-coded rather than namespaced or setup more dynamically because
  #of the small data-set. For a larger data-set a different approach would be beneficial but I
  #didn't want to over-engineer this basic example.

  get 'syndication/tour_urls' => 'syndications#tour_urls'
  get 'syndication/tour_slides_descriptions' => 'syndications#tour_slides_descriptions'

end
