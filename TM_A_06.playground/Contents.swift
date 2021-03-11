import UIKit
/*:
# Playground - Actividad 6
* Operadores personalizados
* Subscripts
* Control de errores

*/


/*: 
### Operadores personalizados
A) Crear el operador para realizar la potencia de el valor "a" a la potencia "b" en valores enteros
*/
prefix operator +++

prefix func +++ (base:Int )->Int{
    var power=5
    var answer=0
    for _ in 1...power {
        answer *= base
    }
    return answer
}



//: B) Crear el operador |> para ordenar la colección [2,5,3,4] de menor a mayor
prefix operator |>

prefix func |> (base:Array<Int>)->Array<Int>{
    var coleccion = base
    coleccion.sorted()
    return coleccion
}


/*:
### Subscripts
A) Del conjunto de datos en el Array [2,3,4,5], crear el subscript para modificar los valores multiplicados por el valor 2 y extraer al valor dado un índice.
*/
struct arreglo
{
    var cons = [2,3,4,5]
subscript (indice:Int)->Int
  {
    set{
      if (cons[indice] % 2 == 0)
         {
          cons[indice] += 1
         }
      }
    get{
        return cons[indice]
       }
    
   }
}

//: B) Crear el Struct para definir u obtener la posición  para los personaje de tipo Enemigo donde cada posición es de tipo CGPoint aplicnado subscritps
struct B
{
    var Position:CGPoint
    init(xValue:Int,yValue:Int) {
        Position = CGPoint(x:xValue,y:yValue)
    }
    subscript (xValue:Int,yValue:Int)->CGPoint
  {
    get{
        return CGPoint(x:xValue,y:yValue)
       }
    
   }
}
	
/*:
### Control de Errores
A) Crear la función ExisteValor en la cual se reciba como parámetro el valor a buscar dentro de un colección ["A":1, "B":2,"C":3]
*/
	
let coleccion=["A":1, "B":2,"C":3]

func control 	(indice:String){
    guard let exist = coleccion[indice] else {
        print("Ocurrio un error")
        return
    }
    print("Existe /(exist)")
}








	
