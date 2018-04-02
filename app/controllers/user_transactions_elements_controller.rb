class UserTransactionsElementsController < ApplicationController
  def index
     if params[:user_transaction_id].present?
      @tranelems = Tranelem.where(tranhead_id: params[:user_transaction_id])
    else  
      @tranelems = Tranelem.all
    end  
  

  end
end
