# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# game = Game.create(username: "Ronin", fomo: 20, battery: 20, time: 120, money: 35, occupation: "Yoga Instructor")


### Attribute Changes ###
attr_change1 = AttrChange.create(fomo_change: 0, battery_change: 0, time_change: -5, money_change: 0)
attr_change2 = AttrChange.create(fomo_change: 5, battery_change: 0, time_change: -5, money_change: 0)
attr_change3 = AttrChange.create(fomo_change: -5, battery_change: 0, time_change: -5, money_change: 0)

### Instagram Events ###

insta_event1 = Event.create(name: "good-insta", text: "You have 11 Insta likes. You are happy.", attr_change_id: 3, image_url: )
insta_event2 = Event.create(name: "bad-insta", text: "You have 3 Instagram likes. Sucks to be you.", attr_change_id: 2)

### Tinder Events ###

tinder_event1 = Event.create(name: "good-tinder", text: "You have a hot coconut water date with a hot yoga instructor.", attr_change_id: 3)
tinder_event2 = Event.create(name: "neutral-tinder", text: "You have no new Tinder matches.", attr_change_id: 1)
tinder_event3 = Event.create(name: "bad-tinder", text: "You text a hot match and you get a reply saying 'new phone who dis?'", attr_change_id: 2)

### Ex Girlfriend Event ###

event = Event.create(name: "ex-girlfriend", text: "You run into your ex with their new boo. They are having such a good time without you. What do you do?", image_url: "assets/starwar.png", attr_change_id: 1)
event.save

option1 = Option.create(text: "Hide behind a compost bin", event_id: event.id)
option2 = Option.create(text: "Engage in awkward conversation", event_id: event.id)
option3 = Option.create(text: "Disappear behind a cloud of Dragonfruit vape smoke", event_id: event.id)
option4 = Option.create(text: "Kick them and make them drop their coconut water and run", event_id: event.id)

result1 = Result.create(text: "You hid behind a compost bin. Nice move, Slick.", option_id: option1.id, attr_change_id: attr_change1.id, event_id: event.id)
result2 = Result.create(text: "Well, that was awkward.", option_id: option2.id, attr_change_id: attr_change1.id, event_id: event.id)
result3 = Result.create(text: "You disappeared behind a cloud of Dragonfruit vape smoke. That was so tight!", option_id: option3.id, attr_change_id: attr_change2.id, event_id: event.id)
result4 = Result.create(text: "You kicked them and ran! Serves 'em right! That relationship was the worst two weeks ever!", option_id: option4.id, attr_change_id: attr_change2.id, event_id: event.id)

### OG Kushman trade flannel event ###
event2 = Event.create(name: "og-kush", text: "Hey brah, I'll trade you that flannel for some OG Kush.", image_url: "/assets/og_kushman.jpg", attr_change_id: 1)

kush_option1 = Option.create(text: "Sounds good boss playa!", event_id: event2.id)
kush_option2 = Option.create(text: "No thanks. I'm straight edge. And I'm a Vegan btw.", event_id: event2.id)

result1 = Result.create(text: "You got some OG Kush! You are mellowed out!", option_id: kush_option1.id, attr_change_id: attr_change3.id, event_id: event2.id)
result2 = Result.create(text: "Good job in turning down that poison! You stayed true! You are so much better than everyone else! (but you're dying inside...)", option_id: kush_option2.id, attr_change_id: attr_change3.id, event_id: event2.id)

### Talk to Locals 1 ###
local_event_1 = Event.create(name: "local_hot_dog", text: "A local woman tells you, 'I just ate a tofu dog from Billy Boy's Hot Dog stand. I hope I'm not dying of dysentery. I'm a Vegan by the way...'", attr_change_id: 1)

### Talk to Locals 2 ###
local_event_2 = Event.create(name: "local_burning_man_guy", text: "Hi, my name is Sunny Snowflake. Are you going to Burning Man this year?", attr_change_id: 1)


average-game-ending = Event.create(name: "average-game-ending", text: "The Party is OK. You pretend to have the greatest time ever to seem cool.")
bad-game-ending = Event.create(name: "bad-game-ending", text: "You reached the party. Its sucks, you wished you stayed home rewatching on 'Friends' again")
good-game-ending = Event.create(name: "good-game-ending", text: "The Party is the greatest ever. People love your small talk and hipster style")
