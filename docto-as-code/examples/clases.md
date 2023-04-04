
```plantuml
@startuml
enum MyEnum
class MyClass
interface MyInterface
annotation MyAannotation
abstract MyAbstractClas
@enduml
```

<br><br><br><br>


```plantuml
@startuml
class Producto {
    long id
    String nombre
    double precios
    getId(): long
    setId(long): void
}
@enduml
```

<br><br><br><br><br>


```plantuml
@startuml
class Producto {
    + long id
    # String nombre
    - double precios
    + getId(): long
    - setId(long): void
}
@enduml
```

<br><br><br>

```plantuml
@startuml
Class01 <|-- Class02
Class03 *-- Class04
Class05 o-- Class06
Class07 .. Class08
Class09 -- Class10
@enduml
```

<br><br><br><br>

```plantuml
@startuml
actor actor
boundary boundary
control control
entity entity
database database
collections collections
actor -> boundary : To boundary
actor -> control : To control
actor -> entity : To entity
actor -> database : To database
actor -> collections : To collections
@enduml
```

<br><br><br>

```plantuml
@startuml
Bob ->x Alice
Bob -> Alice
Bob ->> Alice
Bob -\ Alice
Bob \\- Alice
Bob //-- Alice
Bob ->o Alice
Bob o\\-- Alice
Bob <-> Alice
Bob <->o Alice
@enduml
```

<br><br><br>


```plantuml
@startuml
Alice -> Bob: Authentication Request
alt successful case
    Bob -> Alice: Authentication Accepted
else some kind of failure
    Bob -> Alice: Authentication Failure
    group My own label
    Alice -> Log : Log attack start
        loop 1000 times
            Alice -> Bob: DNS Attack
        end
    Alice -> Log : Log attack end
    end
else Another type of failure
   Bob -> Alice: Please repeat
end
@enduml
```

<br><br><br><br>


```plantuml
@startuml
!include https://raw.githubusercontent.com/plantuml-stdlib/C4-PlantUML/master/C4_Context.puml

title ACME Store

Person(customer, "Customer", "Cliente del ecommerce")

Enterprise_Boundary(b1, "ACME Store") { 
    System(ACMEStoreSys, "ACME Store", "Aplicación web de ventas de productos online")
    System_Ext(erpSys, "ERP", "ERP desde el cúal se gestiona el <br>catálogo de productos e inventarios")
    System_Ext(paymentServiceSys, "PaymentService", "Service de procesamiento de pagos")
    System_Ext(KeycloakSys, "Keycloak", "Servicio de autenticación y autorización")
}

Rel(customer, ACMEStoreSys, "Cliente del ecommerce")
Rel(ACMEStoreSys, erpSys, "Administración de productos e inventarios")
Rel(ACMEStoreSys, paymentServiceSys, "Procesamiento de pagos")
Rel(ACMEStoreSys, KeycloakSys, "Autenticación y autorización")
@enduml
```
