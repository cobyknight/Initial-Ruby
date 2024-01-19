class PhoneBook
  def initialize
    @contacts = []
  end

  def add(name, number, is_listed)

    if number.match(/^\d{3}-\d{3}-\d{4}$/)
      if @contacts.none? { |entry| entry[:name] == name || entry[:number] == number }
        @contacts << { name: name, number: number, listed: is_listed }
        return true
      end
    end
    return false
  end

  def lookup(name)
    entry = @contacts.find { |contact| contact[:name] == name }
    return nil unless entry
    return entry[:number] if entry[:listed]
    return nil
  end

  def lookupByNum(number)
    entry = @contacts.find { |contact| contact[:number] == number }
    return nil unless entry
    return entry[:name] if entry[:listed]
    return nil
  end

  def namesByAc(areacode)
    matching_names = []

    @contacts.each do |entry|
      phone_number = entry[:number]
      listed = entry[:listed]
      if phone_number.start_with?(areacode) || (!listed && phone_number.start_with?(areacode))
        matching_names << entry[:name]
      end
    end

    matching_names
  end
end
