pragma solidity ^0.4.24;

contract TicTacToe {
    uint[] board = new uint[](9);
    address player1;
    address player2;
    uint start = 0;
   
   
    //This makes sure that quizMaster cannot become a particiant
    modifier notPlayer1(){
        require(msg.sender!=player1,"Player1 cannot become a Player2");
    _;}
   
    constructor ()
    public
    {
        player1 = msg.sender;
    }
   
    function joinGame()
    public
    notPlayer1()
    {
        player2 = msg.sender;
    }
   
    uint[][]  winning_Positions = [[0,1,2],[3,4,5],[6,7,8], [0,3,6],[1,4,7],[2,5,8], [0,4,8],[2,4,6]  ];
   
    function checkWinner()
    public
    constant
    returns (uint)
    {
        for(uint i =0; i < 8;i++){
            uint[] memory b = winning_Positions[i];
            if(board[b[0]] != 0 && board[b[0]] == board[b[1]] && board[b[0]] == board[b[2]])
                return board[b[0]];
        }

   
        return 0;
    }
