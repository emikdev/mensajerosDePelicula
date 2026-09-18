import mensajeros.*
import paquete.*
import paquetito.*
import paqueton.*
import paqueteEspecial.*

object mensajeria {

  var mensajeros = [jean, neo, sara] // Lista de mensajeros que la empresa tiene contratados
  var paquetesPendientes = [] // Lista de paquetes pendientes de entrega
  var facturacion = 0 // Facturacion actual de la empresa
  
  // Contratar un mensajero
  method contratar(unMensajero) {

    mensajeros.add(unMensajero)

  }
  
  // Despedir un mensajero
  method despedir(unMensajero) {

    mensajeros.remove(unMensajero)

  }
  
  // Despedir a todos los mensajeros
  method despedirATodos() {

    mensajeros = []

  }
  
  // Getter que permite consultar los mensajeros actuales
  method mensajeros(){
    
    return mensajeros

  }
  
  // Saber si la mensajería es grande
  method esGrande(){ 
    
    return mensajeros.size() > 2 
    
  }
  
  // Saber si el primer empleado puede entregar el paquete
  method primerEmpleadoPuedeEntregar(unPaquete){ 
    
    return unPaquete.puedeSerEntregadoPor(mensajeros.first()) 
    
  }
  
  // Saber el peso del último mensajero
  method pesoUltimoMensajero(){ 
    
    return mensajeros.last().peso()
  
  }

  // Getter que indica si hay almenos un mensajero que pueda entregar el paquete dado
  method puedeEntregar(unPaquete){
    
    return mensajeros.any({ mensajero => unPaquete.puedeSerEntregadoPor(mensajero) })
  
  }

  // Getter que indica que mensajeros pueden entregar el paquete dado
  method mensajerosQuePuedenEntregar(unPaquete){ 
    
    return mensajeros.filter({ mensajero => unPaquete.puedeSerEntregadoPor(mensajero) })
    
  }
  
  // Getter que indica si la empresa tiene sobrepeso
  method tieneSobrepeso(){
  
    return (mensajeros.sum({ mensajero => mensajero.peso() }) / mensajeros.size()) > 500

  }
  
  // Getter que permite consultar los paquetes pendientes
  method paquetesPendientes(){
    
    return paquetesPendientes

  }
  
  // Metodo que envia el paquete si se puede, asignando un mensajero capacitado, o lo agrega a pendientes
  method enviarPaquete(unPaquete){

    if (self.puedeEntregar(unPaquete)){ // Si se puede entregar

      const mensajeroElegido = self.mensajerosQuePuedenEntregar(unPaquete).anyOne() // Eleccion del mensajero
      unPaquete.mensajero(mensajeroElegido) // Asignacion del mensajero
      self.enviar(unPaquete)
      paquetesPendientes.remove(unPaquete) // Se remueve si estaba en paquetes pendientes

    } else { // Si no se puede entregar

      if (!paquetesPendientes.contains(unPaquete)){ // Si no esta en la lista de pauqetes pendientes
        
        paquetesPendientes.add(unPaquete) // Se agrega el paquete a la lista de pendeintes

      }

    }

  }
  
  // Metodo que permite "enviar" el paquete y sumar a la facturacion

  method enviar(unPaquete) {

    facturacion += unPaquete.precioEnvio()

  }
  
  // Getter que permite ver el monto de facturacion actual de la empresa
  method facturacion(){ 
    
    return facturacion

  }
  
  // Metodo que envia todos los paquetes de un conjunto
  method enviarPaquetes(unConjuntoDePaquetes) {

    unConjuntoDePaquetes.forEach({ unPaquete => self.enviarPaquete(unPaquete) })

  }
  
  // Getter que devuelve el paquete pendiente mas caro
  method paquetePendienteMasCaro(){
    
    return paquetesPendientes.max({ unPaquete => unPaquete.precioEnvio() })

  }
  
  // Metodo que encuentra el paquete pendiente mas caro y lo envia si es posible actualizando la lista
  method enviarPaquetePendienteMasCaro() {

    self.enviarPaquete(self.paquetePendienteMasCaro())

  }
  
}