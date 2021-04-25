pragma solidity 0.8.4;

contract CardModel {
    enum CardType {Trap, Magic, Normal}
    enum MonsterType {
        Fairy,
        Water,
        Beast,
        WarriorBeast,
        Dinosaur,
        DivineBeast,
        Dragon,
        Angel,
        Mage,
        Demon,
        Fish,
        Bug,
        Machine,
        Plant,
        Pyro,
        Reptile,
        Rock,
        SeaSerpent,
        Thunder,
        Warrior,
        WingedBeast,
        Zombie,
        Psychic
    }
    struct Card {
        CardType cardType;
        MonsterType monterType;
        uint256 attack;
        uint256 defense;
        string name;
    }
}
