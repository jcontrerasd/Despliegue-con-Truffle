# Truffle-Sprint1
Smart Contract de introducción y lectura de datos, dentro de un proyecto Truffle con despliegue configurado.

El contrato consta de 4 funciones, 

#Read Contract#

 1.- obtenerBalance : Permite obtener el saldo de una cuenta especifica.
 
 2.- owner : Indica quien es el dueño del contrato.

#Write Contract#

 1.- setOwner : Permite transferir la propiedad del contrato a otra cuenta.
 
 2.- transferFunds : Permite transferir eth desde la cuenta owner del contrato a otra que se defina.


## Truffle Guide

#### Installation
```sh
npm install -g truffle
npm install
```

# PASO 1.- Modificación de Archivo de Configuración 
## Archivo .env

YOUR_PRIVATE_KEY_WALLET_ADDRESS, este dato se debe obtener de la cuenta que se utilizara para desplegar el contrato.
YOUR_ETHERSCAN_API_KEY, esta clave se puede obtener creandose una cuenta en https://etherscan.io/, la clave la puede usar por ejemplo, en Remix.


# PASO 2.- Deployment
```sh
Dentro del directorio Truffle-Sprint1-main, ejecutar los siguientes comandos 
## truffle compile

#### el valos de la de TU_RED, lo encuentras en truffle-config.js, este contrato fue probado en ethereum_goerli_testnet
 ## truffle migrate --network TU_RED
```

# PASO 3.- Verification
```sh
DEPLOYED_CONTRACT_ADDRESS, es entregado como resultado del paso anterior, hay que considerar la dirección del contrato billetera2billetera y no el Migrations.
EJ: contract address:  0x71bd6306B0f72f945eDb55C17EE4d57382aF19B6.
Con este paso queda verificado el contrato.
Esto también es posible realizar desde goerli.etherscan.io encontrando el contraro y siguiendo los pasos y teniendo con el codigó original del contrato.

## truffle run verify billetera2billetera@DEPLOYED_CONTRACT_ADDRESS --network TU_RED
```

