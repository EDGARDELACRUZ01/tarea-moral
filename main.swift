import Foundation
func main(){
  var menuPrincipal = Menu()
  var almacen = Almacen()
  var carrito = Carrito()
  var zapatos = Category(name: "Zapatos")
  var lacteos = Category(name: "Lacteos")
  var quesos = Category(name: "Quesos")
  var panela = Category(name: "Panela")
  var oaxaca = Category(name: "Oaxaca")

  let tenisNike = Producto(nombre: "Nike", precio: 35.0, desc: "Tenis nike azules", categorias:[zapatos, panela] )
  let quesoLaVilla = Producto(nombre: "Queso la villa", precio: 10.0, desc: "Rico queso", categorias:[panela, oaxaca])
  let leche = Producto(nombre: "LALA", precio: 10, desc: "leche entera", categorias:[lacteos] )

 almacen.addProducto(producto: tenisNike, cantidad: 5)
 almacen.addProducto(producto: quesoLaVilla, cantidad: 20)
 almacen.addProducto(producto: leche, cantidad: 1500)
 
  
    quesos.addSubCategory(category: oaxaca)
    lacteos.addSubCategory(category: quesos)
    menuPrincipal.addCategory(category: zapatos)
    menuPrincipal.addCategory(category: lacteos)
    
    quesos.addSubCategory(category: panela)


    menuPrincipal.display()
    almacen.showProducts()
    quesoLaVilla.showCategories()
    print("----------------------")
  print ("PROYECTO")
  let tempPro1: Producto = tenisNike
  let temPre1: Int = 2
  let tempPr02: Producto = quesoLaVilla
  let temPre2 : Int = 1
  let tempPro3 : Producto = leche
  let tempPre3 : Int = 87
  carrito.addCanasta(producto: tempPro1, cantidad: temPre1, precio: tenisNike.precio)
  carrito.addCanasta(producto: tempPr02, cantidad: temPre2, precio:quesoLaVilla.precio)
  carrito.addCanasta(producto: tempPro3, cantidad: tempPre3, precio: leche.precio)
  carrito.showCarrito()
  carrito.calculaPrecio()
  print ("_____INVENTARIO ACTUALIZADO_____")
  almacen.removeProducto(producto: tempPro1, cantidad: temPre1)
  almacen.removeProducto(producto: tempPr02, cantidad: temPre2)
  almacen.removeProducto(producto: tempPro3, cantidad: tempPre3)
  almacen.showProducts()
}
main ()
