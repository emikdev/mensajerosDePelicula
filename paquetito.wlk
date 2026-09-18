import destinos.*
import mensajeros.*

object paquetito {

    const costoEnvio = 0 // Costo de envio del paquetito
    const pago = true // Estado del pago del paquete
    var destino = matrix // Destino al que se envia el paquete
    var mensajero = neo // Mensajero que va a entregar el paquete
    
    // Getter que permite saber el costo del paquete

    method precioEnvio() {

        return costoEnvio

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

        return self.estaPagado()

    }

    // Como cualquiera lo puede entregar solo se necesita el getter anterior.

}