def fib(n)
  if n <= 0
    return []
  elsif n == 1
    return [0]
  else
    array = []

    x, y = 0, 1

    while array.length < n
      array << x
      x, y = y, x + y
    end

    return array
  end
end

def isPalindrome(n)

  return n.to_s == n.to_s.reverse

end

def nthmax(n, a)

    sorted = a.sort()
    reverse = sorted.reverse()

    if reverse.length > n
      return reverse[n]
    else
        return nil
    end

end

def freq(s)
  characterNum = {}

  s.each_char do |character|
    characterNum[character] = characterNum[character].to_i + 1
  end

  #puts(characterNum)

  max_char = ""
  max_freq = 0

  characterNum.each do |character, freq|
    if freq > max_freq
      max_char = character
      max_freq = freq
    end
  end

  return max_char
end

def zipHash(arr1, arr2)
  if arr1.length != arr2.length
    return nil
  end

  result_hash = {}

  arr1.each_with_index do |item1, index|
    item2 = arr2[index]
    result_hash[item1] = item2
  end

  return result_hash
end


def hashToArray(hash)
  return hash.to_a
end
