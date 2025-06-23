class Elementos {
  var contador
  method esBueno() // todos los obj. de la clase elementos, necesariamente deben tener
  //el metodo esBueno(). Es un metodo abstracto. Lo terminamos de definir mas adelante. 
  method algo(){  // ES EJEMPLO SUPER
    contador +=1
  }

  method contador() = contador  // ES EJEMPLO SUPER
}

class Hogar inherits Elementos {
  var mugre
  var confort

  override method esBueno() = mugre <= confort / 2 

  override method algo() {
    super().algo()  // replica el comportamiento de un metodo de la clase padre. ES EJEMPLO SUPER
    super().algo()
  }
}

class huerta inherits Elementos {
  var produccion
  var nivelProduccion = 150  // valor ejemplo.
  override method esBueno() = produccion > nivelProduccion

}

class Mascotas inherits Elementos {
  var salud

  override method esBueno() = salud > 250 
}

class Barrio {

  const elementos = #{}

  method cantidadElementosBuenos() = elementos.count ({e => e.esBueno()})
  method cantidadElementosMalos() = elementos.count ({e => !e.esBueno()})
  method esCopado() = self.cantidadElementosBuenos() > self.cantidadElementosMalos()
}


class Plaga {
  var property poblacion 
  method danio()
  method transmitenEnfermedades() = poblacion >= 10


}

class Cucarachas inherits Plaga {
  
  var pesoPromedio 

  override method danio() = self.poblacion() * 0.5

  override method transmitenEnfermedades() = super() && pesoPromedio >=10 
  
}

