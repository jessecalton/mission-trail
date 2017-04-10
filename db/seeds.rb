# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# game = Game.create(username: "Ronin", fomo: 20, battery: 20, time: 120, money: 35, occupation: "Yoga Instructor")


### Attribute Changes ###

#Time Only#
attr_change1 = AttrChange.create(fomo_change: 0, battery_change: 0, time_change: -5, money_change: 0)
#Fomo Increase & Time Decrease
attr_change2 = AttrChange.create(fomo_change: 5, battery_change: 0, time_change: -5, money_change: 0)
#Fomo Decrease & Time Decrease
attr_change3 = AttrChange.create(fomo_change: -5, battery_change: 0, time_change: -5, money_change: 0)


#Fomo Decrease & Battery Decrease & Time Decrease
attr_change4 = AttrChange.create(fomo_change: -5, battery_change: -5, time_change: -5, money_change: 0)
#Fomo Increase & Battery Decrease & Time Decrease
attr_change5 = AttrChange.create(fomo_change: 5, battery_change: -5, time_change: -5, money_change: 0)
#Battery Decrease & Time Decrease
attr_change6 = AttrChange.create(fomo_change: 0, battery_change: -5, time_change: -5, money_change: 0)

#Battery Increase & Time Decrease & Money Decrease
attr_change7 = AttrChange.create(fomo_change: 0, battery_change: 10, time_change: -5, money_change: -5)

#Fomo Decrease & Time Decrease & Money Decrease
attr_change8 = AttrChange.create(fomo_change: -5, battery_change: 0, time_change: -5, money_change: -5)

#Fomo Decrease x 2 & Time Decrease & Money Decrease
attr_change9 = AttrChange.create(fomo_change: -10, battery_change: 0, time_change: -5, money_change: -10)

### Instagram Events ###

insta_event1 = Event.create(name: "good-insta", text: "You have 11 Insta likes. You are happy.", attr_change_id: 4, image_url: "/assets/instagram.png" )
insta_event2 = Event.create(name: "bad-insta", text: "You have 3 Instagram likes. Sucks to be you.", attr_change_id: 5, image_url: "/assets/instagram.png")

### Tinder Events ###

tinder_event1 = Event.create(name: "good-tinder", text: "You have a hot coconut water date with a hot yoga instructor.", attr_change_id: 4, image_url: "/assets/tinder.png")
tinder_event2 = Event.create(name: "neutral-tinder", text: "You have no new Tinder matches.", attr_change_id: 6, image_url: "/assets/tinder.png")
tinder_event3 = Event.create(name: "bad-tinder", text: "You text a hot match and you get a reply saying 'new phone who dis?'", attr_change_id: 5, image_url: "/assets/tinder.png")

### Ex Girlfriend Event ###

event = Event.create(name: "ex-girlfriend", text: "You run into your ex with their new boo. They are having such a good time without you. What do you do?", attr_change_id: 1, image_url: "/assets/pixelcouple.png")
event.save

option1 = Option.create(text: "Hide behind a compost bin", event_id: event.id)
option2 = Option.create(text: "Engage in awkward conversation", event_id: event.id)
option3 = Option.create(text: "Disappear behind a cloud of Dragonfruit vape smoke", event_id: event.id)
option4 = Option.create(text: "Kick them and make them drop their coconut water and run", event_id: event.id)

result1 = Result.create(text: "You hid behind a compost bin. Nice move, Slick.", option_id: option1.id, attr_change_id: attr_change1.id, event_id: event.id, image_url: "/assets/dumpster.png")
result2 = Result.create(text: "Well, that was awkward.", option_id: option2.id, attr_change_id: attr_change1.id, event_id: event.id, image_url: "/assets/awkwardconversation.png")
result3 = Result.create(text: "You disappeared behind a cloud of Dragonfruit vape smoke. That was so tight!", option_id: option3.id, attr_change_id: attr_change2.id, event_id: event.id, image_url: "/assets/vapecloud.png")
result4 = Result.create(text: "You kicked them and ran! Serves 'em right! That relationship was the worst two weeks ever!", option_id: option4.id, attr_change_id: attr_change2.id, event_id: event.id, image_url: "/assets/kickandrun.png")

### OG Kushman trade flannel event ###
event2 = Event.create(name: "og-kush", text: "Hey brah, I'll trade you that flannel for some OG Kush.", image_url: "/assets/og_kushman.png", attr_change_id: 1)

