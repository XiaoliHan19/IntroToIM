At first I want to make a blind sketch game. But towards the half of the project I thought it was actually boring so I decided to make a game that looks like
the "Flappy Bird". The rule of the new game is to lead the bird, using the mouse, across the screen without getting hit by the moving barriers. 


**First Draft:**
When doing the first draft, I wanted to create the barriers as the "balls in motion", just like what we learned from week 3. But then I realized we only learned how to use the float gravity. As the result, the ball can only bounce up and down with decreasing velocity. Here I referred to the example from "Bouncy Bubbles" on processing references, which includes float spring and float friction. What's more, with functions like "collide", "move", and "display", the moving barriers became
more bouncy. 


**Second Draft:**
I tried to run the first draft and found many problems: 
1. Processing kept saying there is no class for barrier while there actually is ➡️ the class was included within void.draw, specifically ertyuikjbvcdsedcvbnjkol,mnb
2. Neither the bird nor barriers is moving the first time I ran it ➡️
3. After these two can move, they can't hit each other, which means the game cannot finish. I can't test the rest of the game (result page + restart) ➡️
4. The music is not on for the whole game ➡️

**Final Draft:**

*Learned:*
- gfu

*Challenge:*
- One of the challenge in making the game comes from the barriers. I need to look into the sine/cosine/some other equations, which is quite confusing.
- My working process is to throw everything on the processing first and then rearrange them. I had a hard time re-organizing because the codes looked very messy.
It would be so much easier to be organized from the beginning.
-

Reference:

https://processing.org/examples/bouncybubbles.html

https://processing.org/examples/easing.html
