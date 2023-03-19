"Gateway of the Ferrets" by Feneric
[This is a quick little puzzler about getting out of a room with the assistance of a pair of ferrets.]

The story headline is "A Ferrety Adventure".
The story description is "Sometimes portals lead to dead ends. Sometimes they close and lock behind you. Sometimes it's challenging to get back. Sometimes you need help. Sometimes you need ferrets.".
The story creation year is 2019.
The story genre is "Fantasy".
The release number is 1.
After printing the banner text, say "(First-time users should type 'about'.)"

[Still to do -- Check for awkward code. More testing. ]

Use American Dialect.
Use serial comma.
Release along with cover art.
Release along with an interpreter.

When play begins:
	say "The gateway door slams shut and locks behind you. A cursory glance makes it clear that there's no way forward, and trying the door makes it clear that even getting back may not be easy. There are two ferrets here with you, and through some lingering effect of the magical passage through the gateway you know their names: Sugar and Cinnamon. Maybe they can help you escape...".

The Ferret-Gateway is a privately-named room. The printed name of the Ferret-Gateway is the "Ledge by the Gateway". The description of it is "You're on a semi-circular ledge with a smooth, curved wall on the round side and a chasm on the straight side. The gateway door is in the middle of the curved wall to the south. Directly to the north in front of the chasm stands an imposing pedestal.".

Instead of examining the player:
	say "Even in this realm you look as you did before; you're definitely not a ferret.".

Instead of smelling when the noun is the Ferret-Gateway:
	say "The air here is crisp and fresh. It's like being out in the woods after a thunderstorm.".

Instead of listening when the noun is the Ferret-Gateway:
	say "The acoustics are as you would expect for a small ledge between an apparently bottomless chasm and an extremely tall curved wall.".

[known states]
A known-state is a kind of value. The known-states are known and unknown. A known-state is usually unknown.
A trick is a kind of object. A trick has a known-state.

[gateway]
The gateway is a closed, openable, locked, enterable container. The gateway is scenery in the Ferret-Gateway. Understand "planescape", "planescape portal", "planescape gateway door", "planescape gateway", "planescape door", "sigil", "sigil portal", "sigil gateway door", "sigil gateway", "sigil door", "rough metal gateway", "metal gateway", "rough gateway", "gateway", "rough metal door", "rough door", "metal door", "gateway door", "portal", and "door" as the gateway. The description of it is "The gateway through which you entered is a metal door set into a smooth stone wall. It looks strong enough to repel a determined dragon. [if gateway is locked]It appears to be locked. [end if]Lacking typical door components like knobs, handles, or keyholes, its most obvious feature is an oversized readout in its center. [if gateway is closed and gateway is locked]Fortunately it has to be pushed to be opened, so you believe you could open it if only it weren't locked.[otherwise]Currently it is open, although unsurprisingly a hazy magical field obscures the view of what's on the other side. You can now escape simply by entering that door.[otherwise if gateway is closed]Fortunately it has to be pushed to be opened, so you believe you can open it.[end if][paragraph break]There is also a [if kibble-dispenser is known]kibble dispenser[otherwise]dispenser of some sort[end if] directly to the right of it."
The gateway has a known-state. It is unknown.

The field is nowhere. It is an open, enterable, unopenable container. Understand "hazy magical field", "hazy field", "magical field", "magical haze", "haze", and "field" as the field. The description of it is "It's often the way with these portals that one does not know what one will get until one has passed through.".

After examining the gateway:
	now the gateway is known.

Before opening the gateway:
	now the field is part of the gateway.

After closing the gateway:
	now the field is nowhere.

Instead of exiting when the location is the Ferret-Gateway, try entering the gateway.

Instead of going south when the location is the Ferret-Gateway, try entering the gateway.

Instead of pushing when the noun is the gateway, try opening the gateway.

Instead of closing when the noun is the gateway and the gateway is open:
	say "There's no way you can grip it to pull it shut without entering the magical field.".

Before entering gateway:
	if player has Sugar or player has Cinnamon:
		say "Sadly, the ferrets cannot leave this realm." instead.

Instead of entering when the noun is the gateway:
	if the noun is closed and the noun is unlocked:
		say "You push open the door.[paragraph break]";
		now noun is open;
	if the noun is open:
		say "Cinnamon and Sugar turn to you as you leave. They look a little sad.[paragraph break]You successfully pass through the gateway; you have escaped!";
		end the story finally saying "You win!";
	otherwise:
		say "You can't push the door open while it's still locked.".

Instead of touching the gateway:
	say "The gateway door feels cold and smooth to the touch.".

Instead of searching when the noun is the gateway and the gateway is open:
	try examining the field.

Instead of entering when the noun is the field and the gateway is open:
	try entering the gateway.

The readout is part of the gateway. Understand "oversized readout" and "readout" as the readout. The readout has a list of numbers called the digits. The digits is {-1, -1, -1, -1, -1}. The description of it is "[readout-reading]".

Instead of touching the readout:
	say "The symbols on the readout are embossed and so can be identified by touch as well as by sight.".

[ledge]
The ledge is scenery in the Ferret-Gateway. Understand "grassy semicircle", "ledge", "grass", and "ground" as the ledge. The description of it is "The ledge that you're standing on is a grassy semicircle between a curved stone wall and an apparently bottomless chasm. There is a massive pedestal standing in the middle of it.".

[wall]
The wall is scenery in the Ferret-Gateway. Understand "extremely tall curved wall", "tall curved wall", "smooth stone wall", "tall curved stone wall", "curved stone wall", "tall stone wall", "smooth wall", "stone wall", "curved wall", and "wall" as the wall. The description of it is "The smooth stone wall is to your south and appears to rise up to an impossible height. It is curved and runs to the edge on both the east and west. Right in its center is a metal door, and next to that a [if kibble-dispenser is known]kibble dispenser[otherwise]dispenser of some sort[end if]. The bottom edge of the wall seems to be marked into fifteen equal lengths with a little bit left over, almost as if someone had measured it at one time."

The wall-edge is part of the wall. The printed name of it is "wall edge". Understand "curved wall edge", "wall edge", "edge", "curved wall markings", "wall markings", and "markings" as the wall-edge. The description of it is "It's almost like someone tried measuring the wall using ferret-lengths (including the tail) as a unit of measure. The wall is a little over 15 units long.". 

Instead of going southwest when the location is the Ferret-Gateway:
	say "You can't go that way due to the wall.".

Instead of going southeast when the location is the Ferret-Gateway:
	say "You can't go that way due to the wall.".

Instead of going west when the location is the Ferret-Gateway:
	say "You can't go that way due to the wall.".

Instead of going east when the location is the Ferret-Gateway:
	say "You can't go that way due to the wall.".

Instead of going up when the location is the Ferret-Gateway:
	say "There is no way to climb up the wall.".

Instead of climbing the wall:
	say "There is no way to climb up the wall.".
	
Instead of touching the wall:
	say "The wall feels cool and smooth to the touch.".

