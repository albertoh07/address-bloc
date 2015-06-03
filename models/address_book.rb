require_relative "entry.rb"

class AddressBook
	attr_accessor :entries

	def initialize
		@entries = []
	end

   def add_entry(name, phone, email)

     index = 0
     @entries.each do |entry|
 
       if name < entry.name
         break
       end
       index += 1
     end

     @entries.insert(index, Entry.new(name, phone, email))
   end

 def remove_entry(entry_to_delete)
    entry_index = nil
    @entries.each_with_index do |entry, index|
      if entry.name == entry_to_delete.name &&
        entry.phone_number == entry_to_delete.phone_number &&
        entry.email == entry_to_delete.email
          entry_index = index
      end
    end
    if entry_index != nil
      @entries.delete(entry_index)
    end
    @entries
  end
end
