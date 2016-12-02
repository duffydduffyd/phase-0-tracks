# Denise Duffy RSpec 12/1/16

class TodoList

	def initialize(array)
		@to_do_array = array
	end	

	def get_items
		@to_do_array
	end	

	def add_item(new_item)
		@to_do_array << new_item
	end	

	def delete_item(item_to_delete)
		@to_do_array.delete(item_to_delete)
	end	

	def get_item(index)
		@to_do_array[index]# something here that retrieves the item by index
	end
end	