[chasm]
The chasm is a closed, transparent, unopenable container. It is scenery in the Ferret-Gateway. Understand "apparently bottomless chasm", "bottomless chasm", and "chasm" as the chasm. The description of it is "Although the chasm looks bottomless, you realize that there's probably a bottom down there somewhere, just too far away to see through the mist. In fact you can see an island rising out of it in the distance across the chasm, so unless it's actually floating it has to be resting on [italic type]something[roman type]. Curiously, the edge of the chasm seems to be marked into ten equal lengths, almost like a big ruler.[paragraph break]Not too far from the edge, between it and the pedestal, is a little [if knob is visible]knob[otherwise]patch of rough dirt[end if].".

The chasm-edge is part of the chasm. The printed name of it is "chasm edge". Understand "chasm edge", "edge", "chasm edge markings", "chasm markings", and "markings" as the chasm-edge. The description of it is "It's almost like someone tried measuring the chasm edge using ferret-lengths (including the tail) as a unit of measure. The chasm edge is an even 10 units long. Right next to the pedestal, between it and the chasm edge, is a little [if knob is visible]knob[otherwise]patch of rough dirt[end if].". 

The mist is scenery in the chasm. Understand "thick mist" and "mist" as the mist. The description of it is "The mist is thick enough to hide the depth of the chasm.".

Instead of going northwest when the location is the Ferret-Gateway:
	say "You can't go that way due to the chasm.".

Instead of going northeast when the location is the Ferret-Gateway:
	say "You can't go that way due to the chasm.".

Instead of going down when the location is the Ferret-Gateway:
	say "There is no way to climb down the chasm.".

Instead of climbing the chasm:
	say "There is no way to climb down the chasm.".

[pedestal]
The pedestal is an enterable supporter that is scenery in the Ferret-Gateway. Understand "massive pedestal", "pedestal", "control", "door control", "gateway control", "imposing pedestal", and "planescape gateway control" as the pedestal. The description of it is "The massive pedestal is taller than you and sits in the middle of the ledge. It has a few lines of writing on it at approximately eye level. Its eastern side is lined with a thin mesh. A hollow trim formed from a tube wraps its bottom edge, and there is a small round hole a short distance above the tube. The top of it has two platforms on its eastern and western sides. There is also a little [if knob is visible]knob[otherwise]patch of rough dirt[end if] on the ground at the base of the pedestal facing the chasm edge.[first time][paragraph break]Something about the pedestal gives off a faint [italic type]Land of the Lost[roman type] vibe. Perhaps it is the gateway control and the way back out.[only][if Sugar is in the trim][paragraph break]Sugar is currently in the trim. [end if][if Cinnamon is on the western-platform][paragraph break]Cinnamon is currently perched on the western platform. [end if][if Cinnamon is on the eastern-platform and Sugar is on the eastern-platform][paragraph break]Both Sugar and Cinnamon are currently balanced on the eastern platform.[otherwise if a ferret (called the fuzzy) is on the eastern-platform][paragraph break][fuzzy] is currently on the eastern platform.[end if]".

A rule for reaching inside the pedestal:
	say "The pedestal is too tall.";
	deny access.

Instead of entering when the noun is the pedestal:
	say "There doesn't seem to be any way for you to climb the pedestal.".

Instead of touching the pedestal:
	say "You can feel the thin mesh, the stone beneath it, and the tubular trim at the bottom.".

Instead of searching the pedestal:
	say "There isn't anything hidden on the pedestal. There are two platforms on top of it, a mesh on its eastern side, some writing on it, a trim with an access opening, and a small hole above the trim.".

[writing]
The writing is part of the pedestal. Understand "pedestal writing", "few lines of writing", "lines of writing", "few written lines", "written lines", "writing", "few lines of symbols", "lines of symbols", "pedestal symbols", and "symbols" as the writing. The printed name of it is "pedestal writing". The description of it is "It's a few lines of symbols that you don't understand. You can't tell if it's an unfamiliar alphabet or a completely unfamiliar language. If its the instructions on how to use the pedestal, you're probably going to have to figure out how to make it work without them.".

[mesh]
The mesh is part of the pedestal. Understand "eastern side", "thin mesh", and "mesh" as the mesh. The description of it is "The mesh looks like it would be climbable if only you were much smaller and lighter. It leads all the way up to the top of the pedestal to the platform on the east."

Understand "jump across" and "leap across" as jumping.
Target-jumping is an action applying to one touchable thing. Understand "jump to [something]", "jump across to [something]", "leap to [something]", and "leap across to [something]" as target-jumping.
Carry out target-jumping:
	say "You can't jump to [noun].".

Instead of climbing when the noun is the mesh or the noun is the pedestal:
	say "The mesh is far too thin to support you.";
	rule fails;
	stop the action.

Instead of touching the mesh:
	say "The mesh feels thin and light. It may be strong enough to support a ferret.".

[trim]
The trim is part of the pedestal. It is a transparent open enterable container. Understand "translucent trim", "hollow trim", "translucent hollow trim", "hollow tube", "translucent tube", "translucent hollow tube", "tube", "trim", "trim access opening", "small access opening", "access opening", "small opening", "opening", "trim opening", "trim access", and "access" as the trim. The description of it is "The trim is made from a translucent tube that runs all around the base of the pedestal. It has a small access opening on the north side and both some kind of switch and some kind of lever inside it on the south side. There is also a small round hole a short distance above the access opening."

Instead of entering when the noun is the trim:
	say "The access opening is far too small for you to enter.";
	rule fails;
	stop the action.

A rule for reaching inside the trim:
	say "The access opening is too small to reach inside.";
	deny access.

Instead of touching the trim:
	say "The trim is smooth except for its access opening, which appears large enough to possibly admit a ferret.".

[switch]
The switch is scenery inside the trim. The description of it is "A ferret inside the tube could probably push it.". The switch has a known-state. It is unknown.

[lever]
The lever is scenery inside the trim. The description of it is "A ferret inside the tube could likely pull it.". The lever has a known-state. It is unknown.

[platforms]
A platform is a kind of supporter. All platforms are on top of the pedestal. A platform is scenery. A platform has a known-state. It is unknown. Understand "platform" as a platform. Understand "platforms" as the plural of platform.

A rule for reaching inside a platform:
	say "The platform is too high to reach.";
	deny access.

[eastern platform]
The eastern-platform is a platform. Understand "eastern platform", "east platform", "platform on the east", "e platform", "mesh platform", "eastern pressure pad", "e pressure pad", "pressure pad", "eastern", and "platform" as the eastern-platform. The printed name of it is "eastern platform". The description of it is "The eastern platform is roughly a ferret-length in diameter, sits on top of the pedestal, and is connected to the mesh. When standing far enough away from it at the right angle, it also looks like it has some kind of pressure pad on its surface."

[western platform]
The western-platform is a platform. Understand "western platform", "west platform", "platform on the west", "w platform", "western pressure pad", "w pressure pad", "pressure pad", "western", and "platform" as the western-platform. The printed name of it is "western platform". The description of it is "The western platform is roughly a ferret-length in diameter and sits on top of the pedestal. When standing far enough away from it at the right angle, it looks like it has some kind of pressure pad on its surface."

