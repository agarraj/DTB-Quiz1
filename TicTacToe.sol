// this is main file

pragma solidity ^0.4.24;

contract TTT
{
    uint8[] _board = new uint8[](9);
    address _owner;
    
    address p1;
    address p2;

    bool _openSlots = true;
    bool _gameInProgress = false;

    uint8 _playerTurn;
    uint _winner;

    uint[][] _winStates = [[0,1,2],[3,4,5],[6,7,8], 
                          [0,3,6],[1,4,7],[2,5,8], 
                          [0,4,8],[2,4,6]];
                          
    constructor()
    public {
        _owner = msg.sender;
    }

}
