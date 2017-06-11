require_relative 'app'

# Load Controllers
Dir[File.join(File.dirname(__FILE__), 'app/controllers', '**', '*.rb')].sort.each { |file| require file }
Dir[File.join(File.dirname(__FILE__), 'app/views', '**', '*.rb')].sort.each { |file| require file }

run App.router

