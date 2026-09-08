// Vehiculos de Sara

object moto {
  
    const peso = 100 // Peso del vehiculo

    // Getter que permite saber el peso de la moto

    method peso(){

        return peso

    }

}

object camion {
  
    const peso = 500 // Peso del vehiculo sin acoplados
    var numeroAcoplados = 0 // Cantidad de acoplados que tiene el camion

    // Getter que permite saber el peso del cambion mas el los acomplados que lleve 

    method peso(){

        return peso + (numeroAcoplados * 500)

    }

    // Setter que permite agregarle un acoplado al camion

    method agregarAcoplado() {
      
        numeroAcoplados = numeroAcoplados + 1

    }

    // Setter que permite quitarle un acomplado al camion

    method quitarAcoplado() {
      
        numeroAcoplados = (numeroAcoplados - 1).max(0)

    }

}