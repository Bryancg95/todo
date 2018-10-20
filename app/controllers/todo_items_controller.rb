class TodoItemsController < ApplicationController
  before_action :set_todo_list




def create
 @todo_item = @todo_list.todo_item.create(todo_item_params)
 redirect_to @todo_list
end

def new
  @todo_item = TodoItem.new
end

def update
   @todo_item = @todo_list.todo_item.find(params[:id])
   if @todo_item.update(todo_item_params)
     flash[:success] = "Todo List item was deleted."
   else
     flash[:error] = "Todo List item could not be deleted."
   end
   redirect_to @todo_list
 end

def destroy
 @todo_item = @todo_list.todo_item.find(params[:id])
 if @todo_item.destroy
  flash[:success] = "Todo List item was deleted."
 else
  flash[:error] = "Todo List item could not be deleted."
 end
 redirect_to @todo_list
end


def complete
 @todo_item.update_attribute(:completed_at, Time.now)
 redirect_to @todo_list, notice: "Todo item completed"
end
private

def set_todo_list
 @todo_list = TodoList.find(params[:todo_list_id])
 @todo_item  = params[:id] ? TodoItem.find(params[:id]) : TodoItem.new
end

def todo_item_params
 params[:todo_item].permit(:content)
end
end
