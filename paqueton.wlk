import destinos.*
import mensajeros.*

// Paqueton que puede tener multiples destinos

object paquetonViajero {

    const destinos = [] // Lista de destinos del paqueton
    var montoPago = 0 // Dinero que ya fue pagado
    var mensajero = neo

    // Setter que permite agregar un destino

    method agregarDestino(unDestino){

        destinos.add(unDestino)

    }

    // Getter que permite consultar los destinos

    method destinos(){

        return destinos

    }

    // Getter que permite saber el precio total del paqueton

    method precioEnvio(){

        return destinos.size() * 100

    }

    // Setter que permite pagar una parte o la totalidad del paquete

    method pagar(monto){

        montoPago = (montoPago + monto).min(self.precioEnvio())

    }

    // Getter que permite saber cuanto dinero se pago

    method montoPagado(){

        return montoPago

    }

    // Getter que permite consultar si el paquete esta completamente pago

    method estaPagado(){

        return montoPago == self.precioEnvio()

    }

    // Getter que permite saber el mensajer asignado al apquete

    method mensajero() {
      
        return mensajero

    }

    // Setter que permite cambiar el mensajero del paquete

    method mensajero(nuevoMensajero) {

        mensajero = nuevoMensajero
      
    }

    // Getter que permite saber si el mensajero asignado al paqueton lo puede entregar

    method puedeSerEntregado(){

        return self.estaPagado() and destinos.all({ destino => destino.puedeEntrar(mensajero) })

    }

    // Getter que permite saber si un mensajero puede pasar por todos los destinos

    method puedeSerEntregadoPor(unMensajero){

        return self.estaPagado() and destinos.all({ destino => destino.puedeEntrar(unMensajero) })

    }

}