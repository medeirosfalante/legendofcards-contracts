pragma solidity 0.4.25;


contract CardModel {

 struct Skills {
   uint32 attack;
   uint32 defense;
 } 

 struct Card {
  uint8 typeCard;
  Skills skill;
 }
}
