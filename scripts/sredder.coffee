# Description
#   Helps to document and track the progress of claims for Canada's Scientific
#   Research and Experimental Development (SR&ED) tax credit program.
#
# Dependencies:
#   "google-sheets": "~> 0.0.4"
#
# Configuration:
#   GOOGLE_USERNAME
#   GOOGLE_PASSWORD
#
# Commands:
#   hubot sredder project add - Adds a new project
#   hubot sredder project [show] - Shows currently active project
#   hubot sredder project list - Lists all available projects
#   hubot sredder project set <project id> - Sets new active project
#   hubot sredder obstacle add <description> - Creates a new obstacle
#   hubot sredder obstacle [show] <obstacle id> - Show full details for a given obstacle.
#   hubot sredder <component> add <obstacle id> <description> - Adds component to a given obstacle. Component can be one of hypothesis, experiment, analysis, or conclusion.
#   hubot sredder search <query> - Searches descriptions of obstacles and components
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   Patrick Connolly (@patcon) - Myplanet Digital, Inc.

module.exports = (robot) ->
  robot.brain.on 'loaded', =>
    robot.logger.info "Loading SRED data"
    robot.brain.data.sredder ?= {}
    robot.brain.data.sredder.projects ?= {}

  robot.respond /sredder project add (.*)$/i, (msg) ->
    project_name = msg.match[1]
    next_id = Object.keys(robot.brain.data.sredder.projects).length+1
    robot.brain.data.sredder.projects[next_id] = project_name
    msg.send "Added project: #{robot.brain.data.sredder.projects[next_id]}"

  robot.respond /sredder project list$/i, (msg) ->
    msg.send "SR&ED projects:"
    for key, item of robot.brain.data.sredder.projects
      msg.send "#{key}. #{item}"
