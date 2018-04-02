class TranheadsController < ApplicationController


  def add_or_update_basket
    if has_basket_in_progress.present?
      # tak
      tranhead = find_basket_in_progress
      # dodaj albo inkrementus
      if (elem = tranhead.tranelems.where(:ad_id => params[:ad][:id])).count > 0
        elem  = elem.first
        count = elem.item_count + params[:ad][:item_count].to_i
        elem.update(:item_count => count)
      else
        tranhead.tranelems.new(:ad_id => params[:ad][:id], :item_count => params[:ad][:item_count])
     end
 
 
      ::Rails.logger.info("Im in add_or_update_basket in case true!.")
    else
      # nie
      tranhead = current_user.tranheads.new(:status => "in_progress")
      tranhead.tranelems.new(:ad_id => params[:ad][:id], :item_count => params[:ad][:item_count])
    end
 
     if tranhead.save
       redirect_to ads_path
     else
       ::Rails.logger.error("Can't add tranelm to tranhead")
     end
 
  end
 
 
 private
 
 def has_basket_in_progress
   current_user.tranheads.where(:status => "in_progress")
 end
 
 def find_basket_in_progress
   current_user.tranheads.where(:status => "in_progress").first
 end
 
 
 end
 