def get_name(person)
  return person[:name]
end

def fav_tv_show(person)
  return person[:favourites][:tv_show]
end

def fav_food(person, food)
  return person[:favourites][:snacks].include?(food)
end

def add_friend(person, new_friend)
  person[:friends].push(new_friend)
end

def remove_friend(person, ex_friend)
  person[:friends].delete(ex_friend)
end

def sum_cash(people_array)
  money_sum = 0
  for person in people_array
    money_sum += person[:monies]
  end
  return money_sum
end

def lend_cash(lender, lendee, amount)
  lender[:monies]-=amount
  lendee[:monies]+=amount
end

def fav_food_array(people_array)
  total_food = []
  for person in people_array
    total_food += person[:favourites][:snacks]
  end
  return total_food.length
end

def no_friends(people_array)
  no_friends_array = ""
  for person in people_array
    if (person[:friends].empty? == true)
      no_friends_array += person[:name]
    end
  end
  return no_friends_array
end
