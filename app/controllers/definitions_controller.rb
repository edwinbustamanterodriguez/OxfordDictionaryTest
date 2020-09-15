class DefinitionsController < ApplicationController
  def index
    @definitions = Definition.all
  end

  def new
  end

  def destroy
    @definition = Definition.find(params[:id])
    @definition.destroy
    redirect_to definitions_path
  end

  def create
    #render plain: params[:definition].inspect
    @definition = Definition.new(params.require(:definition).permit(:term, :body))

    if @definition.save
      redirect_to @definition
    else
      #render layout: false
      render 'new'
    end

  end

  def show
    @definition = Definition.find(params[:id])
  end

  def edit
    @definition = Definition.find(params[:id])
  end

  def update
    @definition = Definition.find(params[:id])

    if @definition.update(definition_params)
      redirect_to @definition
    else
      render 'edit'
    end
  end

  private

  def definition_params
    params.require(:definition).permit(:term, :body)
  end


end
