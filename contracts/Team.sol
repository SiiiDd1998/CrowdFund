pragma solidity 0.4.25;

contract Teams {
    
    struct Team {
        string TeamName;
        string firstMemberName;
        string secondMemberName;
        string thirdMemberName;
        string fourthMemberName;
        uint firstcid;
        uint secondcid;
        uint thirdcid;
        uint fourthcid;
    }
    
    address private owner;
    string private password;
    
    mapping(uint => Team) public Teammapint;
    mapping(address => Team) public Teammap ;
    mapping(uint => address) public Teammapaddr;
    uint public teamcount;
    
    constructor() public {
        
        owner = msg.sender;
        
    }
    
    function setTeam(string Tn,string fn,string sn, string tn,string ftn,uint fid,uint sid,uint tid,uint ftid) public {
        
        teamcount++;
        Teammapint[teamcount] = Team(Tn,fn,sn,tn,ftn,fid,sid,tid,ftid);
        Teammap[msg.sender] = Team(Tn,fn,sn,tn,ftn,fid,sid,tid,ftid);
        
    }
    
    function setPassword(string pass) public{
        password=pass;
    }
    
    function getTeam() public view returns (string,string,string,string,string,uint,uint,uint,uint){
           return (Teammap[msg.sender].TeamName,Teammap[msg.sender].firstMemberName,Teammap[msg.sender].secondMemberName,Teammap[msg.sender].thirdMemberName,Teammap[msg.sender].fourthMemberName,Teammap[msg.sender].firstcid,Teammap[msg.sender].secondcid,Teammap[msg.sender].thirdcid,Teammap[msg.sender].fourthcid);
    }
    
}