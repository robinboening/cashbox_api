class CashboxesController < ApplicationController
  before_action :set_cashbox, only: [:show, :update, :destroy]

  # GET /cashboxes
  def index
    @cashboxes = Cashbox.all

    render json: @cashboxes
  end

  # GET /cashboxes/1
  def show
    render json: @cashbox
  end

  # POST /cashboxes
  def create
    @cashbox = Cashbox.new(cashbox_params)

    if @cashbox.save
      render json: @cashbox, status: :created, location: @cashbox
    else
      render json: @cashbox.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cashboxes/1
  def update
    if @cashbox.update(cashbox_params)
      render json: @cashbox
    else
      render json: @cashbox.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cashboxes/1
  def destroy
    @cashbox.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cashbox
      @cashbox = Cashbox.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cashbox_params
      params.fetch(:cashbox, {})
    end
end
