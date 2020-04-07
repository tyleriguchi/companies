class Api::OverviewController < Api::BaseController
  def index
    employees = CompanyDomain.get_employees_and_tasks

    serialized_employees = employees.map do |employee|
      serialized_tasks = employee.tasks.map do |task|
        {
          id: task.id,
          title: task.title,
          description: task.description,
          priority: task.priority,
          state: task.state,
          estimate: task.estimate
        }
      end

      next {
        id: employee.id,
        name: employee.name,
        tasks: serialized_tasks
      }
    end

    respond_success(serialized_employees)
  end
end
