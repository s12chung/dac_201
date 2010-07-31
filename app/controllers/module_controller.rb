class ModuleController < ApplicationController
  def index
      if params[:filename].nil?: redirect_to :filename => :intro end
      @page = Page.find :first, :conditions => {:filename => params[:filename]}
  end
end