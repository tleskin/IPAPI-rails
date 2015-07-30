# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

recipe = Recipe.create(name: "The Plinian Legacy Double IPA", description: "Brewed with Columbus, Centennial, Amarillo® and Simply Select Hop Blend, this quintessential double IPA is an homage to the #1 beer in America — as voted by the AHA — and one of the most sought-after brews of the last decade. Brew it for yourself with one of our most popular Double IPA recipe kits.", instructions: "1. Remove the liquid Wyeast pack from the refrigerator,
and “smack” as shown on the back of the yeast package.
Leave it in a warm place (70–80° F) to incubate until the
pack begins to inflate. Allow at least 3 hours for inflation;
some packs may take up to several days to show inflation.
Do not brew with inactive yeast — we can replace the
yeast, but not a batch that fails to ferment properly. If
you are using dry yeast, no action is needed.
ON BREWING DAY
2. Collect and heat 2.5 gallons of water.
3. For mail-order customers grains for extract kits come
crushed by default, but if you requested uncrushed
grains, crush them now. Pour crushed grain into supplied
mesh bag and tie the open end in a knot.
- Add 0.25 oz Amarillo hops to kettle along with steeping grains
Steep for 20 minutes or until water reaches 170°F.
Remove bag and discard.
4. Bring to a boil, remove the kettle from the burner and
stir in the 4 lbs Pilsen DME.
5. Return wort to boil. The mixture is now called “wort”,
the brewer’s term for unfermented beer.
- Add 10 mL of Hopshot and boil for 90 minutes
- 45 minutes before the end of the boil add 1 oz Columbus hops.
- 20 minutes before the end of the boil add 1 oz Simply
Select Hop Blend
- 15 minutes before the end of the boil add the 6 lbs
Pilsen malt syrup.
- At the end of the 90 minute boil turn off the flame and add
the 0.75 lbs Corn Sugar, 1.5 oz Centennial and 2.5 oz Simply
Select Hop Blend hops and allow to steep for 10–15 minutes
before chilling.
6. Cool the wort. After the hop stand is finished, cool the
wort to approximately 100° F as rapidly as possible. Use a
wort chiller, or put the kettle in an ice bath in your sink.
7. Sanitize fermenting equipment and yeast pack. While
the wort cools, sanitize the fermenting equipment –
fermenter, lid or stopper, fermentation lock, funnel, etc –
along with the yeast pack and a pair of scissors.
8. Fill primary fermenter with 2 gallons of cold water,
then pour in the cooled wort. Leave any thick sludge in
the bottom of the kettle.
THE PLINIAN LEGACY
9. Add more cold water as needed to bring the
volume to 6 gallons.
10. Aerate the wort. Seal the fermenter and rock back
and forth to splash for a few minutes, or use an aeration
system and diffusion stone.
11. Optional: if you have our Mad Brewer Upgrade or
Gravity Testing kits, measure specific gravity of the wort
with a hydrometer and record.
12. Add yeast once the temperature of the wort is 78°F or
lower (not warm to the touch). Use the sanitized scissors
to cut off a corner of the yeast pack, and carefully pour
the yeast into the primary fermenter.
13. Seal the fermenter. Add approximately 1 tablespoon of
water to the sanitized fermentation lock. Insert the lock
into rubber stopper or lid, and seal the fermenter.
14. Move the fermenter to a warm, dark, quiet spot until
fermentation begins.
BEYOND BREWING DAY, WEEKS 1–2
15. Active fermentation begins. Within approximately
48 hours of Brewing Day, active fermentation will
begin – there will be a cap of foam on the surface of
the beer, and you may see bubbles come through the
fermentation lock.
16. Active fermentation ends. Approximately 1–2 weeks
after brewing day, active fermentation will end: the cap
of foam falls back into the new beer, bubbling in the
fermentation lock slows down or stops.
17. Transfer beer to secondary fermenter. Sanitize
siphoning equipment and an airlock and carboy bung or
stopper. Siphon the beer from the primary fermenter into
the secondary.
BEYOND BREWING DAY—
SECONDARY FERMENTATION
18. Secondary fermentation. Allow the beer to condition
in the secondary fermenter for 2–4 weeks
before proceeding with the next step. Timing now is
somewhat flexible.
19. Add the dry hops in two different stages.
Dry Hops #1:
Add 10–14 days before bottling
1.5 oz Columbus, 1 oz Centennial, 1 oz Simply
Select Hop Blend
Dry Hops #2:
Add 4–5 days before bottling
0.5 oz Columbus, 0.5 oz Simply Select Hop Blend,
0.25 oz Centennial, 0.25 oz Amarillo
BOTTLING DAY—ABOUT 1 MONTH
AFTER BREWING DAY
20. Sanitize siphoning and bottling equipment.
21. Mix a priming solution (a measured amount of sugar
dissolved in water to carbonate the bottled beer) of 2/3
cup priming sugar in 16 oz water. Bring the solution to a
boil and pour into the bottling bucket.
22. Siphon beer into bottling bucket and mix with priming
solution. Stir gently to mix—don’t splash.
23. Fill and cap bottles.
1–2 WEEKS AFTER BOTTLING DAY
24. Condition bottles at room temperature for 1–2 weeks.
After this point, the bottles can be stored cool or cold.
25. Serving. Pour into a clean glass, being careful to leave
the layer of sediment at the bottom of the bottle.",
gravity: "1.070",
time_to_make: "6 Weeks")


