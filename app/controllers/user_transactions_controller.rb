class UserTransactionsController < ApplicationController 
	def index
		@tranheads = Tranhead.where(user_id: current_user.id)
	end

def sent
  	@tranhead = Tranhead.find(params[:id])
    respond_to do |format|

			if @tranhead.present? && @tranhead.update_attributes(:status => Tranhead::STATUSES[2])
	      format.html { redirect_to user_transactions_path }
	       flash[:success] = "Transaction was moved to status ready"
	  	else
	      format.html { redirect_to user_transactions_path, error: "Transaction can't be moved to ready." }
	  	end
	  end
  end



end
