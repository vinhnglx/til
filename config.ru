require_relative 'app'

Dir[File.join(File.dirname(__FILE__), 'app/controllers', '**', '*.rb')].sort.each { |file| require file }

run App.router

