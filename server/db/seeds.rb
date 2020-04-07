# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Employee.create!(
    name: "Delores Abernathy",
    tasks: [
      Task.create(
        title: "Get cows",
        description: "I need to find any lost cows",
        priority: "critical",
        state: "new",
        estimate: "medium"
      ),
      Task.create(
        title: "Get to center of the maze",
        description: "I need to go through the maze to find the center",
        priority: "medium",
        state: "active",
        estimate: "large"
      )
    ]
)

Employee.create!(
  name: "Bernard Lowe",
  tasks: [
    Task.create(
      title: "Debug glitch on website",
      description: "Site flickers on certain monitors",
      priority: "critical",
      state: "resolved",
      estimate: "large"
    ),
    Task.create(
      title: "Organize papers",
      description: "I need to organize my project papers",
      priority: "low",
      state: "new",
      estimate: "small"
    ),
    Task.create(
      title: "Fix glasses",
      description: "They keep sliding down my face and need re-adjusting",
      priority: "medium",
      state: "active",
      estimate: "large"
    ),
    Task.create(
      title: "Inspect current builds",
      description: "I need to run through the builds for any glaring bugs",
      priority: "critical",
      state: "active",
      estimate: "large"
    )
  ]
)

Employee.create!(
    name: "Charlotte Hale",
    tasks: [
      Task.create(
        title: "Prepare for investor meeting",
        description: "Need to do a presentation on new ideas",
        priority: "critical",
        state: "resolved",
        estimate: "small"
      ),
      Task.create(
        title: "Investigate signals",
        description: "Strange signal coming from an unkown location",
        priority: "medium",
        state: "resolved",
        estimate: "medium"
      )
    ]
)
