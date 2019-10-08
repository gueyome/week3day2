#trouve les meilleurs jours d'achat/vente

#récupère le benefice maximum possible selon le jour d'achat -> array 
def benefits_array_day(prices_array)
    benefits_exit = [1]
    for day_buy in (0..prices_array.size-1) do
        benefit = 0
        for day_sell in (day_buy+1..prices_array.size-1) do
            if prices_array[day_sell]-prices_array[day_buy] > benefit
                benefit = prices_array[day_sell]-prices_array[day_buy]
            end
        end
        benefits_exit[day_buy] = benefit
    end
    return benefits_exit
end

#donne le jour d'achat pour lequel on peut avoir la plus grosse plus-value
def day_optimized(benefits_exit)
    return benefits_exit.index { |num| num == benefits_exit.max } 
end

#donne le couple jour achat / jour revente optimisé
def trade_optimized(day_optimized,prices_array)
    benefit = 0
    day_exit = 0
        for day_sell in (day_optimized+1..prices_array.size-1) do
            if prices_array[day_sell]-prices_array[day_optimized] > benefit
                benefit = prices_array[day_sell]-prices_array[day_optimized]
                day_exit = day_sell
            end
        end
    return [day_optimized, day_exit]
end

def best_trade(prices_array)
    return trade_optimized(day_optimized(benefits_array_day(prices_array)),prices_array)
end


#puts benefits_array_day([17, 3, 6, 9, 15, 8, 6, 1, 10])
#puts day_optimized(benefits_array_day([17, 3, 6, 9, 15, 8, 6, 1, 10]))
#puts trade_optimized(day_optimized(benefits_array_day([17, 3, 6, 9, 15, 8, 6, 1, 10])),[17, 3, 6, 9, 15, 8, 6, 1, 10])
#puts best_trade([17, 3, 6, 9, 15, 8, 6, 1, 10])