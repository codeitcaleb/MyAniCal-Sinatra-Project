require './config/environment'

require '.app'
run 

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use Rack::MethodOverride
#write a blog post about mathod override, forms, and http requests
run ApplicationController
use UserAnimeReviewsController
use SessionsController
use UsersController
use AnimeController

