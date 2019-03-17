class WelcomeController < ApplicationController
  def index
  	@entries = Entry.all.order('created_at desc')
  	@websites = [
      ['http://railsgirls.com', 'Rails Girls'],
      ["https://en.wikibooks.org/wiki/Ruby_Programming", 'Wikibooks'],
      ["http://guides.rubyonrails.org", 'Ruby on Rails Guides']
    ]
  end
end
