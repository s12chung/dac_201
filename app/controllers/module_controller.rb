class ModuleController < ApplicationController
  def index
    @page = Page.find :first, :conditions => {:filename => params[:filename]}
  end
end