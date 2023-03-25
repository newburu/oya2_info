class PortalsController < ApplicationController

  def index
    # 新着情報
    @new_reports = Report.all.order(created_at: :desc).limit(5)
  end

end