[Ferret Paradise]
The paradise is scenery in the chasm. The printed name of the paradise is the "Mystical Land of the Ferrets". Understand "mystical land of the ferrets", "land of the ferrets", "mystical land", "ferret land", "mystical ferret land", "ferret island", "mystical island", "mystical ferret island", "island", and "land" as the paradise. The description of it is "A mystical island rising out of the mist, you can barely make out ferrets dancing, digging, and dooking on its shore. Something tells you that this land is just for ferrets, and there is no way for you to even approach it. A rainbow with one end seemingly rising from the island almost as if it were a bridge provides an additional beautiful touch.".

A rule for reaching inside the chasm:
	say "There is no way across the chasm.";
	deny access.

[Rainbow Bridge]
The bridge is an open, enterable, unopenable container in the chasm. It is scenery. The printed name of the bridge is the "rainbow". Understand "rainbow bridge", "faint rainbow", "rainbow", and "bridge" as the bridge. The description of it is "A full rainbow crosses the sky and touches the island across the chasm, almost as if it were some kind of magical bridge.".

Instead of going north when the location is the Ferret-Gateway or entering the bridge:
	say "The chasm is between you and the island. There is no way to get there. You really need to focus on getting back out the way you came.";
	rule fails;
	stop the action.

[sky]
The sky is scenery in the Ferret-Gateway. Understand "sky" as the sky. The description of it is "The sky is clear and blue, except across the chasm where there is some mist. A faint rainbow is visible in the mist."

[kibble]
Some food is a kind of thing. Food is edible. Some kibble is a food. Understand "brown kibble", "chewy kibble", "ferret kibble", "kibble", "ferret food", and "food" as the kibble. The description of it is "The kibble is brown and more on the chewy side than the crunchy side.".

Instead of dropping when the noun is kibble:
	say "You decide against dropping it as that would get it dirty.";
	rule fails;
	stop the action.

Instead of throwing when the noun is kibble:
	say "You realize you couldn't get any distance with it and would be apt to get it dirty, so you decide not to throw it.";
	rule fails;
	stop the action.

Instead of smelling when the noun is kibble and player has some kibble:
	say "It smells meaty. You suspect if you were a ferret you'd really enjoy eating it.[run paragraph on][first time] Heck, you're feeling a little peckish now yourself.[only][paragraph break]";
	rule succeeds;
	stop the action.

Instead of tasting when the noun is a food:
	try eating the noun.

Instead of eating when the noun is kibble and player has some kibble:
	move some kibble to kibble-dispenser;
	say "It's quite meaty. You can really taste the protein.";
	rule succeeds;
	stop the action.

Instead of kissing when the noun is a ferret (called the fuzzy):
	if the player has the fuzzy:
		say "[Fuzzy] squirms away as you give [them] a kiss.";
		now the fuzzy is in the Ferret-Gateway;
		now the fuzzy is busy;
	otherwise:
		say "[Fuzzy] easily avoids your clumsy kissing attempt.";
	rule fails;
	stop the action;

[kibble dispenser]
The kibble-dispenser is an opaque, closed, unopenable container. The kibble-dispenser is scenery in the Ferret-Gateway. Understand "kibble dispenser button", "kibble dispenser", "dispenser button", "kibble button", "big button", "button", "metal chute", "chute", and "dispenser" as kibble-dispenser. The printed name of kibble-dispenser is "kibble dispenser". Some kibble is in the kibble-dispenser. The description of the kibble-dispenser is "The dispenser is mounted on the wall next to the gateway. It's translucent and has some sort of kibble inside. There's a big button on it and a metal chute underneath.". The kibble-dispenser has a known-state. It is unknown.

Instead of pushing when the noun is the kibble-dispenser:
	if some kibble is in the kibble-dispenser:
		move some kibble to player;
	say "You push the dispenser button and some kibble comes out into your hand.";
	now kibble-dispenser is known;
	rule succeeds;
	stop the action.

After examining when the noun is the kibble-dispenser:
	now kibble-dispenser is known.

[hole]
The hole is an open, unopenable container. The hole is part of the pedestal. Understand "cartoon mouse hole", "mouse hole", "cartoon hole", "small hole", "small cartoon hole", "small mouse hole", "small round hole", "round hole", "hole", "small cave", "tiny cave", and "cave" as the hole. The printed name of the hole is "small hole". The description of the hole is "It's a small round hole, reminiscent of a cartoon mouse hole although there is no evidence that there have ever been any mice here, cartoon or otherwise.[run paragraph on][first time] It's a lot like a tiny cave, and for a moment your mind wanders away to the stories of cave crawls you loved as a kid. You quickly realize though that this isn't that kind of story, and this cave is too small for you to even reach inside.[only][paragraph break]". The hole has a known-state. It is unknown.

Instead of searching the hole:
	say "The hole is too dark to see inside.";
	rule fails;
	stop the action.
	
Instead of entering the hole:
	say "The hole is far too small to enter.";
	rule fails;
	stop the action.

A rule for reaching inside the hole:
	say "The hole is too small to reach inside.";
	deny access.

[rough dirt patch]
The dirt is scenery in the Ferret-Gateway. Understand "little patch of rough dirt", "patch of rough dirt", "little rough dirt patch", "patch of dirt", "little patch", "rough dirt patch", "rough dirt", "dirt patch", "patch", and "dirt" as the dirt. The printed name of it is "rough dirt patch". The description of it is "It's a rough patch of dirt [if knob is visible]with a little knob in the middle of it[otherwise]that could be covering something[end if].".

Instead of opening the dirt:
	try searching the dirt.

Instead of pushing the dirt:
	try searching the dirt.

Instead of pulling the dirt:
	try searching the dirt.

Instead of looking under the dirt:
	try searching the dirt.

Instead of searching the dirt:
	say "The dirt is too rough for human hands to dig into and search.";
	rule fails;
	stop the action.

Understand "dig [something]", "dig in [something]", "dig up [something]", and "dig through [something]" as searching.
Does the player mean searching the dirt: it is likely.

[knob]
The knob is scenery. Understand "little twist knob", "little knob", "twist knob" and "knob" as the knob. The description of it is "It's a little twist knob made more for human hands than ferret paws.". The knob has a known-state. It is unknown.

Instead of turning the knob:
	say "The knob turns a notch and you hear a faint 'click' from the gateway.";
	now knob is known;
	increment-digit 2;

Does the player mean turning the knob: it is likely.

[ferrets]
A ferret is a kind of animal. Understand "ferret", "weasel", "polecat", "carpet shark", "cat snake", and "mustelid" as a ferret. A ferret can be sable or champagne. [A ferret can actually be sable, champagne, chocolate, albino, mutt, panda, roan, blaze, cinnamon, lilac, etc.] Understand the sable property as describing a ferret. Understand "chocolate" as sable. Understand the champagne property as describing a ferret. Understand "lilac" as champagne. A ferret has a number called the relationship. A relationship is usually 0. A ferret has text called an eating style. An eating style is usually "with great gusto". A jill is a kind of ferret. Jills are female. Understand "jill" and "sprite" as jill. A hob is a kind of ferret. Hobs are male. Understand "hob" and "hoblet" as hob. A ferret can be busy. A ferret is usually not busy. Understand "ferrets", "weasels", "polecats", "carpet sharks", "cat snakes", and "mustelids" as the plural of ferret.

