## Choose your own eggy adventure

So, you are about to make breakfast. You have seen Gordon Ramsey's method
of making scrambled eggs. Your method works for you sometimes. You've
never tried Gordon's, but it seems pretty legit. You can make your own,
follow Gordon's recipe, or even call a friend.

[Gordon Ramsey's Scrambled Eggs](http://www.youtube.com/watch?v=PUP7U5vTMM0)

### What you have

* `game.rb` - run it with `ruby game.rb` to see what it does
* `story.txt` 
  * contains the story with its wacky format:
    * items started with something like `~p1` are the pages of the story
      book
    * items started with something like `~p1:c1:p2` are the prompts
    * when the user responds to a prompt, they get moved to the
      corresponding story point

### Instructions
Using story.txt as the file containing the story, implement a
choose-your-own-adventure style game. 

#### In story.txt:
* `~p1`, `~p2`, `~p3`, and `~p4` denote the pages of the
story book.  

* `~p1:c1:p2`, `~p1:c2:p3`, `~p1:c3:p4` denote the following format:

`~origin-page:choice-id:destination-page`

### The game should:

* Prompt the user to make one of the 3 choices in the file
* Output the end result of picking a specific choice
* Prompt the user to restart the game after the destination is reached
* Output the story to a text file

### As bonuses

* Add more pages and actions so there's more depth
* Allow undoing an action
* Display the path through the story when you reach an end page

### Super bonus

* Output the precise position in the story to a text file and restore
  state from that file when re-loading the game 
