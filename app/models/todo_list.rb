class TodoList < ApplicationRecord
  belongs_to :user
  has_many :todo_item
  def self.all_todo_list_item
 TodoList.left_joins(:todo_item).select("todo_lists.*, todo_items.content as item").where(
   "todo_lists.id > 0 OR
   todo_items.todo_list_id = todo_lists.id")
end

def self.all_todo_list
 TodoList.all
end
def self.to_csv
 CSV.generate do |csv|
   columns = %w(id title description item)
   csv << columns.map(&:humanize)
   all_todo_list_item.each do |student|
     csv << student.attributes.values_at(*columns)
   end
 end
end
end
