def is_multiple_of_3_or_5?(n)
    return n%3 == 0 || n%5 == 0
end

def sum_of_3_or_5_multiples(final_number)
    n = 0
    for i in (0..final_number) do
        if is_multiple_of_3_or_5?(i)
            n = n + i
        end
    end
    return n 
end

