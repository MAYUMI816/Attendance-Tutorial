class StaticPagesController < ApplicationController
  
  def top
  end
  
  def create
    user =User.find_by(email: params[:session]{:email}.downcase)
    if user && user.authenticate(params[:session][:password])
 
    else
     
      render :new
    end
  end   
end
