class StaticPagesController < ApplicationController
    require 'flickr'
    def index
        flickr = Flickr.new "e83cc62217638d457185edee98b56e82", "96f81df8398054b5"
        @photos = flickr.photos.getRecent
    end
end
