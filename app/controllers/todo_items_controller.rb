class TodoItemsController < ApplicationController
  before_action :set_todo_list

  def create
    @todo_item = @todo_list.todo_items.create(todo_items_params)
    redirect_to @todo_list
end

private

def set_todo_list
  @todo_list = TodoList.find(params[:todo_list_id])
end

def todo_items_params
  params[:todo_item].permit(:content)
end

end
