At first I want to make a blind sketch game. But towards the half of the project I thought it was actually boring so I decided to make a game that looks like
the "Flappy Bird". The rule of the new game is to lead the bird, using the mouse, across the screen without getting hit by the moving barriers. 


**First Draft:**
When doing the first draft, I wanted to create the barriers as the "balls in motion", just like what we learned from week 3. But then I realized we only learned how to use the float gravity. As the result, the ball can only bounce up and down with decreasing velocity. Here I referred to the example from "Bouncy Bubbles" on processing references, which includes float spring and float friction. What's more, with functions like "collide", "move", and "display", the moving barriers became
more bouncy. 


**Second Draft:**
I tried to run the first draft and found many problems: 
1. Processing kept saying there is no class for barrier while there actually is ➡️ the class was included within void.draw, specifically within page 2, but the function shouldn't be limited to one page, especially we want the bird and barriers to interact with each other. So I took the class out as global - the same as void.setup and void.draw. Same thing applies to keyReleased.
2. Neither the bird nor barriers is moving the first time I ran it ➡️ I tried to use println to find out why. Turned out the velocity is too slow.
3. After these two can move, they can't hit each other, which means the game cannot finish. I can't test the rest of the game (result page + restart) ➡️ still trying to figure out.
4. The music is not on for the whole game ➡️ it's loading all the time.

**Final Draft:**
I understood why the bird cannot collide with barriers - it wasn't stated outside the class so the function couldn't work. I also clean up some useless codes. I also figured out a few problem in logic of the code (mentioned in the thrid bullet point under *Challenge*) and solved them.

*Learned:*
- gfu

*Challenge:*
- One of the challenge in making the game comes from the barriers. I need to look into the sine/cosine/some other equations, which is quite confusing. I asked my cs-major friends on this part. It was helpful.
- My working process is to throw everything on the processing first and then rearrange them. I had a hard time re-organizing because the codes looked very messy.
It would be so much easier to be organized from the beginning.
- The biggest drawback of the code is the logic -- the bird's position is controlled by the mouse -- if users put their mouse on the right side of the screen, they would win the game wihtout even playing it. Same thing applies to who accidently put their mouse on the same position of a random barrier -- then they lose the 
game without playing. To improve, I tried to set a starting point for the bird and let barriers enter from the right side of the screen, so they won't overlap with each other at the beginning of the game. The rule of the game is something I should consider more carefully next time - didn't really think human-centered-ly.

*Reference:*

- https://processing.org/examples/bouncybubbles.html
- https://processing.org/examples/easing.html
