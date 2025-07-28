# Ciclo de Vida SwiftUI App
A new iOS project.

## Getting Started

This project is a starting point for a iOS application.

This application contains the following knowledge:

- iOS 17

- Animation

- Life´s Cycle

## Teoria

# Ciclo de Vida app
El ciclo de vida de una app representa los distintos estados por los que pasa tu aplicación mientras el usuario la usa o el sistema la gestiona. Por ejemplo:

- Cuando el usuario abre la app → entra en estado .active
  
- Si recibe una llamada o cambia de app → puede pasar a .inactive o .background
  
- Si el sistema la cierra o libera memoria → la app muere

SwiftUI gestiona este ciclo automáticamente, pero te permite observarlo y reaccionar mediante herramientas modernas como @Environment(\.scenePhase) 
y el adaptador @UIApplicationDelegateAdaptor.

# Ciclo de Vida View

El ciclo de vida de una vista en SwiftUI se refiere a los momentos en que una vista:

- Aparece por primera vez en pantalla (onAppear)

- Desaparece de la pantalla (onDisappear)

- Se actualiza o cambia porque alguna variable de estado cambió (@State, @Binding, etc.)
  
- En SwiftUI todo es declarativo, así que en vez de imperativamente decir “muéstrame esto”, tú describes el estado y el framework decide qué mostrar y cuándo.


## The aplication look like this :

<img width="342" height="716" alt="Captura de Pantalla 2024-05-26 a la(s) 11 38 41" src="https://github.com/user-attachments/assets/45a9af23-0899-4366-97e9-091318db68f6" />
<img width="344" height="714" alt="Captura de Pantalla 2024-05-26 a la(s) 11 31 11" src="https://github.com/user-attachments/assets/5a08e498-dba6-41f4-a89f-358a46a33589" />

