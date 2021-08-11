struct Almacen {
  var  inventario : [String : Int] = [:]
  //var categorias : [String : Int] = [:]
 // init(){
   // inventario = []
  
  

/* func showProducts(by category: Category){
    print ("entro a showProducts por categoria")
    for stock in inventario.keys{
      if inventario.isInCategory(category: category){
        print(stock)
      }
    }
  }*/

  func showProducts(){
    print ("Mostrando el inventario: ", inventario)
    for (cosa, stock) in inventario {
      print("\(cosa): \(stock)")
    }
  }

  mutating func addProducto(producto: String, cantidad: Int){
    inventario [producto] = cantidad
  }

   func removeProducts(producto: Producto, cantidad: Int){
  }
}