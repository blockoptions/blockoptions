/*  2 Minute bet */
//DOWN Contract

pragma solidity ^0.4.0;

// using 
import "github.com/oraclize/ethereum-api/oraclizeAPI.sol";

contract betContractDOWN is usingOraclize
{

    event check1(address player,uint query1Result);
    event check2(address player,uint query2Result);
    event success (string status,address player);
    event OwnerFunding (string status,address owner);
    event playerResult(string result,address player, uint query1Result,uint query2Result);
    event stats(uint totalBets, uint total_amount_won , uint total_bets_won , uint win_rate );
    
    uint public DOWN_totalBets; // to store total no of bets
    uint public DOWN_etherWin; // total amount of ether Won by players
    uint public DOWN_winBets; // total no of bets 
    uint public DOWN_winRate; // to store win rate percentage
    uint public min_bet = 10000000000000000; //In wei
    uint public max_bet = 50000000000000000; //In wei
    
   struct Player
    {
    address playerAddress;
    uint playerbetvalue;
    bytes32 queryid1;
    bytes32 queryid2;
    uint queryResult1;
    uint queryResult2;
    }
  
   mapping (bytes32 => Player) Players;
 
    address owner;   //address owner of the contract

      // Functions with this modifier can only be executed by the owner
    modifier onlyOwner() {
       if (msg.sender != owner) {
         throw;
        }
       _;
     }
    
     function ()payable
     {
       if (msg.sender == owner)
       {
           OwnerFunding("Contract is funded", owner);
       }
       else
       {
       
       createBet();
       }
     }
     
    function createBet()payable
    {  
       if(msg.value > max_bet || msg.value < min_bet)
       {
           success("Invalid payment",msg.sender);
           msg.sender.transfer(msg.value - 2000);

       }
       else
       {
       success("payment received",msg.sender);
       bytes32 rngId1= oraclize_query("URL","json(https://min-api.cryptocompare.com/data/price?fsym=BTC&tsyms=USD).USD");
       
       Players[rngId1].playerAddress = msg.sender;
       Players[rngId1].playerbetvalue = msg.value;
       Players[rngId1].queryid1 = rngId1;
       Players[rngId1].queryid2 = 0;
       }
    }
    
    function betContractDOWN()payable
    {
        owner = msg.sender;
    }
    
      function __callback(bytes32 myid, string result)
      {
    if (msg.sender != oraclize_cbAddress())
         {
      // just to be sure the calling address is the Oraclize authorized one
      throw;
         }
    
     
        if (Players[myid].queryid1==myid && Players[myid].queryid2 == 0)
        {
            
             Players[myid].queryResult1 = stringToUint(result);
             check1(Players[myid].playerAddress,Players[myid].queryResult1);
             bytes32 rngId2= oraclize_query(20,"URL","json(https://min-api.cryptocompare.com/data/price?fsym=BTC&tsyms=USD).USD");
           
            Players[myid].queryid1=0;
            Players[rngId2].queryid1=0;
            Players[rngId2].playerAddress=Players[myid].playerAddress;
            Players[rngId2].playerbetvalue = Players[myid].playerbetvalue;
            Players[rngId2].queryResult1=Players[myid].queryResult1;
            Players[rngId2].queryid2=rngId2;
            
        }
        else if(Players[myid].queryid2==myid && Players[myid].queryid1==0)
        {
            
            /* the result is checked based on the results  
         fetched in call back function */
          
            Players[myid].queryResult2 = stringToUint(result);
            check2(Players[myid].playerAddress,Players[myid].queryResult2);
         // just a quality check of values returned from stringToUint
        if(Players[myid].queryResult1 < 1000){Players[myid].queryResult1=Players[myid].queryResult1*100;}
        if(Players[myid].queryResult1< 10000){Players[myid].queryResult1=Players[myid].queryResult1*10;}
        if(Players[myid].queryResult2 < 1000){Players[myid].queryResult2=Players[myid].queryResult2*100;}
        if(Players[myid].queryResult2 < 10000){Players[myid].queryResult2=Players[myid].queryResult2*10;}
        
        if(Players[myid].queryResult1  > Players[myid].queryResult2)
        {
            //player wins
            DOWN_totalBets++;
            DOWN_winBets++;
            DOWN_winRate = DOWN_winBets*10000/DOWN_totalBets; // Must be DIVIDED BY 100 when displayed on frontend
            DOWN_etherWin = DOWN_etherWin+((Players[myid].playerbetvalue *75)/100);
            playerResult("WIN",Players[myid].playerAddress,Players[myid].queryResult1,Players[myid].queryResult2);
            winnerReward(Players[myid].playerAddress,Players[myid].playerbetvalue);
        }
        else if(Players[myid].queryResult1 < Players[myid].queryResult2)
        {
            //player loses
            DOWN_totalBets++;
            DOWN_winRate = DOWN_winBets*10000/DOWN_totalBets; 
            playerResult("LOSE", Players[myid].playerAddress,Players[myid].queryResult1,Players[myid].queryResult2);
            loser(Players[myid].playerAddress);
        }
        else if(Players[myid].queryResult1 == Players[myid].queryResult2)
        {
            DOWN_totalBets++;
            DOWN_winRate = DOWN_winBets*10000/DOWN_totalBets;
            //bet draws if the price neither goes up nor down
            playerResult("DRAW",Players[myid].playerAddress,Players[myid].queryResult1,Players[myid].queryResult2);
            draw(Players[myid].playerAddress,Players[myid].playerbetvalue);
        }
        }

      }
       
    function winnerReward(address player,uint betvalue) payable
    {
        uint winningAmount = (betvalue * 175)/100;
        player.transfer(winningAmount);
        stats(DOWN_totalBets,DOWN_etherWin,DOWN_winBets,DOWN_winRate);
    }
    
    function loser(address player) payable
    {
        player.transfer(1);
        stats(DOWN_totalBets,DOWN_etherWin,DOWN_winBets,DOWN_winRate);
    }
    function draw(address player,uint betvalue) payable
    {
        player.transfer(betvalue);
        stats(DOWN_totalBets,DOWN_etherWin,DOWN_winBets,DOWN_winRate);
    }
    
  /* Failsafe drain - owner can withdraw all the ether from the contract
  */
	function drain()payable onlyOwner 
	{
		owner.transfer(this.balance);
	}
	
	function setMinBet(uint newMinBet) onlyOwner
	{
	    min_bet = newMinBet;
	}
	
	function setMaxBet(uint newMaxBet) onlyOwner
	{
	    max_bet = newMaxBet;
	}
	//Below function will convert string to integer removing decimal
	  function stringToUint(string s) returns (uint) {
        bytes memory b = bytes(s);
        uint i;
        uint result1 = 0;
        for (i = 0; i < b.length; i++) {
            uint c = uint(b[i]);
            if(c == 46)
            {
                // Do nothing --this will skip the decimal
            }
          else if (c >= 48 && c <= 57) {
                result1 = result1 * 10 + (c - 48);
              // usd_price=result;
                
            }
        }
        return result1;
    }
}