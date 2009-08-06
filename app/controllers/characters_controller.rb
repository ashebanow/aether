class CharactersController < ApplicationController
  before_filter :require_user, :only => [:new, :create, :show, :edit, :update]
end
