class TasksController < RestfulController
  model Task

  def read
    collection.secret = 'foo'
    super
  end

  # Actions: list, create, read, update, destroy
end
