pragma solidity 0.4.25;


contract CardModel {

 enum CardType { Trap, Magic, Normal }
 enum MonsterType { Fairy, Fairy, Water, Beast, WarriorBeast, Dinosaur, DivineBeast, Dragon, Angel, Mage, Demon, Fish, Bug, Machine, Plant, Pyro, Reptile, Rock, SeaSerpent, Thunder, Warrior, WingedBeast, Zombie, Psychic }
 struct Card {
  CardType Type;
  MonsterType monterType;
  uint attack;
  uint defense;
 }
}
