import vehiculos.*

// Mensajeros que pueden enviar los paquetes

object jean {

    const peso = 65 // Peso corporal del mensajero
    const puedeLlamar = true // El mensajero puede llamar?

    // Getter que indica si el mensajero puede llamar

    method puedeLlamar() {
      
        return puedeLlamar

    }

    // Getter que indica el peso corporal del mensajero

    method peso(){

        return peso

    }

}

object neo {

    const peso = 0 // Peso corporal del mensajero
    var saldo = 300 // Saldo del celular de Neo

    // Getter que indica si el mensajero puede llamar

    method puedeLlamar() {
      
        return saldo >= 100

    }

    // Getter que permite saber el saldo que le queda a Neo

    method consultarSaldo(){

        return saldo

    }

    // Setter que permite cargarle saldo al celular de Neo

    method cargarSaldo(monto){

        saldo = saldo + monto

    }

    // Hacer una llama

    method hacerLlamada() {
      
        saldo = saldo - 100

    }

    // Getter que indica el peso corporal del mensajero

    method peso(){

        return peso

    }

}

object sara {
    
    var peso = 80 // Peso corporal del mensajero
    var vehiculo = moto // Vehiculo que esta usando Sara
    const puedeLlamar = false // El mensajero puede llamar?

    // Getter que indica si el mensajero puede llamar

    method puedeLlamar() {
      
        return puedeLlamar

    }

    // Getter que indica el peso corporal del mensajero mas su vehiculo

    method peso(){

        return peso + vehiculo.peso()

    }

    // Setter que permite cambiar el peso de Sara

    method peso(nuevoPeso){

        peso = nuevoPeso

    }

    // Setter que permite cambiar el vehiculo que Sara tiene en uso

    method cambiarVehiculo(vehiculoNuevo){

        vehiculo = vehiculoNuevo

    }

    // Getter que permite saber que vehiculo esta utilizando sara

    method vehiculo() {
      
        return vehiculo

    }

}