BeerType.create(name: "IPA")
BeerType.create(name: "Stout")
BeerType.create(name: "Pale Ale")
BeerType.create(name: "Sour")

recipe.beer_types << BeerType.find(1)
recipe.ingredients << Ingredient.create(name: "Briess Carapils", category: "Grain")
recipe.ingredients << Ingredient.create(name: "Bairds Carastan", category: "Grain")
recipe.ingredients << Ingredient.create(name: "Pilsen DME", category: "Grain")
recipe.ingredients << Ingredient.create(name: "Pilsen malt syrup", category: "Grain")
recipe.ingredients << Ingredient.create(name: "Amarillo", category: "Hop")
recipe.ingredients << Ingredient.create(name: "Hopshot", category: "Hop")
recipe.ingredients << Ingredient.create(name: "Columbus", category: "Grain")
recipe.ingredients << Ingredient.create(name: "Simply Select Hop Blend", category: "Grain")
recipe.ingredients << Ingredient.create(name: "Safale US-05 Ale Yeast", category: "Yeast")
recipe.ingredients << Ingredient.create(name: "Corn Sugar", category: "Other")

recipe.recipe_ingredients.find_by(ingredient_id: 1).amount = 8
recipe.recipe_ingredients.find_by(ingredient_id: 2).amount = 6
recipe.recipe_ingredients.find_by(ingredient_id: 3).amount = 64
recipe.recipe_ingredients.find_by(ingredient_id: 4).amount = 96
recipe.recipe_ingredients.find_by(ingredient_id: 5).amount = 0.25
recipe.recipe_ingredients.find_by(ingredient_id: 6).amount = 0.33814
recipe.recipe_ingredients.find_by(ingredient_id: 7).amount = 1
recipe.recipe_ingredients.find_by(ingredient_id: 8).amount = 1
recipe.recipe_ingredients.find_by(ingredient_id: 10).amount = 12

