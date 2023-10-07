// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.1;
contract billetera2billetera  {
  // Dirección del dueño del contrato
    address public owner;

 // Mapeo para almacenar los saldos de las cuentas
    mapping (address => uint256) saldos;

  // Evento para notificar transferencias
  
    event FundsTransferred(address sender, address recipient, uint256 amount);
    
    constructor() {
        owner = msg.sender; //Set the owner of the contract. The only address that can register evidences.
    }
    
    modifier onlyOwner {
            require(msg.sender == owner, "Solo el Owner puede realizar esta operacion."); //Only the owner can register evidences.
            _;
        }
   
   function setOwner(address newOwner) external onlyOwner { 
            owner = newOwner;
    }


    // Función para obtener el balance en Gwei de una cuenta
    function obtenerBalance(address cuenta) public view returns (uint256) {
        uint256 balance = cuenta.balance;
        uint256 etherBalance = balance / 1 ; 
        return etherBalance;
    }

   // Función para enviar fondos entre cuentas, usando como puente el contrato
     function transferFunds(address payable recipient, uint256 cantidad) external payable onlyOwner {
        require(msg.value == cantidad, "La cantidad enviada no coincide con el argumento amount");
        
        recipient.transfer(cantidad);
        
        emit FundsTransferred(msg.sender, recipient, cantidad);
    }
   
    
    receive() external payable {}
}
