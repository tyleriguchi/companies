class CompanyDomain
  def self.get_employees_and_tasks
    employees = [
      {
        id: 1,
        name: "jon snow",
        tasks: [
          {
            id: 5,
            title: "retake the north",
            description: "need to retake the throne for the starks",
            priority: "critical",
            state: "new",
            estimate: 'large'
          }
        ]
      },
      {
        id: 2,
        name: "bernard lowe",
        tasks: [
          {
            id: 1,
            title: "diagnostic",
            description: "run a diagnostic",
            priority: "medium",
            state: "closed",
            estimate: 'medium'
          },

          {
            id: 2,
            title: "find arnold",
            description: "need to find arnold",
            priority: "critical",
            state: "active",
            estimate: 'small'
          },

          {
            id: 3,
            title: "find the maze",
            description: "find the center",
            priority: "low",
            state: "active",
            estimae: 'large'
          }
        ]
      }
    ]

    sorted_employees = employees.sort do |a, b|
      a[:name] <=> b[:name]
    end

    return sorted_employees
  end
end