recipe1 = Recipe.create(name: "American Wheat", description: "A familiar style made popular by microbreweries all
over the US. Like their German cousins, American wheat
beers feature large proportions of malted wheat in the
grain bill and are naturally cloudy in appearance. Unlike
German Weizenbiers, though, American wheat beers
have a bit more hop character and are fermented with a
milder-tasting yeast, resulting in a more clean, neutral
finish. Wyeast’s US Hefeweizen strain makes for a spritzy,
refreshing warm-weather crowd-pleaser.",

instructions: "1. Remove the liquid Wyeast pack from the refrigerator,
and “smack” as shown on the back of the yeast package.
Leave it in a warm place (70–80° F) to incubate until the
pack begins to inflate. Allow at least 3 hours for inflation;
some packs may take up to several days to show inflation.
Do not brew with inactive yeast — we can replace the
yeast, but not a batch that fails to ferment properly. If
you are using dry yeast, no action is needed.
NOTE: IF YOU ARE USING DRY YEAST OR
WHITE LABS YEAST, NO ACTION IS NEEDED.
ON BREWING DAY
2. Collect and heat 2.5 gallons of water.
3. Bring to a boil and add 6 lb Wheat malt syrup.
Remove the kettle from the burner and stir in the
Wheat malt syrup.
4. Return wort to boil. The mixture is now called “wort”,
the brewer’s term for unfermented beer.
- Add 1 oz Willamette hops, and boil for 60 minutes.
- Add 1 oz Cascade hops 15 minutes before the end of the boil.
5. Cool the wort. When the 60-minute boil is finished,
cool the wort to approximately 100° F as rapidly as
possible. Use a wort chiller, or put the kettle in an ice
bath in your sink.
6. Sanitize fermenting equipment and yeast pack. While
the wort cools, sanitize the fermenting equipment –
fermenter, lid or stopper, fermentation lock, funnel, etc –
along with the yeast pack and a pair of scissors.
7. Fill primary fermenter with 2 gallons of cold water,
then pour in the cooled wort. Leave any thick sludge in
the bottom of the kettle.
8. Add more cold water as needed to bring the
volume to 5 gallons.
9. Aerate the wort. Seal the fermenter and rock back
and forth to splash for a few minutes, or use an aeration
system and diffusion stone.
10. OPTIONAL: if you have our Mad Brewer Upgrade or
Gravity Testing kits, measure specific gravity of the wort
with a hydrometer and record.
11. Add yeast once the temperature of the wort is 78°F or
lower (not warm to the touch). Use the sanitized scissors
to cut off a corner of the yeast pack, and carefully pour
the yeast into the primary fermenter.
AMERICAN WHEAT BEER
12. Seal the fermenter. Add approximately 1 tablespoon of
water to the sanitized fermentation lock. Insert the lock
into rubber stopper or lid, and seal the fermenter.
13. Move the fermenter to a warm, dark, quiet spot until
fermentation begins.
BEYOND BREWING DAY, WEEKS 1–2
14. Active fermentation begins. Within approximately 48
hours of Brewing Day, active fermentation will begin –
there will be a cap of foam on the surface of the beer,
and you may see bubbles come through the fermentation
lock. The optimum fermentation temperature for this
beer is 60–72º F – move the fermenter to a warmer or
cooler spot as needed.
15. Active fermentation ends. Approximately 1–2 weeks
after brewing day, active fermentation will end: the cap
of foam falls back into the new beer, bubbling in the
fermentation lock slows down or stops.
BOTTLING DAY—ABOUT 2 WEEKS
AFTER BREWING DAY
16. Sanitize siphoning and bottling equipment.
17. Mix a priming solution (a measured amount of sugar
dissolved in water to carbonate the bottled beer) of 2/3
cup priming sugar in 16 oz water. Bring the solution to a
boil and pour into the bottling bucket.
18. Siphon beer into bottling bucket and mix with priming
solution. Stir gently to mix—don’t splash.
19. Fill and cap bottles.
2 WEEKS AFTER BOTTLING DAY
20. Condition bottles at room temperature for 2 weeks.
After this point, the bottles can be stored cool or cold.
21. Serving. Pour into a clean glass, being careful to leave
the layer of sediment at the bottom of the bottle. Cheers! ",
gravity: "1.043",
time_to_make: "4 Weeks")

recipe1.beer_types << BeerType.find(2)
recipe1.ingredients << Ingredient.create(name: "Wheat malt syrup", category: "Grain")
recipe1.ingredients << Ingredient.create(name: "Willamette", category: "Hop")
recipe1.ingredients << Ingredient.create(name: "Cascade", category: "Hop")
recipe1.ingredients << Ingredient.create(name: "Safale US-05 Ale Yeast", category: "Yeast")

recipe1.recipe_ingredients.find_by(ingredient_id: 11).amount = 96
recipe1.recipe_ingredients.find_by(ingredient_id: 12).amount = 1
recipe1.recipe_ingredients.find_by(ingredient_id: 13).amount = 1

