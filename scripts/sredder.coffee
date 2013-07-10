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
