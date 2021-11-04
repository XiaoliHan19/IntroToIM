**Unusual Switch**

For this assignment, I was inspired when trying to take one tea bag from the tea box -- When the tea box is closed, the light is blue, indicating the switch is on; while yellow light means tea box is open, therefore the switch is off. By looking at the color of the LED light, one can tell if any tea bag is taken. For the materials, I went to IM Lab to pick up some copper tapes and stuck wires to the tea box. 

<img width="681" alt="SwitchOff" src="https://user-images.githubusercontent.com/89835320/140259347-40c5b443-7a4c-4847-8d08-6f0f8025d67d.png">(This was wrong)

However, only the yellow light is on, meaning the switch is off. I first considered the possibility that if my materials were not conductive enough. So I wrapped them with more aluminum foil. But the switch is still not on. Maybe it's the problem of the curcuit. I went over the notes and looked at the circuit again. I found out that there are some redundant meaningless wire. So this time I tried to draw the schematics first.

<img width="440" alt="截屏2021-11-04 下午9 50 29" src="https://user-images.githubusercontent.com/89835320/140392736-07f8fd49-bb99-494c-a683-7efc280e2eb6.png">

I built a new circuit based on the schematics, and it looks like this:

<img width="460" alt="截屏2021-11-04 下午9 54 57" src="https://user-images.githubusercontent.com/89835320/140393465-7fa036f6-fe4b-44f2-b13f-f03e9aeca1fe.png">

Here are two pictures demonstrating how it works:

<img width="1374" alt="截屏2021-11-04 下午10 04 06" src="https://user-images.githubusercontent.com/89835320/140394926-e3ce31ad-5116-440d-9dbd-cba746a25e7c.png">

<img width="1321" alt="截屏2021-11-04 下午10 04 37" src="https://user-images.githubusercontent.com/89835320/140394916-65ffcd1d-e391-42c5-9682-112660d96349.png">



*Challenge*

- I ended up spent more time debugging than building my circuit. If I could draw schematics before building the circuit, that will probably save some times. 
- There is one problem that still yet to solve until the end -- it takes noticely long time for LED lights to change color. At first I thought maybe the material is not conductive enough. Actually there are still space between two copper tape so that might be one reason. I have to press the box tightly. But in a few cases where they tightly clung to each other, it was still not smart enough to sense that. I'll have to keep looking into that.


