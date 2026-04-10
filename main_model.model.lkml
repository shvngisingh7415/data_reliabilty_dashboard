# 1. Use your existing connection name
connection: "gdatacomms"

# 2. This searches your 'views' folder for the file
include: "/views/*.view.lkml"

# 3. This creates the 'Explore' which enables the Dashboard Filter button
explore: filter_base {
  label: "Advanced Filter Exploration"
}