kush_option1 = Option.create(text: "Sounds good boss playa!", event_id: event2.id)
kush_option2 = Option.create(text: "No thanks. I'm straight edge. And I'm a Vegan btw.", event_id: event2.id)

result1 = Result.create(text: "You got some OG Kush! You are mellowed out!", option_id: kush_option1.id, attr_change_id: attr_change3.id, event_id: event2.id, image_url: "/assets/smile.png")
result2 = Result.create(text: "Good job in turning down that poison! You stayed true! You are so much better than everyone else! (but you're dying inside...)", option_id: kush_option2.id, attr_change_id: attr_change2.id, event_id: event2.id, image_url: "/assets/smile.png")

### Corner Store Event 1 ###

corner_event1 = Event.create(name: "corner-store-1", text: "You have reached the Chill ASF corner store", image_url: "/assets/smile.png")

corner_option1 = Option.create(text: "$10 - Buy a flannel", event_id: corner_event1.id)
corner_option2 = Option.create(text: "$5 - Buy a doblet and charge your phone", event_id: corner_event1.id)
corner_option3 = Option.create(text: "$10 - Buy blueberry muffin vape juice", event_id: corner_event1.id)
corner_option4 = Option.create(text: "Leave Store", event_id: corner_event1.id)

corner_result1 = Result.create(text: "You bought a flannel. I miss the 90's, too.", option_id: corner_option1.id, attr_change_id: 9, event_id: corner_event1.id, image_url: "/assets/smile.png")
corner_result2 = Result.create(text: "Your phone has some more juice! Check that Tinder!", option_id: corner_option2.id, attr_change_id: 7, event_id: corner_event1.id, image_url: "/assets/smile.png")
corner_result3 = Result.create(text: "You bought blueberry muffin vape juice. Vape Nation!", option_id: corner_option3.id, attr_change_id: 8, event_id: corner_event1.id, image_url: "/assets/smile.png")
corner_result4 = Result.create(text: "You left without buying anything. You get to keep your money.", option_id: corner_option4.id, attr_change_id: 1, event_id: corner_event1.id, image_url: "/assets/smile.png")

### Corner Store Event 2 ###

corner_event2 = Event.create(name: "corner-store-2", text: "You have arrived at the Toschi Station corner store", image_url: "/assets/smile.png")

corner_2_option1 = Option.create(text: "$10 - Buy a flannel", event_id: corner_event2.id)
corner_2_option2 = Option.create(text: "$5 - Buy a doblet and charge your phone", event_id: corner_event2.id)
corner_2_option3 = Option.create(text: "$10 - Buy blueberry muffin vape juice", event_id: corner_event2.id)
corner_2_option4 = Option.create(text: "Leave Store", event_id: corner_event2.id)

corner_2_result1 = Result.create(text: "You bought a flannel. I miss the 90's, too.", option_id: corner_2_option1.id, attr_change_id: 9, event_id: corner_event2.id, image_url: "/assets/smile.png")
corner_2_result2 = Result.create(text: "Your phone has some more juice! Check that Tinder!", option_id: corner_2_option2.id, attr_change_id: 7, event_id: corner_event2.id, image_url: "/assets/smile.png")
corner_2_result3 = Result.create(text: "You bought blueberry muffin vape juice. Vape Nation!", option_id: corner_2_option3.id, attr_change_id: 8, event_id: corner_event2.id, image_url: "/assets/smile.png")
corner_2_result4 = Result.create(text: "You left without buying anything. You get to keep your money.", option_id: corner_2_option4.id, attr_change_id: 1, event_id: corner_event2.id, image_url: "/assets/smile.png")

### Half-eaten Burrito Event ###

burrito_event = Event.create(name: "half-eaten-burrito", text: "You find a half-eaten burrito on the ground")

burrito_option1 = Option.create(text: "Eat it?", event_id: burrito_event.id)
burrito_option2 = Option.create(text: "Leave it be.", event_id: burrito_event.id)

burrito_result1 = Result.create(text: "You have died of dysentery.\n Just kidding! This is modern San Francisco! You cure all your ills with Soylent and move on.", option_id: burrito_option1.id, attr_change_id: 2, event_id: burrito_event.id)

burrito_result2 = Result.create(text: "You left it alone. Probably for the best", option_id: burrito_option2.id, attr_change_id: 3, event_id: burrito_event.id)

### Wine Bar Event ###

wine_bar1 = Event.create(name: "wine-tasting", text: "You get invited to a wine tasting!")

