# Truffle-Sprint1
Smart Contract de introducción y lectura de datos, dentro de un proyecto Truffle con despliegue configurado.

## Truffle Guide

#### Installation
```sh
npm install -g truffle
npm install
```

#### Deployment
```sh
Dentro del directorio Truffle-Sprint1-main, ejecutar los siguientes comandos 
1.- truffle compile

#### el valos de la de TU_RED, lo encuentras en truffle-config.js, este contrato fue probado en ethereum_goerli_testnet
2.- truffle migrate --network TU_RED
```

#### Verification
```sh
DEPLOYED_CONTRACT_ADDRESS, es entregado como resultado del paso anterior, hay que considerar la dirección del contrato billetera2billetera y no el Migrations.
EJ: contract address:    0x71bd6306B0f72f945eDb55C17EE4d57382aF19B6. Con este paso queda verificado el contrato. Esto también es posible realizar desde goerli.etherscan.io encontrando el contraro y siguiendo los pasos y teniendo con el codigó original del contrato.

3.- truffle run verify billetera2billetera@DEPLOYED_CONTRACT_ADDRESS --network TU_RED
```

