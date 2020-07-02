import UIKit

class SalvosViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

   
    // Aqui estão elementos da interface declarados
    
    @IBOutlet weak var salvosSegControl: UISegmentedControl!
    @IBOutlet weak var salvosSearchBar: UISearchBar!
    @IBOutlet weak var salvosMainView: UIView!
    @IBOutlet weak var salvosTableView: UITableView!
    
    
    // ArrayDeLugares
    
    
    // Essa é função do Segmented Control
    
    @IBAction func filtrarSegControl(_ sender: Any) {
        // Se clicar em visitados
        if salvosSegControl.selectedSegmentIndex == 0 {
            
            salvosMainView.backgroundColor = .systemIndigo
            salvosMainView.backgroundColor = .systemPink
            lugaresArray.rearrange(from: 1, to: 2)
            salvosTableView.reloadData()
            
        }
        
        // Se clicar em Favoritos
        if salvosSegControl.selectedSegmentIndex == 1 {
            
            salvosMainView.backgroundColor = .systemPink
            lugaresArray.rearrange(from: 1, to: 2)
            salvosTableView.reloadData()
        }
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        salvosTableView.dataSource = self
        salvosTableView.delegate = self
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lugaresArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = salvosTableView.dequeueReusableCell(withIdentifier: "salvosCell") as! SalvosTableViewCell
        cell.imageCell.image = lugaresArray[indexPath.row].imagem
        
  
        cell.titleCell.text = lugaresArray[indexPath.row].nome
        cell.distanceCell.text = lugaresArray[indexPath.row].distancia
        cell.visitadoCell.text = lugaresArray[indexPath.row].visitado
        
        //arredondado
        cell.viewCell.layer.cornerRadius = 13
        cell.imageCell.layer.cornerRadius = 13
        cell.imageCell.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
       
        // sombra
        cell.viewCell.layer.shadowColor = UIColor.black.cgColor
        cell.viewCell.layer.shadowOpacity = 0.3
        cell.viewCell.layer.shadowOffset = .zero
        cell.viewCell.layer.shadowRadius = 50
        
        if lugaresArray[indexPath.row].favorito == false {
         
            cell.favoritoCell.image = UIImage(named: "coracaoaberto")
            
        }
        
        return cell
        
        
        
    }
    


}

extension RangeReplaceableCollection where Indices: Equatable {
    mutating func rearrange(from: Index, to: Index) {
        precondition(from != to && indices.contains(from) && indices.contains(to), "invalid indices")
        insert(remove(at: from), at: to)
    }
}