wine_option = Option.create(text: "Go in! It's like free pre-gaming!", event_id: wine_bar1.id)

wine_result = Result.create(text: "This is probably a much better party than the hip, new trendy bar in the Marina. Unfortunately, FOMO is real and you must continue.", option_id: wine_option.id, attr_change_id: 3, event_id: wine_bar1.id)

### Micro-Dosing Event ###

micro_dosing_event = Event.create(name: "micro-dosing", text: "All the cool kids are micro-dosing. They say it makes you way more creative or something. Do you partake in this semi-controversial but relatively benign act?")

micro_dosing_option1 = Option.create(text: "Yes, I will micro-dose.", event_id: micro_dosing_event.id)
micro_dosing_option2 = Option.create(text: "No, I will not partake.", event_id: micro_dosing_event.id)

micro_dosing_result1 = Result.create(text: "You micro-dosed and nobody thinks you're a square. However, your FOMO starts to kick in and you wish you were back home playing Oregon Trail.", option_id: micro_dosing_option1.id, attr_change_id: 2, event_id: micro_dosing_event.id)
micro_dosing_result2 = Result.create(text: "You passed on the micro-dose. Trends are totally not your thing.", option_id: micro_dosing_option2.id, attr_change_id: 3, event_id: micro_dosing_event.id)

### Mix-tape Event ###

mix_tape_event = Event.create(name: "mix_tape", text: "This guy asks if you'll buy his mix tape. He seems really earnest but you don't really like the rap music.")

mix_tape_option1 = Option.create(text: "Sure, I'll buy it.", event_id: mix_tape_event.id)
mix_tape_option2 = Option.create(text: "No, thanks.", event_id: mix_tape_event.id)

mix_tape_result1 = Result.create(text: "You bought the mix tape for $5. It's a scratched up CD-R and you don't own anything that plays CD's, but you tell all your friends it's straight fire, yo.", option_id: mix_tape_option1.id, attr_change_id: 8, event_id: mix_tape_event.id)
mix_tape_result2 = Result.create(text: "You passed on the mix tape. Mumford & Sons is more your cup of gluten-free cashew milk anyway.", option_id: mix_tape_option2.id, attr_change_id: 1, event_id: mix_tape_event.id)

### Talk to Locals 1 ###
local_event_1 = Event.create(name: "local_hot_dog", text: "A local woman tells you, 'I just ate a tofu dog from Billy Boy's Hot Dog stand. I hope I'm not dying of dysentery. I'm a Vegan by the way...'", attr_change_id: 1, image_url: "/assets/hotdog.png")

### Talk to Locals 2 ###
local_event_2 = Event.create(name: "local_burning_man_guy", text: "Hi, my name is Sunny Snowflake. Are you going to Burning Man this year?", attr_change_id: 1, image_url: "/assets/burningman.png")

### Talk to Locals 3 ###
local_event_3 = Event.create(name: "local-hit-on", text: "You get hit on by a local who says, 'Woo, that flannel is making me feel things I probably shouldn't.", attr_change_id: 3)

### Talk to Locals 4 ###
local_event_4 = Event.create(name: "local-kramer", text: "I have a line in the upcoming Woody Allen film. I say, 'These pretzels are making me thirsty.'", attr_change_id: 1)

### Talk to Locals 5 ###
local_event_5 = Event.create(name: "local-giants", text: "This guy gave you some free Giants tickets! It is a great place to take Tinder selfies and get hit by bottles", attr_change_id: 3)

### Talk to Locals 6 ###
local_event_6 = Event.create(name: "local-unicycle", text: "You get side-swiped by a tech bro on an electric unicycle. He shouts 'Scooty-Puff Junior,' as he scoots away.", attr_change_id: 2)

### Talk to Locals 7 ###
local_event_7 = Event.create(name: "local-scooter", text: "You narrowly dodge an alt-right bro on a scooter spouting game theory principles. That was a close shave!", attr_change_id: 3)



### Game Ending ###

average_game_ending = Event.create(name: "average_game_ending", text: "The Party is OK. You pretend to have the greatest time ever to seem cool.", image_url: "/assets/smile.png")
bad_game_ending = Event.create(name: "bad_game_ending", text: "You reached the party. Its sucks, and you're probably dying of dysentery. You wish you stayed home rewatching 'Friends' again", image_url: "/assets/smile.png")
good_game_ending = Event.create(name: "good_game_ending", text: "The Party is the greatest ever. People love your small talk and hipster style", image_url: "/assets/smile.png")



