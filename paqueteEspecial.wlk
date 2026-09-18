import mensajeros.*
import destinos.*

// Paquete especial con seguro y costo fijo

object paqueteEspecial {

    const costoEnvio = 200 // Costo fijo del envio especial (es mas caro por el seguro contra perdidas)
    var pago = false // Estado del pago
    var destino = brooklyn // Destino configurable
    var mensajero = neo // Mensajero asignado

    // Getter que permite saber el precio del paquete

    method precioEnvio() {

        return costoEnvio

    }

    // Setter que permite pagar el paquete

    method pagar() {

        pago = true

    }

    // Getter que permite consultar si el paquete esta pago

    method estaPagado() {

        return pago

    }

    // Setter que permite cambiar el destino del paquete

    method cambiarDestino(destinoNuevo) {

        destino = destinoNuevo

    }

    // Getter que permite consultar el destino actual

    method destino() {

        return destino

    }

    // Getter que permite consultar el mensajero asignado

    method mensajero() {

        return mensajero

    }

    // Setter que permite asignar un mensajero

    method mensajero(nuevoMensajero) {

        mensajero = nuevoMensajero

    }

    // Getter que indica si el paquete puede ser entregado por el mensajero asignado

    method puedeSerEntregado() {

        return self.estaPagado() and destino.puedeEntrar(mensajero)

    }

    // Getter que indica si el paquete puede ser entregado por un mensajero dado

    method puedeSerEntregadoPor(unMensajero) {

        return self.estaPagado() and destino.puedeEntrar(unMensajero)

    }

}
