require 'mylist_fumen'

JubeatLabPlus::App.controllers :mylist do

  # get :index, :map => '/foo/bar' do
  #   session[:foo] = 'bar'
  #   render 'index'
  # end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   'Maps to url '/foo/#{params[:id]}''
  # end

  # get '/example' do
  #   'Hello world!'
  # end

  get :index do
    render 'mylist/index'
  end

  get :fumen_new, :map => '/mylist/fumen/new' do
    @mylist_fumen = MylistFumen.new
    render 'mylist/fumen/new'
  end

  post :fumen_new do
    @mylist_fumen = MylistFumen.new(params[:mylist_fumen])
    render 'mylist/fumen/confirm'
  end

  post :fumen_save, :map => '/mylist/fumen/save' do
    redirect url(:mylist, :index)
  end
end