Every turn:
	if Sugar is in the trim and Cinnamon is in the Ferret-Gateway and Sugar is not busy and Cinnamon is not busy:
		if a random number from 1 to 3 is 1:
			say "Sugar and Cinnamon are playing some kind of defend-the-fort game. Sugar is fiercely defending the trim access opening while Cinnamon is trying to force her back with equal ferocity. Their exaggerated actions make it clear that it's all in good fun.";
		otherwise if a random number from 1 to 2 is 1:
			say "Either Sugar or Cinnamon (you're not sure which) is making a happy 'dook dook' noise as the two playfully push each other back and forth away from the trim access opening.";
	otherwise if Sugar is in the Ferret-Gateway and Cinnamon is in the Ferret-Gateway and Sugar is not busy and Cinnamon is not busy:
		if a random number from 1 to 5 is 1:
			say "Sugar chases Cinnamon in a circle around the pedestal, making happy 'dook dook' noises all the way.";
		otherwise if a random number from 1 to 4 is 1:
			say "Cinnamon chases Sugar in a circle around the pedestal, making happy 'dook dook' noises all the way.";
		otherwise if a random number from 1 to 3 is 1:
			say "Cinnamon and Sugar seem to be playing some variation of tag, but the concept of [italic type]it[roman type] doesn't seem to be all that well-defined with the pursuer suddenly becoming the pursued without any apparent warning.";
		otherwise if a random number from 1 to 10 is 1:
			say "Cinnamon runs in a circle and Sugar bisects his path to try and catch him.";
		otherwise if a random number from 1 to 5 is 1:
			say "Sugar runs in a circle and Cinnamon bisects her path to try and catch her.";
	otherwise:
		Let the active-fuzzy be an object;
		if a random number from 1 to 2 is 1:
			now the active-fuzzy is Sugar;
		otherwise:
			now the active-fuzzy is Cinnamon;
		if the active-fuzzy is on a platform (called the active-platform) and the active-fuzzy is not busy:
			if a random number from 1 to 3 is 1:
				say "[Active-fuzzy] does a funny little dance on top of the [active-platform].";
			otherwise if a random number from 1 to 2 is 1:
				say "[Active-fuzzy] lies down on the [active-platform] and relaxes for a bit, taking in the view.";
			otherwise if the active-platform is the eastern-platform and a random number from 1 to 5 is 1:
				say "[Active-fuzzy] climbs down the mesh.";
				now active-fuzzy is in the Ferret-Gateway;
		otherwise if the active-fuzzy is in the trim and the active-fuzzy is not busy:
			if a random number from 1 to 3 is 1:
				say "[Active-fuzzy] does a loop around the inside of the trim at high speed.";
			otherwise if a random number from 1 to 10 is 1:
				say "[Active-fuzzy] exits the trim.";
				now active-fuzzy is in the Ferret-Gateway;
		otherwise if the player has the active-fuzzy and the active-fuzzy is not busy:
			if a random number from 1 to 4 is 1:
				say "[Active-fuzzy] snuggles up in your arms.";
			otherwise if a random number from 1 to 4 is 1:
				say "[Active-fuzzy] cuddles in your arms.";
			otherwise if a random number from 1 to 4 is 1:
				say "[Active-fuzzy] yawns.";
		otherwise if the active-fuzzy is not busy:
			if a random number from 1 to 4 is 1:
				say "[Active-fuzzy] bounces around chaotically in the weasel war dance.";
			otherwise if a random number from 1 to 3 is 1:
				say "[Active-fuzzy] stops everything to furiously scratch an itch.";
			otherwise if a random number from 1 to 2 is 1:
				say "[Active-fuzzy] runs around seemingly at random.";
			otherwise if a random number from 1 to 2 is 1:
				say "[Active-fuzzy] jumps around happily.";
			otherwise if the active-fuzzy is Sugar and a random number from 1 to 10 is 1:
				say "Sugar quickly dives through the trim access opening, turning around and blocking it as if to repel invaders.";
				now Sugar is in the trim;
			otherwise if the active-fuzzy is Cinnamon and a random number from 1 to 10 is 1:
				say "Cinnamon quickly climbs up the mesh on the side of the platform.";
				now Cinnamon is on the eastern-platform;
	now Sugar is not busy;
	now Cinnamon is not busy.

Before answering when the noun is a ferret:
	if the noun is in the Ferret-Gateway:
		say "[Noun] approaches you and looks directly up at you as if to acknowledge you.";
	otherwise if the noun is in the trim:
		say "[Noun] briefly peeks [their] head out of the trim access and looks at you.";
	otherwise if the player has the noun:
		say "[Noun] looks up at you and seems to be listening.";
	otherwise:
		say "[Noun] looks down at you from the top of the platform.";
	now noun is busy;
	rule fails;
	stop the action.
	
Instead of asking a ferret (called the fuzzy) about something:
	say "[Fuzzy] listens to you attentively but does not respond in any useful way.";
	now noun is busy;
	rule fails;
	stop the action.

Instead of telling a ferret (called the fuzzy) about something:
	say "[Fuzzy] listens to you patiently. [They're] a good listener.";
	now noun is busy;
	rule fails;
	stop the action.

Instead of dropping when the noun is a ferret:
	say "You gently lower [Noun] to the ground, and [they] run off happily.";
	move noun to location;
	now noun is busy;
	rule fails;
	stop the action.

Instead of throwing when the noun is a ferret:
	decrease the relationship of the noun by 3;
	say "[Noun] easily squirms away and looks back at you unhappily.";
	now noun is busy;
	rule fails;
	stop the action.

Instead of attacking when the noun is a ferret:
	decrease the relationship of the noun by 3;
	say "[Noun] easily dodges your clumsy attack. [They] look at you with an expression of [one of]disappointment[or]annoyance[or]sadness[or]irritation[at random].";
	now noun is busy;
	rule fails;
	stop the action.

The patting-trick is a trick. It is unknown.
Instead of rubbing when the noun is a ferret:
	if the relationship of the noun <= 1:
		say "You cannot get close enough to [Noun] to pat [them]. [They] is much too quick. Maybe if [they] trusted you more?";
		now noun is busy;
		rule fails;
		stop the action;
	otherwise:
		increase the relationship of the noun by 1;
		say "[Noun] lets you pat [them].";
		now patting-trick is known;
		now noun is busy;
		rule succeeds;
		stop the action.

Understand "pat [ferret]" and "pet [ferret]" as rubbing.
Does the player mean rubbing a ferret: it is very likely.

