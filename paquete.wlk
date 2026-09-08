import mensajeros.*

import destinos.*

// Paquete que se desea enviar

object paquete {

    var pago = false // Estado del pago del paquete
    var destino = matrix // Destino al que se envia el paquete
    var mensajero = neo // Mensajero que va a entregar el paquete

    // Getter que permite saber el costo del paquete

    method precioEnvio(){

        return destino.costoEnvio()

    }

    // Setter que permite pagar que paquete

    method pagar(){

        pago = true

    }

    // Getter que permite consultar si el paquete esta pago

    method estaPagado() {
      
        return pago

    }

    // Setter que permite cambiar el destino del paquete

    method cambiarDestino(destinoNuevo){

        destino = destinoNuevo

    } 

    // Getter que permite consultar el destino del paquete

    method destino() {
      
        return destino

    }

    // Getter que permite saber el mensajer asignado al apquete

    method mensajero() {
      
        return mensajero

    }

    // Setter que permite cambiar el mensajero del paquete

    method mensajero(nuevoMensajero) {

        mensajero = nuevoMensajero
      
    }

    // Getter que permite saber si el paquete puede ser entregado o no

    method puedeSerEntregado() {

        return self.estaPagado() and destino.puedeEntrar(mensajero)

    }

    // Getter que pemrite consultar si el mensajero puede entrar al destino para entregar el paquete

    method puedeSerEntregadoPor(unMensajero) {

        return destino.puedeEntrar(unMensajero)

    }

}