**Quiz 4 revision of**

***Revision of wrong question and reasons why was that option wrong***

***What happens if we try to initialize a Hash that contains duplicate keys?***

Answer:
=======
- A warning is raised and the duplicate key overwrites the value of the first occurence
  and the hash is created

***Identify all of the code implementations that correctly meet the following set of requirements.***  

Given an array of strings representing integers, iterate through all of the items in the array. If the integer value of the string is odd add it to a new array of odd integer strings. Once iteration is complete the new array should contain all of the odd integer strings from the original array.

Answer:
=======
- one of option chosen was incorrect as didnt look into the iteration correctly.
- Look at the code, dry run the iteration to llok for mistakes.

***Identify all of the code implementations that correctly meet the following set of requirements.***

Given an array of integers, for each integer output all integers from 1 to that integer; e.g. if the integer was 5, you would output 1, 2, 3, 4, 5.

Answer:
=======
- The wrong option was selected accidently.

***Read the below statements regarding each and identify all the statements which are correct.***

option A - If you call each with a block on an array that contains seven elements,
           the block willalways execute seven times.

Answer:
======
- The above option is wrong as if the caller object is mutated inside the each block
  then the number of iteration will be less than the size of the caller collection.

***Read the below statements regarding select and identify all the statements which are correct.***

option C: If select was called on an array with a block that returned a truthy value on each iteration,
          the original array would be returned.

Answer:
=======
- The above selected option is wrong because the select method returns a new array with all
  the elements from the caller array.


***If select was called on an array with a block that returned a truthy value on each iteration, the original array would be returned.***

```ruby
[1, 2, 3, 4, 5].some_method do |num|
  num + 1
end
# => []
```

Answer:
======
- The above code returns an empty array.
- My selection for some_method was the select method, which is wrong.
- As the select method analyzes the truthiness of the block's return value
  and in this case num + 1 would always return a truthy value.
- This would return a new array with all the elements of the caller array, not an empty array.


***Your team is asked to refactor some legacy code used by the marketing team. One of the requirements of the project is to change the implementation from using basic looping structures to using iterative methods instead.*** 

```ruby
mailing_campaign_leads.map do |lead|
  lead[:name].capitalize!
end

mailing_campaign_leads.select! do |lead|
  lead[:days_since_login] < 60 && lead[:mailing_list]
end
```

Answer:
=======
- The above code is wrong as in the first part the fist name is capitalized.
- per as per the legacy code the first and second name is to be capitalized.

```ruby
mailing_campaign_leads.each do |lead|
  names = lead[:name].split
  lead[:name] = names.map { |name| name.capitalize }.join(' ')
end

usable_leads = mailing_campaign_leads.reject do |lead|
  last_login = lead[:days_since_login]
  subscribed_to_list = lead[:mailing_list]
  last_login > 59 && !subscribed_to_list
end
```

Answer:
=======
- The above code is wrong as the usable lead will not conatin the desired result.
- As the reject method would retun all the value for which the block returns either false or 
  nil value.
- but in the above code the && condition if replaced by || condition would replace the legacy code 
  accurately.   

# Heading 1
