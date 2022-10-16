// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Tender {
    struct Company {
        string companyName;
        address walletAddress;
        string creatorEmployee;
        string email;
        Officer[] selectedOfficers;
    }
    
    struct Officer {
        string name;
        address walletAddress;
        Farmer[] selectedFarmers;
        Area officerZone;
    }
    
    struct Farmer {
        string name;
        uint farmSize;
        address walletAddress;
        Area farmArea;
        uint bidPrice;
        bool selected;
    }
    
    struct Area {
        string village;
        string district;
        string city;
        string state;
    }
    
    struct TimeStamps {
        uint creationTimeStamp;
        mapping(address => uint) officerClaimTime;
        mapping(address => uint) farmerClaimTime;
    }
    
    string public cropName;
    uint public proposedBid;
    uint public estQuantity;
    Area public tenderArea;
    Company public ownerCompany;
    mapping(address => Officer) public claimingOfficers;
    uint officersCount = 0;
    mapping(address => Farmer) public participatingFarmers;
    uint farmersCount = 0;
    TimeStamps tenderEvents;
    
    bool isPassed = false; 
    
    constructor(string memory crop, uint biddingPrice, uint reqQuantity, string memory companyName, string memory city, string memory state, string memory creatorEmployee) public {
        cropName = crop;
        proposedBid = biddingPrice;
        estQuantity = reqQuantity;
        Company storage creatorCompany = ownerCompany;
        creatorCompany.companyName = companyName;
        creatorCompany.walletAddress = msg.sender;
        creatorCompany.creatorEmployee = creatorEmployee;
        Area storage targetArea = tenderArea;
        targetArea.city = city;
        targetArea.state = state;
        tenderEvents.creationTimeStamp = block.timestamp;
    }
    
    function officerClaim(string memory officerName, string memory district, string memory city, string memory state) public {
        require(claimingOfficers[msg.sender].walletAddress != msg.sender);
        Officer storage claimingOfficer = claimingOfficers[msg.sender];
        claimingOfficer.name = officerName;
        Area storage officerArea = claimingOfficer.officerZone;
        officerArea.district = district;
        officerArea.city = city;
        officerArea.state = state;
        claimingOfficer.walletAddress = msg.sender;
        tenderEvents.officerClaimTime[msg.sender] = block.timestamp;
    }
    
    function farmerClaim(string memory farmerName, string memory village, string memory district, string memory city, string memory state, uint farmSize, uint bidPrice) public {
        Farmer storage claimingFarmer = participatingFarmers[msg.sender];
        claimingFarmer.name = farmerName;
        Area storage area = claimingFarmer.farmArea;
        area.village = village;
        area.district = district;
        area.city = city;
        area.state = state;
        claimingFarmer.farmSize = farmSize;
        claimingFarmer.bidPrice = bidPrice;
        claimingFarmer.walletAddress = msg.sender;
        tenderEvents.farmerClaimTime[msg.sender] = block.timestamp;
    }
    
    function approveFarmerClaim(address farmerAddress) public {
        require(claimingOfficers[msg.sender].walletAddress == msg.sender);
        Farmer storage selectedFarmer = participatingFarmers[farmerAddress];
        selectedFarmer.selected = true;
        claimingOfficers[msg.sender].selectedFarmers.push(selectedFarmer);
    }
    
    function selectOfficers(address officerAddress) public {
        require(ownerCompany.walletAddress == msg.sender);
        Officer storage selectedOfficer = claimingOfficers[officerAddress];
        ownerCompany.selectedOfficers.push(selectedOfficer);
    }
    
    function passTender() public {
        require(ownerCompany.walletAddress == msg.sender);
        isPassed = true;
    }
}