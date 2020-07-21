class DocentesController < ApplicationController

  before_action :set_docente, only: [:show, :edit, :update, :destroy]

  def index
    @docentes = Docente.all
  end

  def show

  end

  def new
    @docente = Docente.new
  end

  def create
    @docente = Docente.new(docente_params)
    if @docente.save
      redirect_to docentes_path
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @docente.update(docente_params)
      redirect_to docentes_path
    else
      render :edit
    end
  end

  def destroy
    @docente.destroy
    redirect_to docentes_path
  end

  private

  def set_docente
    @docente = Docente.find(params[:id])
  end

  def docente_params
    params.require(:docente).permit(:nombre,:apellido,:email)
  end

end
