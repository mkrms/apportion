class HomesController < ApplicationController
    def home
        @hours = Hour.all
    end
    
end
