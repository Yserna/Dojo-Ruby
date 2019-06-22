module Api
    module V1
        class ArtistController < ApplicationController
            def index
                artists = Artist.order('created_at DESC')
                render json: {status: 'Ok', message: "Artists loaded", data: artists}, status: :OK
            end    
        end
    end
end
