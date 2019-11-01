class ContactController < ApplicationController
    def index
    @contact = Contact.new(params[:contact])
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request

      if @contact.deliver
        # re-initialize Contact object for cleared form
       flash[:success] = "Message sent successfully."
	    redirect_to	root_path
	
      else
		flash[:error] =  "Cannot send message"
		redirect_to	root_path
       
	   
	   
      end

    
  end
  
end

  

