class ApplicationController < ActionController::Base
  allow_browser versions: :modern
end

class StaticPagesController < ApplicationController
  def contact
    if request.post?
      flash[:notice] = "Thank you for your message, we will contact you soon."
      redirect_to contact_path
    end
  end
end