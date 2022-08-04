class DocumentsController < ApplicationController
  #before_action :set_document
  def index
    if signed_in?
      company=current_user.company
      @documents=Document.where(company: company)
    end
    #render json:Document.all
  end

  def show
    @document=Document.find(params[:id])
    authorize @document
  end 
  
  def edit 
    @document = Document.find(params[:id])
    authorize @document
  end


  def update 
    @document = Document.find(params[:id])
    authorize @document
    if @document.update(document_params)
      redirect_to @document 
    else  
      render :edit 
    end
  end

  private 
  def document_params 
    params.require(:document).permit(:name, :content)
  end

end
