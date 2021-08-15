struct Almacen : Hashable {
  var  inventario : [[Producto : Int]]
  //var categorias : [String : Int] = [:]
 init(){
 inventario = []
 }
  mutating func removeProducto(producto: Producto, cantidad: Int){
    var i = 0;
    for var contador in inventario{
    if let total = contador[producto]{
      let total = total - cantidad
        contador[producto] = total
        inventario[i] = contador
      }
      i += 1
    } 
  }


  func showProducts(){
    print ("Mostrando el inventario: ")
    for producto in inventario {
      print(producto)
    }
  }

  mutating func addProducto(producto: Producto , cantidad: Int){
    let dicTemp = [producto : cantidad]
    inventario.append(dicTemp)
  }


   func hash(into hasher: inout Hasher) {
    hasher.combine(inventario)
  }

}