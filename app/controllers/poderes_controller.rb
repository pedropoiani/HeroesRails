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

      def create

        @poder = Poder.new(params.require(:poder).permit(:nome, :tipo, :personagem_id))
        if @poder.save
          redirect_to @poder, :notice => 'Cadastro criado com sucesso!'
          else
            render :new
          end
          end

      def update

        @poder = Poder.find(params[:id])
          
           if @poder.update_attributes(params.require(:poder).permit(:nome, :tipo))
            redirect_to @poder.personagem, :notice => 'Cadastro Atualizado com Sucesso!'
          
            else
              render :update
            end
    
          end

          def destroy
    
            id = params[:id]
            Poder.destroy id
            redirect_to :root
          end
          
    
    end