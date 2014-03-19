# Train system

#### Make a program to map a train system. It should allow trains system operators to add and update information, and train riders to get information out.

* For this lesson, to describe the features I want you to build, I'm going to write user stories. User stories are a way of describing a feature that breaks functionality down into the smallest possible pieces and clearly communicates the use case, functionality, and benefit.

* The general format of a story is: "As a [role], I want to [functionality], so that [benefit]."

Here are the user stories for your MVP:

* As a train system operator, I want to add train stations, so that I can show where all of the trains will go.
* As a train system operator, I want to add train lines, so that I can track which lines go to which stations.
* As a train rider, I want to view a train line, so that I can see the stations where it stops.
* As a train rider, I want to view a train station, so that I can see which trains come to it.
* There's a many-to-many relationship between stations and lines. I'd suggest calling your join table stops.

* When you want to list out the lines at a particular station, you'll need to start by selecting all of the stops for that station, and then selecting all of the lines for those stops. (If you're more familiar with SQL, you can use a join, which is different than ajoin table, but if not, we'll have a lesson on joins tonight.)

* After you finish the above stories, flesh out the CRUD operations for each of the classes in your program.

* If you have time, write and implement user stories for a timetable that shows what time each train stops at each stop.

###### Epicodus Week 5 Day 3
