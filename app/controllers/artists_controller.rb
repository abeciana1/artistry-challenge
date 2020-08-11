class ArtistsController < ApplicationController

    def index
        @artists = Artist.all
    end
    
    def new
        @artist = Artist.new
    end
    
    def show
        @artist = find_artist
    end
    
    def create
        @artist = Artist.create(artist_params)
        if @artist.valid?
        redirect_to artist_path(@artist)
        else
        flash[:my_errors] = @artist.errors.full_messages
        redirect_to new_artist_path
        end
    end
    
    #wasn't sure about adding other functionality
    # def edit
    #     @artist = find_artist
    # end
    
    # def update
    #     @artist = find_artist
    #     @artist.update(artist_params)
    #     redirect_to artist_path(@artist)
    # end
    
    # def delete
    #     @artist = find_artist
    #     @artist.destroy
    
    #     redirect_to artists_path
    # end
    
    private
        
    def find_artist
        Artist.find(params[:id])
    end
    
    def artist_params
        params.require(:artist).permit(:name, :age, :title)
    end
    
    
end
