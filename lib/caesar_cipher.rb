def caesar_cipher(string, int)
    return convert_ascii_array(add_i_letters_ascii(convert_array_ascii(string),int))
end


def convert_array_ascii(string)
    ascii = string.chars.map { |c| c.ord }
    return ascii
end

def add_i_letters_ascii(array, key)
    #shifted = array.map { |l| l > 90 - key ? l - 24 + key : l + key }
    #shifted = array.map { |l| l > 122 - key ? l - 24 + key : l + key }
    for l in (0..array.size-1) do 
        if 97 <= array[l] && array[l] <= 122-key || 65 <= array[l] && array[l] <= 90-key
            array[l] = array[l] + key
        elsif 122-key+1 <= array[l] && array[l] <= 122 || 90-key+1 <= array[l] && array[l] <= 90
            array[l] =  array[l] - 26 + key
        end
    end
    return array
end

def convert_ascii_array(ascii)
    string = ascii.map { |c| c.chr }.join
    return string
end