recipe2 = Recipe.create(name: "Kenny's Stout", description: "A familiar style made popular by microbreweries all
over the US. Like their German cousins, American wheat
beers feature large proportions of malted wheat in the
grain bill and are naturally cloudy in appearance.",

instructions: "1. Remove the liquid Wyeast pack from the refrigerator,
and “smack” as shown on the back of the yeast package.
Leave it in a warm place (70–80° F) to incubate until the
pack begins to inflate. Allow at least 3 hours for inflation;
some packs may take up to several days to show inflation.
Do not brew with inactive yeast — we can replace the
yeast, but not a batch that fails to ferment properly. If
you are using dry yeast, no action is needed.",
gravity: "1.04",
time_to_make: "5 Weeks")

recipe2.beer_types << BeerType.find(2)
recipe2.ingredients << Ingredient.find(11)
recipe2.ingredients << Ingredient.find(12)
recipe2.ingredients << Ingredient.find(13)
recipe2.ingredients << Ingredient.find(14)

recipe2.recipe_ingredients.find_by(ingredient_id: 11).amount = 144
recipe2.recipe_ingredients.find_by(ingredient_id: 12).amount = 1
recipe2.recipe_ingredients.find_by(ingredient_id: 13).amount = 1
recipe2.recipe_ingredients.find_by(ingredient_id: 14).amount = 1

recipe3 = Recipe.create(name: "Pale Ale", description: "A familiar style made popular by microbreweries all
over the US. Like their German cousins, American wheat
beers feature large proportions of malted wheat in the
grain bill and are naturally cloudy in appearance.",

instructions: "1. Remove the liquid Wyeast pack from the refrigerator,
and “smack” as shown on the back of the yeast package.
Leave it in a warm place (70–80° F) to incubate until the
pack begins to inflate. Allow at least 3 hours for inflation;
some packs may take up to several days to show inflation.
Do not brew with inactive yeast — we can replace the
yeast, but not a batch that fails to ferment properly. If
you are using dry yeast, no action is needed.",
gravity: "1.06",
time_to_make: "5 Weeks")

recipe3.beer_types << BeerType.find(3)
recipe3.ingredients << Ingredient.find(2)
recipe3.ingredients << Ingredient.find(3)
recipe3.ingredients << Ingredient.find(4)
recipe3.ingredients << Ingredient.find(5)
recipe3.ingredients << Ingredient.find(7)

recipe3.recipe_ingredients.find_by(ingredient_id: 2).amount = 3
recipe3.recipe_ingredients.find_by(ingredient_id: 3).amount = 3
recipe3.recipe_ingredients.find_by(ingredient_id: 4).amount = 58
recipe3.recipe_ingredients.find_by(ingredient_id: 5).amount = 3
recipe3.recipe_ingredients.find_by(ingredient_id: 7).amount = 10


recipe4 = Recipe.create(name: "Sour", description: "A familiar style made popular by microbreweries all
over the US. Like their German cousins, American wheat
beers feature large proportions of malted wheat in the
grain bill and are naturally cloudy in appearance.",

instructions: "1. Remove the liquid Wyeast pack from the refrigerator,
and “smack” as shown on the back of the yeast package.
Leave it in a warm place (70–80° F) to incubate until the
pack begins to inflate. Allow at least 3 hours for inflation;
some packs may take up to several days to show inflation.
Do not brew with inactive yeast — we can replace the
yeast, but not a batch that fails to ferment properly. If
you are using dry yeast, no action is needed.",
gravity: "1.04",
time_to_make: "5 Weeks")

recipe4.beer_types << BeerType.find(4)
recipe4.ingredients << Ingredient.find(1)
recipe4.ingredients << Ingredient.find(2)
recipe4.ingredients << Ingredient.find(3)
recipe4.ingredients << Ingredient.find(10)
recipe4.ingredients << Ingredient.find(11)

recipe4.recipe_ingredients.find_by(ingredient_id: 1).amount = 1
recipe4.recipe_ingredients.find_by(ingredient_id: 2).amount = 12
recipe4.recipe_ingredients.find_by(ingredient_id: 3).amount = 110
recipe4.recipe_ingredients.find_by(ingredient_id: 10).amount = 5
recipe4.recipe_ingredients.find_by(ingredient_id: 11).amount = 2
