pragma solidity ^0.4.18;

contract BCCar {
 
    struct car {
    uint  plateNumber;
     string  model;
     string color;
     string driverName;
     }
     
    mapping (address => car) cars;
    
    address[] public carArr;
    
    function addCar(address _address, uint _plateNumber, string _model, string _color, string _driverName) public {
       var cr = cars[_address];
       cr.model = _model;
       cr.color = _color;
       cr.plateNumber = _plateNumber;
       cr.driverName = _driverName;
       carArr.push(_address)-1;
       }

    function getCars() public view returns (address[]) {
       return carArr;
   }

    function getCar(address cr) view public returns (uint, string, string, string) {
        return (cars[cr].plateNumber, cars[cr].model, cars[cr].color, cars[cr].driverName);
    }

    function countCars() view public returns(uint){
        
        return carArr.length;
    }
    
}
