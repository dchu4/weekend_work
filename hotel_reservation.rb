# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method

reservation = HotelReservation.new({customer_name: "Karen Smith", date: "01/01/1990", room_number: 305, amenities: []})


puts "This is your current room number #{reservation.room_number}"

reservation.room_number = 402

puts "This is your new room number #{reservation.room_number}"

if reservation.room_number == 402
  p "Pass"
else
  p "F"
end    

reservation.add_a_fridge

p "Check for a fridge"

if reservation.amenities.include?("fridge")
  p "Pass"
else
  p "F"
end

p "Check for a crib"

reservation.add_a_crib

if reservation.amenities.include?("crib")
  p "Pass"
else
  p "F"
end

reservation.add_a_custom_amenity("Tiger")

p "Check for custom add"

if reservation.amenities.include?("Tiger")
  p "Pass"
else
  p "F"
end