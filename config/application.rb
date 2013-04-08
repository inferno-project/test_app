class TasksApp < Inferno::Application
  path_for :controllers, 'app/controllers'
  path_for :middlewares, 'app/middlewares'
  path_for :models,      'app/models'
  path_for :routes,      'app/routes.rb'
  path_for :static,      'assets/build'

  configure do
    timezone 'EEST'
  end

  configure :production do
    log_level :info
  end
end