Instead of taking when the noun is a ferret:
	if the relationship of the noun <= 10:
		say "[Noun] effortlessly avoids your attempt to pick [them] up. [They] [one of]looks at you with amusement[or]laughs with a 'dook, dook, dook!' noise as [they] dodges[or]gives you a look that suggests that [they] thinks you're a little slow[at random]. Maybe if [they] trusted you more?";
		rule fails;
	otherwise:
		say "[Noun] allows you to pick [them] up.";
		move noun to player;
		rule succeeds;
	now noun is busy;
	stop the action.

Instead of inserting or putting when the noun is a ferret:
	if the player has the noun:
		if the second noun is the trim:
			if the noun is Sugar:
				say "You gently place Sugar into the trim.";
				now Sugar is in the trim;
			otherwise:
				say "Cinnamon is too big to fit through the access opening and he squirms away.";
				now Cinnamon is in the Ferret-Gateway;
				now Cinnamon is busy;
		otherwise if the second noun is the hole:
			say "It's unlikely either ferret could fit completely in there. One could probably look inside it, though.";
		otherwise:
			say "There's no way to put either ferret there.";
		rule fails;
	otherwise:
		say "You're not holding [Noun].";
		rule fails;
	stop the action.

Instead of inserting or putting when the noun is the kibble:
	if the player has the noun:
		if the second noun is the hole:
			say "The kibble disappears into the hole.";
			now the kibble is in the kibble-dispenser;
			rule succeeds;
		if the second noun is the trim:
			say "You put the kibble in the trim.[paragraph break]";
			if Sugar is in the trim:
				say "Sugar eats the kibble.";	
			otherwise if Sugar is in the Ferret-Gateway:
				say "Sugar enters the trim and eats the kibble.";
			otherwise if player has Sugar:
				say "Sugar hops down, enters the trim, and eats the kibble.";
			otherwise:
				say "Sugar climbs down, enters the trim, and eats the kibble.";
			now Sugar is in the trim;
			now Sugar is busy;
			now the kibble is in the kibble-dispenser;
			rule succeeds;
		otherwise if the second noun is the field and the gateway is open:
			say "You put the kibble into the magical field and it disappears.";
			now the kibble is in the kibble-dispenser;
			rule succeeds;
		otherwise if the second noun is the gateway and the gateway is open:
			say "You put the kibble into the gateway and it disappears.";
			now the kibble is in the kibble-dispenser;
			rule succeeds;
		otherwise:
			say "You decide against putting it there as that would get it dirty.";
			rule fails;
	stop the action.

The feeding-trick is a trick. It is unknown.
Instead of giving when the noun is kibble and player has some kibble and object is a ferret:
	move some kibble to kibble-dispenser;
	increase the relationship of the second noun by 2;
	say "You feed [some noun] to [Second Noun]. [They] eats it [eating style of second noun].";
	now second noun is busy;
	now feeding-trick is known;
	rule succeeds;
	stop the action.

Instead of smelling when the noun is a ferret:
	if player has the noun:
		say "[Noun] has an unusual smell. It's almost like corn chips.";
		now noun is busy;
		rule succeeds;
	otherwise:
		say "[Noun] is too far away to smell. Maybe if you were holding [them]?";
		rule fails;
	stop the action.

Instead of touching when the noun is a ferret:
	if player has the noun:
		say "[Noun] is fuzzy and warm.";
		now noun is busy;
		rule succeeds;
	otherwise:
		say "[Noun] avoids your touch.";
		rule fails;
	stop the action.

Instead of tasting when the noun is a ferret:
	say "That seems like a bad idea.";
	rule fails;
	stop the action.

Instead of eating when the noun is a ferret:
	say "That seems like a really bad idea.";
	rule fails;
	stop the action.

Instead of thinking:
	say "You ponder a bit on your circumstances.[paragraph break]";
	if the gateway is open:
		say "You can exit through the gateway and escape.";
	otherwise if the gateway is unlocked:
		say "You can open the gateway and exit through it.";
	otherwise:
		say "You need to unlock the gateway somehow to escape.[paragraph break]";
		if the gateway is unknown:
			say "Maybe examining the gateway will reveal some clue?[paragraph break]";
		if the relationship of Sugar < 1 or the relationship of Cinnamon < 1:
			say "It seems likely that you will need to befriend both ferrets. Each has abilities the other lacks, and they can probably help you get out. [paragraph break]";
		if the relationship of Sugar < 6 or the relationship of Cinnamon < 6:
			say "The ferrets appear to be friendly and smart enough to understand basic requests. What sorts of things can you do to befriend them? [run paragraph on]";
			if playing-trick is unknown:
				say "Maybe you can play with them? [run paragraph on]";
			if dooking-trick is unknown:
				say "Maybe you can make them laugh? [run paragraph on]";
			if singing-trick is unknown:
				say "Maybe you can dance and sing with them? [run paragraph on]";
			if patting-trick is unknown:
				say "Maybe you can pat them like little dogs? [run paragraph on]";
			if feeding-trick is unknown:
				say "You recall the wisdom of [italic type]Scooby-Doo[roman type]; if only you had something like Scooby Snacks![run paragraph on]";
			if kibble-dispenser is unknown:
				say "There must be something around here for them to eat.[run paragraph on]";
			say "[paragraph break]";
		if switch is unknown or lever is unknown or eastern-platform is unknown or western-platform is unknown or hole is unknown:
			say "The pedestal seems significant. Perhaps there is more to find there. [run paragraph on]";
		if knob is unknown:
			say "Maybe there are still secrets around the pedestal.[run paragraph on]";
		say "[paragraph break]";

Abouting is an action applying to nothing. Understand "about" as abouting.
Carry out abouting:
	now Cinnamon is busy;
	now Sugar is busy;
	say "Gateway of the Ferrets is by Eric W. Brown, a.k.a. Feneric. It is part of the 2019 Interactive Fiction Advent Calendar and fits into the overall Planescape setting. It was written in loving memory of the [italic type]real[roman type] Cinnamon and Sugar, two fine ferrets who in life were much like they are described here. I miss them both immensely.[paragraph break]My thanks go out to Rhianon P. Brown, Michael D. Hilborn, Naomi Hinchen, and Andrew 'Zarf' Plotkin for play testing this game. Their repeated efforts to both solve things and break things helped make it better.[paragraph break]If you've not played parser-based interactive fiction before (or you get stuck) you may want to try typing 'hint'.".

Hinting is an action applying to nothing. Understand "hint" as hinting. Understand "help" as hinting.
Carry out hinting:
	now Cinnamon is busy;
	now Sugar is busy;
	say "So, you need to find your way back out through that door. You probably knew that already. There are lots of things you can do in this game to help you achieve that goal. It understands lots of verbs. Besides the ubiquitous list of 'look' (l), 'examine' (x), 'inventory' (i), 'go north' (n), 'go south' (s), 'go east' (e), 'go west' (w) 'go northeast' (ne), 'go northwest' (nw), 'go southeast' (se), 'go southwest' (sw), 'go up' (u), 'go down' (d), 'again' (g) and the common list of 'ask', 'climb', 'drop', 'eat', 'enter', 'exit', 'get', 'give', 'listen', 'offer', 'pick up', 'press', 'pull', 'push', 'read', 'restore', 'save', 'say', 'search', 'smell', 'taste', 'tell', 'touch', 'turn', 'undo', and 'wait', there are lots of other less common verbs like 'dance', 'dig', 'feed', 'jump', 'laugh', 'pat', 'play', 'sing', and others besides that may help. You can request that another character perform an action by entering that character's name followed by a comma followed by the action you'd like that character to perform. For example, 'Sugar, dance' asks Sugar to dance. Be aware that sometimes characters will respond differently to the same request issued at different times based upon varying conditions.[paragraph break]If at any point you get really stuck, don't be afraid to sit back and 'think'.".

