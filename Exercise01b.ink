/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/


-> cave_mouth

== cave_mouth ==
You are at the entrance to a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west.
+[Take the east tunnel] -> east_tunnel
+[Take the west tunnel] -> west_tunnel
*[Pick up the torch] -> torch_pickup 



== east_tunnel == 
You are in the east tunnel. It is very dark, you can't see anything.

* {torch_pickup} [Light Torch] -> east_tunnel_lit 
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west. It is very dark, you can't see anything.
* {torch_pickup} [Light Torch] -> west_tunnel_lit 
+ [Go Back] -> cave_mouth
-> END



=== torch_pickup ===
You now have a torch. May it light the way.
+ [Go Back] -> cave_mouth
-> END


== east_tunnel_lit == 
The light of your torch glints off of the thousands of coins in the room.
-> END




== west_tunnel_lit==
The light of your torch reveals a long cave path.
+[Continue down the cave] -> west_tunnel_path
+[Go Back] -> west_tunnel
-> END

==west_tunnel_path==
You are at the end of the path. {not pulled_sword:You find a sword stuck in the ground.}
*[Pick up the Sword] -> pulled_sword
+[Continue Down the Cave] -> west_tunnel_continued
+[Go Back] -> west_tunnel_lit
->END

== pulled_sword ==
You now have a sword.
+[Go Back] -> west_tunnel_path
-> END

== west_tunnel_continued ==
You encounter a dangerous creature coming your way.{not pulled_sword: You don't have a weapon}.
+[Go Back] -> west_tunnel_path
*{pulled_sword} [Use Sword to Attack] -> attack_creature
-> END

== attack_creature == 
You used your sword to take out the creature.
-> END








