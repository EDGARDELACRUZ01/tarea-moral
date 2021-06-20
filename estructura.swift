/* struct Gato{
  var nombre: String
  var edad: Int

  mutating func incrementaEdad(){
    self.edad += 1
  }
}
*/
struct pila
{
  var arreglo = [Int] ()
  mutating func push (contador : Int){
     self.arreglo.append (contador)
     print ("Se agrego al stack el elemento:", contador)
  }
  mutating func peek (){
    print ("El arregro es: ", arreglo)
  }
  mutating func pop (){
    self.arreglo.removeLast ()
    
  }
}
var temp : Int = 0
var count = 0
var stack_1 = pila()
print ("Hola dime de cuantos elementos te gustaria tu STACK")
var num = readLine ()!
let opcion = Int(num)!
print (type(of: opcion))
for _ in 1...opcion{
  temp+=1
  stack_1.push (contador:temp)
}
stack_1.peek()

for _ in 1...opcion{
  stack_1.pop()
}
stack_1.peek()