Understand "lick [something]" as tasting.

Understand "climb onto [something]" as entering.
Understand "climb up [something]" as climbing.
Understand "climb down [something]" as down.
Does the player mean climbing the pedestal: it is very likely.
Does the player mean climbing the wall: it is likely.
Does the player mean climbing the chasm: it is likely.
Does the player mean climbing a ferret: it is very unlikely.

Understand "feed [something]" as giving it to.
Understand "feed [someone] [something]" as giving it to.
Does the player mean giving the kibble to a ferret: it is very likely.

Xyzzying is an action applying to nothing. Understand "xyzzy", "plugh", and "plover" as xyzzying.
Carry out xyzzying:
	if a random chance of 1 in 2 succeeds:
		now noun is Cinnamon;
	otherwise:
		now noun is Sugar;
	say "[Noun] uses [their] fore paws to wipe [their] face.";
	now noun is busy.

The grouping announce items from multiple object lists rule is listed instead of the announce items from multiple object lists rule in the action-processing rules.

This is the grouping announce items from multiple object lists rule:
	if not multiply-entertaining:
		if the current item from the multiple object list is not nothing, say "[current item from the multiple object list]: [run paragraph on]".

The playing-trick is a trick. It is unknown.
Multiply-entertaining is an action applying to touchable things. Understand "entertain [things]", "play with [things]", and "play tag with [things]" as multiply-entertaining.
Carry out multiply-entertaining:
	let L be the multiple object list;
	repeat with item running through L:
		alter the multiple object list to {};
	if Sugar is in the Ferret-Gateway and Cinnamon is in the Ferret-Gateway:
		if the relationship of Sugar > 1 and the relationship of Cinnamon > 1:
			now playing-trick is known;
			increase the relationship of Sugar by 1;
			increase the relationship of Cinnamon by 1;
			now Sugar is busy;
			now Cinnamon is busy;
			say "The ferrets join in and play tag with you.";
		otherwise:
			say "They don't both know you well enough yet.";
	otherwise:
		say "For a big game of tag, both ferrets need to be in a place where they can play.";
	rule fails;
	stop the action.

Entertaining is an action applying to one touchable thing. Understand "entertain [someone]", "play with [someone]", and "play tag with [someone]" as entertaining.
Carry out entertaining:
	if the relationship of noun > 1:
		if the noun is in the trim:
			say "[Noun] can't play tag when [they] is in the tube.";
		otherwise if the noun is on a platform:
			say "[Noun] can't play tag when on a platform.";
		otherwise if the player has the noun:
			say "[Noun] hops down and starts playing tag with you.";
			now playing-trick is known;
			now noun is in the Ferret-Gateway;
			increase the relationship of noun by 1;
			now noun is busy;
		otherwise:
			say "[Noun] joins in and plays tag with you.";
			now playing-trick is known;
			increase the relationship of noun by 1;
	otherwise:
		say "[Noun] doesn't know you well enough to play yet.";
	now noun is busy.

Persuasion rule for asking a ferret to try entertaining:
	if the relationship of person asked > 1:
		if a random chance of 2 in 3 succeeds:
			if the person asked is in the trim:
				say "[Person asked] can't play tag when [they] is in the tube.";
			otherwise if the person asked is on a platform:
				say "[Person asked] can't play tag when on a platform.";
			otherwise if the player has the person asked:
				say "[Person asked] hops down and plays tag with you.";
				increase the relationship of person asked by 1;
				now person asked is in the Ferret-Gateway;
			otherwise:
				say "[Person asked] plays tag with you.";
				increase the relationship of person asked by 1;
		otherwise:
			say "[Person asked] doesn't seem to want to play at the moment.";
	otherwise:
		say "[Person asked] doesn't know you well enough yet.";
	now person asked is busy;
	persuasion fails.

The dooking-trick is a trick. It is unknown.
Dooking is an action applying to nothing. Understand "dook", "laugh", and "say dook" as dooking.
Carry out dooking:
	now dooking-trick is known;
	if a random chance of 1 in 2 succeeds:
		now noun is Cinnamon;
	otherwise:
		now noun is Sugar;
	say "You laugh heartily. [Noun] [one of]looks at you with amusement[or]laughs a 'dook, dook, dook' back at you[or]dances a silly little dance[at random].";
	now noun is busy.

Persuasion rule for asking a ferret to try dooking:
	if the relationship of person asked > 1:
		if a random chance of 2 in 3 succeeds:
			say "[Person asked] dooks with you.";
			increase the relationship of person asked by 1;
		otherwise:
			say "[Person asked] isn't in the right mood at the moment.";
	otherwise:
		say "[Person asked] doesn't know you well enough yet.";
	now person asked is busy;
	persuasion fails.

The singing-trick is a trick. It is unknown.
Singing is an action applying to nothing. Understand "sing" and "hum" and "croon" as singing.
Carry out singing:
	now singing-trick is known;
	say "Both ferrets [one of]listen with rapt attention as you perform[or]seem to enjoy your singing[or]listen closely to your singing; they're an enthusiastic audience[at random].";
	now Sugar is busy;
	now Cinnamon is busy;
	if the relationship of Cinnamon > 2:
		increase the relationship of Cinnamon by 1;
	if the relationship of Sugar > 2:
		increase the relationship of Sugar by 1.
	
Dancing is an action applying to nothing. Understand "dance" and "jig" as dancing.
Carry out dancing:
	now Sugar is busy;
	now Cinnamon is busy;
	say "Both ferrets [one of]look at you a little oddly as you attempt to dance[or]watch your dance moves with interest[or]relax while you dance[at random].".

Persuasion rule for asking a ferret to try dancing:
	if the relationship of person asked > 1:
		if the person asked is on the pedestal:
			say "[Person asked] is on a platform and can't dance right now.";
			decrease the relationship of the person asked by 1;
		otherwise if the person asked is in the trim:
			say "[Person asked] is in the tube and can't dance right now.";
			decrease the relationship of the person asked by 1;
		otherwise if the player has the person asked:
			say "[Person asked] can't dance when being held.";
		otherwise if a random chance of 1 in 2 succeeds:
			say "[Person asked] [one of]performs the weasel war dance[or]dances with the sort of freely chaotic joy only a ferret can exhibit[at random].";
			increase the relationship of the person asked by 1;
		otherwise:
			say "[Person asked] isn't in the right mood for a dance right now.";
	otherwise:
		say "[Person asked] doesn't know you well enough yet.";
	now person asked is busy;
	persuasion fails.

