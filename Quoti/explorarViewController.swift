import UIKit

class ExplorarViewController: UIViewController {

    
    // Aqui estão elementos da interface declarados
    
    //So teste! 

    @IBOutlet weak var explorarSegControl: UISegmentedControl!
    @IBOutlet weak var explorarBotaoAdd: UIButton!
    @IBOutlet weak var explorarSearchBar: UISearchBar!
    @IBOutlet weak var explorarMainView: UIView!
    
    // Ação pra mudar a visualização pelo segControl
    
    @IBAction func mudarVisualizacao(_ sender: Any) {
        // Se clicar em Lista
        if explorarSegControl.selectedSegmentIndex == 0 {
            
            explorarMainView.backgroundColor = .systemPink
            
        }
        
        // Se clicar em Mapa
        if explorarSegControl.selectedSegmentIndex == 1 {
            
            explorarMainView.backgroundColor = .blue
            
        }
        
        // Se clicar em Câmera
        if explorarSegControl.selectedSegmentIndex == 2 {
            
            explorarMainView.backgroundColor = .green
            
        }
        
        
    }
    
    // Ação de adicionar um novo Ponto
    @IBAction func addNovoPonto(_ sender: Any) {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
