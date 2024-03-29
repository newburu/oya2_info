class ReportsController < ApplicationController
  before_action :set_report, only: %i[ show edit update destroy ]
  before_action :authorize_report, only: [:index, :new, :create]
  after_action :verify_authorized

  # GET /reports or /reports.json
  def index
    @reports = Report.all
  end

  # GET /reports/1 or /reports/1.json
  def show
  end

  # GET /reports/new
  def new
    @report = Report.new(item_id: params[:item])
    Assessment.all.each do |assessment|
      @report.report_assessments.build(report: @report, assessment: assessment)
    end
  end

  # GET /reports/1/edit
  def edit
  end

  # POST /reports or /reports.json
  def create
    @report = Report.new(report_params)
    @report.owner = current_user

    respond_to do |format|
      if @report.save
        format.html { redirect_to report_url(@report), notice: t('.notice') }
        format.json { render :show, status: :created, location: @report }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reports/1 or /reports/1.json
  def update
    respond_to do |format|
      if @report.update(report_params)
        format.html { redirect_to report_url(@report), notice: t('.notice') }
        format.json { render :show, status: :ok, location: @report }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reports/1 or /reports/1.json
  def destroy
    @report.destroy

    respond_to do |format|
      format.html { redirect_to @report.item, notice: t('.notice') }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report
      @report = Report.find(params[:id])

      authorize @report
    end

    def authorize_report
      authorize Report
    end

    # Only allow a list of trusted parameters through.
    def report_params
      params.require(:report).permit(:item_id, :title, :detail, :bought_at, {images: []}, report_assessments_attributes: [:id, :report_id, :assessment_id, :value])
    end
end
