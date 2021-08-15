struct Carrito {
  var  canasta : [[Producto : Int]]
  var cuenta : Double = 0.0
  var almacen = Almacen()
  init (){
    canasta = []
  }

  mutating func addCanasta(producto: Producto, cantidad: Int, precio: Double){
    //let tempProducto: Producto = producto
    //let tempCantidad: Int = cantidad
    //print(tempProducto)
    //almacen.removeProducto(producto: producto, cantidad: tempCantidad)
    let tempo = [producto : cantidad]
    canasta.append(tempo)
    var acumfloat = Double(cantidad)
    cuenta = cuenta + (precio*acumfloat)
   // print (cuenta)
  }

  func showCarrito (){
    print ("______Mostrando el carrito______: ")
    for producto in canasta {
      print(producto)
    
    }
  }
  func calculaPrecio (){
    print ("________TOTAL_________")
   print ("El Total de su carrito es:  ", cuenta)
 }
} 
