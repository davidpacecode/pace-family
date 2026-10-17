class PagesController < ApplicationController
  allow_unauthenticated_access only: %i[ home marwanbot about ]

  def home
    @posts = Post.all.order(created_at: :desc).limit(3)
  end

  def marwanbot
  end

  def about
  end
end
