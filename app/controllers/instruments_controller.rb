class InstrumentsController < ApplicationController
    def index
        @instruments = Instrument.all
    end
    
    def new
        @instrument = Instrument.new
    end
    
    def show
        @instrument = find_instrument
    end
    
    def create
        @instrument = Instrument.create(instrument_params)

        redirect_to instrument_path(@instrument)
    end

    #wasn't sure about adding other functionality
    
    # def edit
    #     @instrument = find_instrument
    # end
    
    # def update
    #     @instrument = find_instrument
    #     @instrument.update(instrument_params)
    #     redirect_to instrument_path(@instrument)
    # end
    
    # def delete
    #     @instrument = find_instrument
    #     @instrument.destroy
    
    #     redirect_to instruments_path
    # end
    
    private
        
    def find_instrument
        Instrument.find(params[:id])
    end
    
    def instrument_params
        params.require(:instrument).permit('fields')
    end
    
    
end
