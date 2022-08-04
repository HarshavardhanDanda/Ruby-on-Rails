class CustomersController < ApplicationController

  def show
    render json:@customer
  end
  def index
    @customers=Customer.all
    render json:@customers
  end

  def create
    @customer=Customer.new(customer_params)
    if @customer.save
      # flash[:notice]="Article was created successfully"
      # redirect_to @article
      render json:@customer, status: :created, location: @customer
    else
      render json:@customer.errors, status: :unprocessable_entity
    end
  end

  def update
    if @customer.update(customer_params)
      render json:@customer, status: :created, location: @customer
    else
      render json:@customer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /articles/1 or /articles/1.json
  def destroy
    @customer.destroy
    
  end

  private 
  def customer_params
    params.require(:customer).permit(:first_name, :last_name)
  end
end