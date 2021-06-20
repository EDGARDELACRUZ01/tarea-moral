var arreglo = [Int] ()
var temp : Int = 1
func push (contador: Int ){
  arreglo.append(contador)
}
func pop (){
  arreglo.removeLast ()
}
func imprimir (){
  print (arreglo)
}

for i in 1...10{
  temp=i
   push(contador:temp)
}
imprimir()
for i in 1...10{
  pop()
  imprimir ()
}
imprimir()


/*struct Gato{
  var nombre: String
  var edad: Int

  mutating func incrementaEdad(){
    self.edad += 1
  }
}

var gatito_1 = Gato(nombre: "Peluza", edad: 5)
print(gatito_1.nombre, gatito_1.edad)
gatito_1.incrementaEdad()
print(gatito_1.nombre, gatito_1.edad) */
