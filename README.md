# Smart Contract - Tranferencia entre Cuentas

Smart Contract de introducción y lectura de datos, dentro de un proyecto Truffle con despliegue configurado.

El contrato consta de 4 funciones :

## **Read Contract**
```sh
** 1.- obtenerBalance : ** Permite obtener el saldo de una cuenta especifica.
 
**2.- owner :** Indica quien es el dueño del contrato.
```

## Write Contract
```sh
**1.- setOwner :** Permite transferir la propiedad del contrato a otra cuenta en wei.
 
**2.- transferFunds :** Permite transferir eth desde la cuenta owner del contrato a otra que se defina.
```


## Instalación de Truffle
```sh
npm install -g truffle
npm install
```

# PASO A PASO

### PASO 1.- Modificación de Archivo de Configuración 
[x] Archivo .env
```sh
1. YOUR_PRIVATE_KEY_WALLET_ADDRESS : Este dato se debe obtener de la cuenta que se utilizara para desplegar el contrato.
1. YOUR_ETHERSCAN_API_KEY : Esta clave se puede obtener creandose una cuenta en https://etherscan.io/.
   La clave la puede usar por ejemplo, en **Remix**.
```

### PASO 2.- Deployment
```sh
Dentro del directorio Truffle-Sprint1-main, ejecutar los siguientes comandos 

1.- truffle compile
2.- truffle migrate --network **TU_RED**

El valor dede **TU_RED**, se encuentras en **truffle-config.js**.
_**Este contrato fue probado en ethereum_goerli_testnet.**_
```

### PASO 3.- Verificación
```sh
truffle run verify billetera2billetera@DEPLOYED_CONTRACT_ADDRESS --network TU_RED

DEPLOYED_CONTRACT_ADDRESS : Es entregado como resultado del paso anterior.
Se debe considerar la dirección del contrato billetera2billetera y no el Migrations.

EJ: contract address:  0x71bd6306B0f72f945eDb55C17EE4d57382aF19B6.

Con este paso queda verificado el contrato.

Esto también es posible realizarse desde goerli.etherscan.io encontrando el contrato,
siguiendo los pasos y teniendo con el codigó original del contrato.

```
