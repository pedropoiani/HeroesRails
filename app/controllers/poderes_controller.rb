class PoderesController < ApplicationController

    def index
      if params[:valor1].present?
        @poderes = Poder.where(params[:campo2] => params[:valor1])
      else
        @poderes = Poder.all
      end 
    end
    
      def new
        
        @poder = Poder.new
      
      end
    
      def show
    
        @poder= Poder.find(params[:id])
    
      end
    
      def edit
    
        @poder = Poder.find(params[:id])
    
      
      end
    end