class PagesController < ApplicationController
  def home
  	@activity = Job.order("install_date DESC").limit(15)
  end

  def faq
  end
end
