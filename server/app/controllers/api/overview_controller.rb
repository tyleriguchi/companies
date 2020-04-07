class Api::OverviewController < Api::BaseController
  def index
    employees = CompanyDomain.get_employees_and_tasks

    respond_success(employees)
  end
end
