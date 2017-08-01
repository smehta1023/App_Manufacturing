class BuyersController < ApplicationController

  def index

    # @user = User.find(params[:user_id])
    # @buyers = @user.buyers.id
    @buyers = Buyer.all


  end

  def show

    @buyer = Buyer.find(params[:id])

  end

  def new

    @buyer = Buyer.new

  end

  def create

    @buyer = current_user.buyers.new(buyer_params)

    if @buyer.save!
      redirect_to user_buyer_path(current_user.id, @buyer.id)
    else
      render :new
    end
  end

  def edit

    @buyer = current_user.buyers.find(params[:id])

  end

  def update

    @buyer = current_user.buyers.find(params[:id])

    if @buyer.update_attributes(expense_params)
      flash[:success] = "Buyer Info updated"
      redirect_to user_buyers_path(current_user, @buyers.id)
      # redirect_to user_expense_path(@expense.user_id, @expense.id)
    else
      flash[:danger] = "Edits did not save, try again"
      render 'edit'
    end
  end

  def destroy

    @buyer = current_user.buyers.find(params[:id])
    @buyer.destroy
    flash[:success] = "Buyer deleted"
    redirect_to user_shift_index_path(current_user)
  end

end


private

def buyer_params
  params.require(:buyers).permit(:first_name, :last_name, :business_phone, :address, :id, :user_id)
end



end
