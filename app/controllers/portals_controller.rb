class PortalsController < ApplicationController

  def index
    # 新着情報
    @new_reports = Report.all.order(created_at: :desc).limit(5)
    # 新商品一覧
    @new_items = Item.where.not(release_at: nil).order(release_at: :desc).limit(5)
    # 新着ニュース
    @new_news = News.all.order(created_at: :desc).limit(5)
  end

end