TasksApp.routes do
  get('/').to('home')

  resource :task

  mount('/stats').to(StatsCollector)

  map('/pages').to(controller: 'Pages')

  within('/users') do
    get('/login').to(controller: 'Users', action: 'login_form')
    post('/login').to(controller: 'Users', action: 'login')
    delete('/').or.get('/logout').to('users#logout')
  end

  within('/admin') do
    use AdminAuthMiddleware
  end
end
