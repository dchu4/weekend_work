# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class TV
  attr_accessor :power, :volume, :channel

  def initialize(attributes)
    @power = attributes[:power]
    @volume = attributes[:volume]
    @channel = attributes[:channel]
  end
end

class Remote
  attr_reader :selected_tv

  def initialize(the_tv)
    @selected_tv = the_tv
  end

  def toggle_power
    @selected_tv.power = !@selected_tv.power
  end
  
  def increment_volume
    @selected_tv.volume += 1
  end

  def decrement_volume
    @selected_tv.volume -= 1
  end

  def set_channel(new_channel)
    @selected_tv.channel = new_channel
  end
end


tv_1 = TV.new({power: true, volume: 5, channel: 11})

remote_1 = Remote.new(tv_1)

p "Current Power"
p remote_1.selected_tv.power

p "Power toggle"
remote_1.toggle_power

if remote_1.selected_tv.power == false
  p "Pass"
else
  p "F"  
end

p "Current Volume"
p remote_1.selected_tv.volume

p "Volume increment"
remote_1.increment_volume

if remote_1.selected_tv.volume == 6
  p "Pass"
else
  p "F"  
end

p "Current Volume"
p remote_1.selected_tv.volume

p "Volume decrement"
remote_1.decrement_volume

if remote_1.selected_tv.volume == 5
  p "Pass"
else
  p "F"  
end

p "Current Channel"
p remote_1.selected_tv.channel

remote_1.set_channel(32)

if remote_1.selected_tv.channel == 32
  p "Pass"
else
  p "F"
end    