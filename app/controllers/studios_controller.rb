class StudiosController < ApplicationController

    def index
        @studios = Studio.all
    end
    
    def new
        @studio = Studio.new

        @artists = Artist.all
        @instruments = Instrument.all
    end
    
    def show
        @studio = find_studio
    end
    
    def create
        @studio = Studio.create(studio_params)
        
        redirect_to artist_path(@studio.artist)
    end
    
    #wasn't sure about adding other functionality
    # def edit
    #     @studio = find_studio
    # end
    
    # def update
    #     @studio = find_studio
    #     @studio.update(studio_params)
    #     redirect_to studio_path(@studio)
    # end
    
    # def delete
    #     @studio = find_studio
    #     @studio.destroy
    
    #     redirect_to studios_path
    # end
    
    private
        
    def find_studio
        Studio.find(params[:id])
    end
    
    def studio_params
        params.require(:studio).permit(:artist_id, :instrument_id)
    end

end
