class NewsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index_pt, :index_es]

  def index_pt
    @news = policy_scope(News)
  end

  def index_es
    @news = policy_scope(News)
  end
end
