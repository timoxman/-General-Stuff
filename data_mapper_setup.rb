env = ENV['RACK_ENV]'] || 'development'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/twentyQuestions_#{env}")

require './app/models/questionaire'
require './app/models/question'
require './app/models/answer'


DataMapper.finalize

DataMapper.auto_upgrade!
