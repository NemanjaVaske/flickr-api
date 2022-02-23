class StaticPagesController < ApplicationController
    require 'flickr'
    def index
        flickr = Flickr.new 
        if params[:flickr_id].blank?
            @photos = flickr.photos.getRecent
        else
            @photos=flickr.photos.search(user_id: params[:flickr_id])
        end
    end
end
