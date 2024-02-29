# Get data
import os


data_hotels = open('data/raw/hotels-vienna.csv', 'r')

var_names = data_hotels.readline().strip().split(',')

data_hotels.close()

for index, variable in enumerate(var_names):
  print(index, variable)

# Hotels-vienna data become list of lists in data.
data = []
with open('data/raw/hotels-vienna.csv', 'r') as file:
  for line in file:
    data.append(list(line.split(',')))

data = data[1:]

# count how many hotels and apartments with stars
stars_count = {}
for row in data:
  stars = row[8]
  if stars in stars_count:
    stars_count[stars] += 1
  else:
    stars_count[stars] = 1
print(stars_count)

# calculate average price for each star
average_price = {}
for row in data:
  stars = row[8]
  price = float(row[6])
  if stars in average_price:
    average_price[stars].append(price)
  else:
    average_price[stars] = [price]
for stars, prices in average_price.items():
  average_price[stars] = sum(prices) / len(prices)
print(average_price)



