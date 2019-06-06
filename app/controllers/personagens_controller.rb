  class PersonagensController < ApplicationController
  
  def index

    if params[:valor].present?
      @personagens = Personagem.where(params[:campo] => params[:valor])
    else
    @personagens = Personagem.all
    end
  end

  def new
    
    @personagem = Personagem.new
  
  end

  def show

    @personagem = Personagem.find(params[:id])

  end

  def edit

    @personagem = Personagem.find(params[:id])

  
  end

  def update

    @personagem = Personagem.find(params[:id])
      
       if @personagem.update_attributes(params.require(:personagem).permit(:nome, :forca, :resistencia, :agilidade, :destreza))
        redirect_to @personagem, :notice => 'Cadastro Atualizado com Sucesso!'
      
        else
          render :update
        end

      end

  def create

    @personagem = Personagem.new(params.require(:personagem).permit(:nome, :forca, :resistencia, :agilidade, :destreza))
    if @personagem.save
      redirect_to @personagem, :notice => 'Cadastro criado com sucesso!'
      else
        render :new
      end
      end


  def destroy
    
    id = params[:id]
    Personagem.destroy id
    redirect_to :personagens_path
  end
  
end