Persuasion rule for asking a ferret to try climbing:
	if the noun is the mesh or the noun is the pedestal or the noun is the eastern-platform:
		if the relationship of person asked > 2:
			if the person asked is on the eastern-platform:
				say "[Person asked] climbs down the thin mesh.";
				now person asked is in Ferret-Gateway;
			otherwise if the person asked is on the western-platform:
				say "There's no way for [Person asked] to climb down from there.";
			otherwise if the person asked is in the Ferret-Gateway:
				say "[Person asked] climbs the thin mesh.";
				now person asked is on eastern-platform;
				place person asked in scope;
			otherwise:
				say "[Person asked] can't reach the mesh from where [they] is right now.";
		otherwise:
			say "[Person asked] doesn't know you well enough yet.";
	otherwise:
		say "That doesn't look like a useful thing to climb.";
	now person asked is busy;
	persuasion fails.
Does the player mean asking someone to try climbing the pedestal: it is very likely.
Does the player mean asking someone to try climbing the mesh: it is very likely.
Does the player mean asking someone to try climbing the wall: it is likely.
Does the player mean asking someone to try climbing the chasm: it is likely.
Does the player mean asking someone to try climbing a ferret: it is very unlikely.

Instead of asking a ferret (called the fuzzy) to try target-jumping:
	try asking the person asked to try jumping.
Does the player mean asking someone to try target-jumping a platform: it is likely.
Does the player mean asking someone to try target-jumping a ferret: it is very unlikely.

Persuasion rule for asking a ferret to try jumping:
	if the relationship of person asked > 3:
		if the person asked is on the eastern-platform:
			if the person asked is Sugar:
				say "Sugar [first time]gauges the distance to the other platform and thinks better of jumping. She [only]gives you an accusing look.";
			otherwise:
				say "[Person asked] [first time]looks across the span between the platforms, [only]coils back[first time],[only] and takes a mighty leap across.[paragraph break]You hear a faint 'click' from the gateway when [they] lands.";
				now western-platform is known;
				increment-digit 3;
				increment-digit 5;
				now person asked is on the western-platform;
				place person asked in scope;
		otherwise if the person asked is on the western-platform:
			say "[Person asked] [one of]boldly[or]bravely[or]gracefully[at random] jumps back to the eastern platform.[paragraph break]You hear a faint 'click' from the gateway when [they] lands.";
			now eastern-platform is known;
			increment-digit 1;
			now person asked is on the eastern-platform;
			place person asked in scope;
		otherwise if the person asked is in the trim:
			say "There's no room to jump in the trim.";
			decrease relationship of person asked by 1;
		otherwise if the player has the person asked:
			say "[Person asked] can't jump when being held.";
		otherwise:
			say "[Person asked] jumps in place with a lively vigor.";
	otherwise:
		say "[Person asked] doesn't know you well enough yet.";
	now person asked is busy;
	persuasion fails;

Persuasion rule for asking a ferret to try going down:
	if the person asked is on the western-platform:
		say "There's no way for [Person asked] to climb down from there. [They] has to get back to the eastern platform first.";
	otherwise if the person asked is on the eastern-platform:
		say "[Person asked] climbs down the thin mesh.";
		now person asked is in Ferret-Gateway;
	otherwise if the player has the person asked:
		say "[Person asked] hops out of your arms.";
		now person asked is in Ferret-Gateway;
	otherwise:
		say "[Person asked] isn't on top of anything.";
	now person asked is busy;
	persuasion fails;

Persuasion rule for asking a ferret to try going up:
	if the person asked is in the Ferret-Gateway:
		say "[Person asked] looks a little confused. Maybe you could ask [them] to climb something specific instead?";
	otherwise:
		say "[Person asked] can't go that way.";
	now person asked is busy;
	persuasion fails;

Persuasion rule for asking a ferret to try entering:
	if the noun is the trim:
		if the relationship of person asked > 3:
			if the person asked is not in the Ferret-Gateway:
				say "[Person asked] can't reach the tube from where [they] is right now.";
			otherwise if the person asked is Cinnamon:
				say "Cinnamon [first time]pokes at the trim access opening with his nose and seems to get its measure using his whiskers as a guide. He [only]turns and looks at you as if to say 'isn't it obvious I can't fit in here?'";
			otherwise:
				say "[Person asked] squeezes through the access opening into the trim.";
				now person asked is inside the trim;
		otherwise:
			say "[Person asked] doesn't know you well enough yet.";
	otherwise if the noun is the hole:
		if the relationship of the person asked > 2:
			if the person asked is not in the Ferret-Gateway:
				say "[Person asked] can't reach the hole from where [they] is right now.";
			otherwise if the person asked is Cinnamon:
				say "Cinnamon [first time]stretches over the trim and tests the hole with his nose. It's pretty clear he's too big to enter. He [only]gives you a look that makes you feel slightly silly for even asking.";
			otherwise:
				say "[Person asked] stretches over the trim, squeezes [their] nose into the hole, and comes right back out again[first time], shakes her head, and sneezes[only]. [paragraph break]You hear a faint 'click' from the gateway.";
				now hole is known;
				increment-digit 4;
		otherwise:
			say "[Person asked] doesn't know you well enough yet.";
	otherwise:
		say "That doesn't look like a useful thing to enter.";
	now person asked is busy;
	persuasion fails.
Does the player mean asking someone to try entering the hole: it is very likely.
Does the player mean asking someone to try entering the trim: it is very likely.
Does the player mean asking someone to try entering a ferret: it is very unlikely.

Instead of asking a ferret (called the fuzzy) to try searching the hole:
	try asking the person asked to try entering the hole.
Does the player mean asking someone to try searching the hole: it is very likely.
Does the player mean asking someone to try searching a ferret: it is unlikely.

Persuasion rule for asking a ferret to try exiting:
	if the person asked is in the trim:
		say "[Person asked] comes back out of the trim.";
		now person asked is in the Ferret-Gateway;
	otherwise:
		say "[Person asked] isn't in anything.";
	now person asked is busy;
	persuasion fails.

Persuasion rule for asking a ferret to try going outside:
	if the person asked is in the trim:
		say "[Person asked] comes back out of the trim.";
		now person asked is in the Ferret-Gateway;
	otherwise:
		say "[Person asked] isn't in anything.";
	now person asked is busy;
	persuasion fails.

Persuasion rule for asking a ferret to try going south:
	if the person asked is in the trim:
		say "[Person asked] comes back out of the trim.";
		now person asked is in the Ferret-Gateway;
	otherwise:
		say "[Person asked] can't go that way.";
	now person asked is busy;
	persuasion fails.

Instead of asking a ferret (called the fuzzy) to try switching on the switch:
	try asking the person asked to try pushing the switch.

Instead of asking a ferret (called the fuzzy) to try switching on the lever:
	try asking the person asked to try pulling the lever.

