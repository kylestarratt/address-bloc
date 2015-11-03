require_relative 'entry'

class AddressBook
  attr_accessor :entries

  def initialize
    @entries = []
  end

  def add_entry(name, phone_number, email)

    index = 0
    @entries.each do |entry|

      if name < entry.name
        break
      end
      index += 1
    end

    @entries.insert(index, Entry.new(name, phone_number, email))
  end

  def find_by_number(n)
    if n == 0
      "Invalid entry. Please try again."
    elsif @entries.count >= n
      @entries[n-1].to_s
    else
      "Number to high, please try again!"
    end
  end
end
