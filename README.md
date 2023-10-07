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
truffle compile
truffle migrate --network DESIRED_NETWORK
```

#### Verification
```sh
truffle run verify DEPLOYED_CONTRACT_NAME@DEPLOYED_CONTRACT_ADDRESS --network DESIRED_NETWORK
```

#### Goerli Network
```sh
truffle compile
truffle migrate --network ethereum_goerli_testnet
truffle run verify billetera2billetera@0x... --network ethereum_goerli_testnet
```
