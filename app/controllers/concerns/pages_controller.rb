class PagesController < ApplicationController

  def home
    if @current_user.present?
      @pictures = @current_user.pictures
    else
      @pictures = Picture.all
    end
      @picture = Picture.all.sample
  end
end
