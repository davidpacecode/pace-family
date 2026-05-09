class PagesController < ApplicationController
  allow_unauthenticated_access only: %i[ home about random ]

  def home
  end

  def about
  end

  def random
  end
end
