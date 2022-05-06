# Problem

Discuss in your teams what a decentralized version of a game like monopoly would be like, if there was no software on a central server.

Consider
* What are the essential pieces of functionality?
* How could people cheat?
* How could you prevent them from cheating?

This is just a general discussion, there's no need to write any code or o any detailed design.

# My Answer

* What are the essential pieces of functionality?
  - Randomly roll a dice
  - Open cards, rewards, and punishment based on the current state
  - Records each players move
  - Giving rewards to players
  - Giving punishments to players
  - All players have the same state

* How could people cheat?
  - If the dice results is not random and predictable, user can cheat
  - If people can't agree with the state it can results in chaos
  - If people coordinate a cheat and agree on making specific player in disadvantage by manipulating their results.
  - If players agree on state that benefit them but not agree on state that doesn't benefit them.

* How could you prevent them from cheating?
  - We should have a common world-view
  - We should have a good random function, maybe a VRF?
  - We should avoid 51% attack