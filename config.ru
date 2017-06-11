require_relative 'home'

Dir[File.join(File.dirname(__FILE__), 'app/controllers', '**', '*.rb')].sort.each { |file| require file }

run Home.router

