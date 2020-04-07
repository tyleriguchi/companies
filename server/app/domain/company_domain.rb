class CompanyDomain
  def self.get_employees_and_tasks
    return Employee.distinct.joins(:tasks).includes(:tasks).order(:name, :desc)
  end
end
