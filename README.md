# Smart Contract - Tranferencia entre Cuentas

Smart Contract de introducción y lectura de datos, dentro de un proyecto Truffle con despliegue configurado.

El contrato consta de 4 funciones :

## **Read Contract** ##
* **1.- obtenerBalance :** Permite obtener el saldo de una cuenta especifica.
* **2.- owner :** Indica quien es el dueño del contrato.


## Write Contract

* **1.- setOwner :** Permite transferir la propiedad del contrato a otra cuenta en wei.
* **2.- transferFunds :** Permite transferir eth desde la cuenta owner del contrato a otra que se defina.

## Instalación de Truffle
```sh
npm install -g truffle
npm install
```

# PASO A PASO

* ### PASO 1.- Modificación de Archivo de Configuración 
```sh
.env
```
1. YOUR_PRIVATE_KEY_WALLET_ADDRESS : Este dato se debe obtener de la cuenta que se utilizara para desplegar el contrato.
1. YOUR_ETHERSCAN_API_KEY : Esta clave se puede obtener creandose una cuenta en https://etherscan.io/.
   La clave la puede usar por ejemplo, en **Remix**.



* ### PASO 2.- Deployment

Dentro del directorio Truffle-Sprint1-main, ejecutar los siguientes comandos 
```sh
truffle compile
truffle migrate --network TU_RED
```

El valor dede **TU_RED**, se encuentras en **truffle-config.js**.

_**Este contrato fue probado en ethereum_goerli_testnet.**_



* ### PASO 3.- Verificación
```sh
truffle run verify billetera2billetera@DEPLOYED_CONTRACT_ADDRESS --network TU_RED
```

DEPLOYED_CONTRACT_ADDRESS : Es entregado como resultado del paso anterior.
Se debe considerar la dirección del contrato billetera2billetera y no el Migrations.

EJ: contract address:  0x71bd6306B0f72f945eDb55C17EE4d57382aF19B6.

Con este paso queda verificado el contrato.

Esto también es posible realizarse desde goerli.etherscan.io encontrando el contrato,
siguiendo los pasos y teniendo con el codigó original del contrato.


# EJEMPLO DE EJECUCIÓN

## Al ejecutar los comandos de lectura owner y obtenerBalance  se determinar tanto el dueño del contrato como el Balance
<img width="1418" alt="image" src="https://github.com/jcontrerasd/Truffle-Sprint1/assets/27821228/c287f249-21e6-4fcc-9f62-a154051ccc82">


## Al ejecutar la función transferFunds se envia 0.1 Eth desde cuenta owner 0x043D27C4e210b8DCd4F324Bff24bbCf89fc9C946 a la cuenta 0xd94d270920322fb768d3D32AeCF8f228b8FD4BbD
<img width="1395" alt="image" src="https://github.com/jcontrerasd/Truffle-Sprint1/assets/27821228/801c8d37-8fc7-4a9c-b281-a92d059cbcf4">
<img width="383" alt="image" src="https://github.com/jcontrerasd/Truffle-Sprint1/assets/27821228/5f155788-2a3f-40ca-bf50-f7e3b63de796">

## Al confirmar la transacción se realiza la transferencia entre cuentas, descontando en una y aumentando en la otra cuenta, se puede apreciar en la Transaction Hash : 0xc53ffe7cca9fc7993b3dd2bd5d127336911f1efe38b81463212d24cf593e8cb9 que la cuenta 0x043D27C4e210b8DCd4F324Bff24bbCf89fc9C946 transfiere 0.1 Eth a la cuenta 0xd94d270920322fb768d3D32AeCF8f228b8FD4BbD usando como puente el contrato 0x71bd6306B0f72f945eDb55C17EE4d57382aF19B6. Utiizar un contrato como puente permite agregar reglas de transferencia automatizando eventuales acuerdos previos.

<img width="1421" alt="image" src="https://github.com/jcontrerasd/Truffle-Sprint1/assets/27821228/8fe2961d-e17d-4258-bd65-8e729f1d0eff">

