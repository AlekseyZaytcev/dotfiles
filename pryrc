# frozen_string_literal: true

require 'awesome_print'
require 'pry-theme'

# History
Pry.config.history.file = ".pry_history"

# Colors
AwesomePrint.pry!
Pry.editor = 'nvim'
Pry.config.theme = 'monokai'

# Pry Navigations
begin
  Pry.commands.alias_command 's', 'step'
rescue StandardError
  nil
end
begin
  Pry.commands.alias_command 'n', 'next'
rescue StandardError
  nil
end
begin
  Pry.commands.alias_command 'f', 'finish'
rescue StandardError
  nil
end
begin
  Pry.commands.alias_command 'l', 'whereami'
rescue StandardError
  nil
end
