import Foundation

class MyViewModel: ObservableObject {
    
    @Published var contador: Int = 0
    @Published var nome: String?
    
    func incrementCount(){
        contador += 1;
    }
    
    func handleInput(_ nome :String){
        self.nome = nome;
        
    }
}
