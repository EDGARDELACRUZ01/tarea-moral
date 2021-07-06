
class Producto{
  var id: String = ""
  var nombre: String = ""
  var marca: String = ""
  var precio: Double = 0.0
  var peso: Double = 0.0
  var unidades: Int = 0
}

var lapiz = Producto ()
lapiz.nombre = "lapiz color"
lapiz.marca = (" BIC")
lapiz.precio = 80.0

var goma = Producto ()
goma.nombre = "gomita"
goma.marca = "gomachingona"
goma.precio = 10.0

var sacaPuntas = Producto ()
sacaPuntas.nombre = "sacaPuntas"
sacaPuntas.marca = "mapedd"
sacaPuntas.precio = 199.0

var corrector = Producto ()
corrector.nombre = "borratodo"
corrector.marca = "bic"
corrector.precio = 90.0

var lapicero = Producto ()
lapicero.nombre = "lapicero"
lapicero.marca = "lapices de mexico"
lapicero.precio = 1.90

var marcaTextos = Producto ()
marcaTextos.nombre = "Marca Textos"
marcaTextos.marca = "Plumincitos"
marcaTextos.precio = 1000.34

var regla = Producto ()
regla.nombre = "regla"
regla.marca = "Baco"
regla.precio = 78.333

var arreglo: [Double] = [regla.precio, sacaPuntas.precio, corrector.precio, goma.precio, lapiz.precio, lapicero.precio, marcaTextos.precio]
var arregloOrdenado = [Producto] () 
var temp: Int = -1
var count : Int = 0
arreglo.sort ()
//print (arreglo) 
var lista : [Producto] = [goma, corrector, lapiz, marcaTextos, sacaPuntas, lapicero, regla]
print ("Ordenado la lista de menor a mayor costo")
for _ in arreglo{
  temp+=1
for Producto in lista{
if (Producto.precio == arreglo [temp]){
  print ("El articulo: ", Producto.nombre)
  print ("con precio de", Producto.precio)
  print (" ")
  arregloOrdenado.append (Producto)
  //print (arreglo [temp])
  break 
}
}
}
print ("Aqui estan en orden los articulos de menor a mayor costo")
for Producto in arregloOrdenado{
  print (Producto.nombre)
}
print ("Termino")