Persuasion rule for asking a ferret to try pushing:
	if the relationship of person asked > 2:
		if noun is the switch:
			if the person asked is in the trim:
				say "[Person asked] presses the switch.[paragraph break]You hear a faint 'click' from the gateway.";
				now switch is known;
				increment-digit 5;
			otherwise:
				say "[Person asked] can't reach the switch from where [they] is right now.";
		otherwise:
			say "Pressing that doesn't do much of anything.";
	otherwise:
		say "[Person asked] doesn't know you well enough yet.";
	now person asked is busy;
	persuasion fails.
Does the player mean asking someone to try pushing the switch: it is very likely.
Does the player mean asking someone to try pushing a ferret: it is very unlikely.

Persuasion rule for asking a ferret to try pulling:
	if the relationship of person asked > 2:
		if noun is the lever:
			if the person asked is in the trim:
				say "[Person asked] pulls the lever with [their] teeth and releases it.[paragraph break]You hear a faint 'click' from the gateway as the lever bounces back to its original position.";
				now lever is known;
				increment-digit 3;
			otherwise:
				say "[Person asked] can't reach the lever from where [they] is right now.";
		otherwise:
			say "Pulling that doesn't do much of anything.";
	otherwise:
		say "[Person asked] doesn't know you well enough yet.";
	now person asked is busy;
	persuasion fails.
Does the player mean asking someone to try pulling the lever: it is very likely.
Does the player mean asking someone to try pulling a ferret: it is very unlikely.

Persuasion rule for asking a ferret to try going east:
	if the relationship of person asked > 1:
		if the person asked is on the western-platform:
			say "[Person asked] can't fly. Perhaps [they] could jump?";
		otherwise:
			say "[Person asked] can't go that way.";
	otherwise:
		say "[Person asked] doesn't know you well enough yet.";
	now person asked is busy;
	persuasion fails.

Persuasion rule for asking a ferret to try going west:
	if the relationship of person asked > 1:
		if the person asked is on the eastern-platform:
			say "[Person asked] can't fly. Perhaps [they] could jump?";
		otherwise:
			say "[Person asked] can't go that way.";
	otherwise:
		say "[Person asked] doesn't know you well enough yet.";
	now person asked is busy;
	persuasion fails.

Persuasion rule for asking a ferret to try going north:
	if the person asked is in the trim:
		say "[Person asked] presses the switch.";
		increment-digit 5;
	otherwise:
		say "[Person asked] can't go that way.";
	now person asked is busy;
	persuasion fails.

Persuasion rule for asking a ferret to try searching:
	if the relationship of person asked > 2:
		if noun is the dirt:
			if the person asked is in the Ferret-Gateway:
				say "[Person asked] digs through the dirt and uncovers a small knob set into the ground.";
				now knob is in the Ferret-Gateway;
			otherwise:
				say "[Person asked] can't reach the dirt from where [they] is right now.";
		otherwise:
			say "[Person asked] doesn't find anything of interest.";
	otherwise:
		say "[Person asked] doesn't know you well enough yet.";
	now person asked is busy;
	persuasion fails.
Does the player mean asking someone to try searching the dirt: it is likely.
Does the player mean asking someone to try searching the hole: it is likely.
Does the player mean asking someone to try searching a ferret: it is very unlikely.

Persuasion rule for asking a ferret to try turning:
	say "[Person asked] gives you a questioning look. [They] realizes that turning things is something better suited to human hands than ferret paws.";
	now person asked is busy;
	persuasion fails.
Does the player mean asking someone to try turning the knob: it is likely.
Does the player mean asking someone to try turning a ferret: it is very unlikely.

[Sugar]
Sugar is a champagne jill in the Ferret-Gateway. Sugar has an eating style "daintily". The description of it is "A nimble champagne ferret, Sugar is smaller and lighter in color than Cinnamon. She moves with the lithe grace of an acrobat, and she looks at you with gentle eyes that show wisdom as well as playfulness.[first time] Maybe she's more lilac than champagne; you've always found it difficult to tell.[only]".

[Cinnamon]
Cinnamon is a sable hob in the Ferret-Gateway. The description of it is "A mischievous sable ferret, Cinnamon is larger and darker than Sugar. His eyes reveal an intelligence and understanding that are at first hidden by his boisterous personality and active behavior.[first time] Maybe he's more chocolate than sable; you've always found it difficult to tell.[only]".

[Number or Placeholder]
To decide which text is number-or-placeholder (digit - number):
	if digit >= 0 and digit <= 9:
		decide on "[digit]";
	otherwise:
		decide on "?";

[Increment Digit]
To increment-digit (entrynum - number):
	increase entry entrynum of the digits of the readout by 1;
	if entry entrynum of the digits of the readout > 9:
		now entry entrynum of the digits of the readout is 0;
	if entry 1 of the digits of the readout is 3 and entry 2 of the digits of the readout is 1 and entry 3 of the digits of the readout is 4 and entry 4 of the digits of the readout is 1 and entry 5 of the digits of the readout is 6:
		say "You hear a second, louder 'click' from the gateway.";
		now gateway is unlocked.

[Readout Reading]
To say readout-reading:
	[say "[unicode 9675] [unicode 9711] / [unicode 247] [unicode 124] [unicode 8776] [number-or-placeholder (entry 1 of the digits of the readout)] . [number-or-placeholder (entry 2 of the digits of the readout)] [number-or-placeholder (entry 3 of the digits of the readout)] [number-or-placeholder (entry 4 of the digits of the readout)] [number-or-placeholder (entry 5 of the digits of the readout)]";]
	say "[unicode 9711] [unicode 247] [unicode 124] [unicode 8776] [number-or-placeholder (entry 1 of the digits of the readout)] . [number-or-placeholder (entry 2 of the digits of the readout)] [number-or-placeholder (entry 3 of the digits of the readout)] [number-or-placeholder (entry 4 of the digits of the readout)] [number-or-placeholder (entry 5 of the digits of the readout)]";

[Testing]
Test Cinnamon-befriend with "x Cinnamon/press dispenser/give kibble to Cinnamon/pat Cinnamon/push dispenser/feed kibble to Cinnamon/press dispenser/offer kibble to Cinnamon/pat Cinnamon/push button/feed Cinnamon kibble".
Test Sugar-befriend with "x Sugar/press dispenser/offer kibble to Sugar/pat Sugar/push dispenser/feed Sugar kibble/press dispenser/give kibble to Sugar/pat Sugar/press button/feed kibble to Sugar".
Test push-switch with "test Sugar-befriend/sugar, enter trim/sugar, push switch".
Test go-platform with "test Cinnamon-befriend/cinnamon, climb pedestal/cinnamon, jump".
Test do-Cinnamon-part with "test go-platform/cinnamon, jump/g/g/g/g/g/g/cinnamon, down/x readout".
Test do-Sugar-part with "test push-switch/sugar, press switch/g/sugar, pull lever/sugar, exit/sugar, enter hole/g/sugar, dig patch/x readout".
Test solve-it with "x pedestal/x wall/x chasm/x ledge/x door/think/test do-Cinnamon-part/think/test do-Sugar-part/think/sing/play with ferrets/turn knob/g/think/x readout/x door/open door/x door/think".
