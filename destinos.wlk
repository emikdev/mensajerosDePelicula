// Destinos a los que se puede enviar un paquete

object matrix {

    const costoEnvio = 500 // Costo del envio a este destino

    // Getter que permite saber el costo del envio a este destino

    method costoEnvio(){

        return costoEnvio

    }

    // Getter que permite saber si un mensajero puede entarar al destino

    method puedeEntrar(mensajero) {
      
        return mensajero.puedeLlamar()

    }

}

object brooklyn {

    const costoEnvio = 150 // Costo del envio a este destino

    method costoEnvio(){

        // Getter que permite saber el costo del envio a este destino

        return costoEnvio

    }

    // Getter que permite saber si un mensajero puede entarar al destino

    method puedeEntrar(mensajero) {
      
        return mensajero.peso() <= 1000

    }

}