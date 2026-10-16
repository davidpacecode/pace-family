class PagesController < ApplicationController
  allow_unauthenticated_access only: %i[ home marwanbot about ]

  def home
  end

  def marwanbot
  end

  def about
  end
end
