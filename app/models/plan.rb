class Plan < ApplicationRecord
  validates :plan, presence: true
  validates :date, presence: true

  def create
    @plan = Plan.create(plan_params)
  
    if @plan.save
      redirect_to @plan
    else
      render 'new'
    end
  end
  
end
