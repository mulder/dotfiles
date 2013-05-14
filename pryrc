
# Pry.config.hooks.add_hook(:when_started, :say_hi) do
# end

if File.exists?('./irbrc')
  puts '** Pry loading custom ./irbrc file **'
  load './irbrc'
end
