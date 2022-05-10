# frozen_string_literal: true

class BudgetsController < ApplicationController
  before_action :set_budget, only: %i[edit update destroy]

  def index
    @budgets = Budget.order(:start_at)
  end

  def edit
  end

  def update
    if @budget.update(budget_params)
      redirect_to budgets_path, notice: 'Budget was successfully updated.', status: :see_other
    else
      flash[:error] = 'Something went wrong.'
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @budget.destroy

    redirect_to budgets_url, notice: 'Budget was successfully destroyed.', status: :see_other
  end

  private

  def set_budget
    @budget = Budget.find(params[:id])
  end

  def budget_params
    params
      .require(:budget)
      .permit(
        :title,
        :starrt_at,
        :end_at
      )
  end
end
