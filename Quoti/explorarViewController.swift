import UIKit
import MapKit

class ExplorarViewController: UIViewController {

    
    // Aqui estão elementos da interface declarados
    
    //So teste! 

    @IBOutlet weak var explorarSegControl: UISegmentedControl!
    @IBOutlet weak var explorarBotaoAdd: UIButton!
    @IBOutlet weak var explorarSearchBar: UISearchBar!
    @IBOutlet weak var explorarMainView: UIView!
    @IBOutlet weak var mapView: MKMapView!
   
    
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
    
    fileprivate let locationManager: CLLocationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.showsUserLocation = true
        
        //configurações para que o usuário apareça no mapa
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = kCLDistanceFilterNone
        locationManager.startUpdatingLocation()
        
        
        //configurações para que o mapa apareça centrado no usuário
        let localizacaoInicial: CLLocationCoordinate2D = mapView.userLocation.coordinate
        mapView.setCenter(localizacaoInicial, animated: true)
       
        let amplitudeDeZoom = MKMapView.CameraZoomRange(maxCenterCoordinateDistance: 500000)
        mapView.setCameraZoomRange(amplitudeDeZoom, animated: true)
       
        
        // Do any additional setup after loading the view.
    }
    
}





//>>>>>>>>>>>>>  INCOMPLETO DAQUI PRA BAIXO OK? <<<<<<<<<<<

// Essa é a extensão que, se tudo der certo, vai mostrar um ponto de interesse nosso no mapa. Para entendê-la, precisamos lembrar que, quando clicamos em um ponto do mapa e ele abre um quadradinho com mais informações, aquele quadradinho é uma view que foi criada pelo sistema e exibida na tela.
extension ExplorarViewController: MKMapViewDelegate{
  //1
  func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
   
    //2
    guard let annotation = annotation as? PontoDeInteresse else {
      return nil
    }
    
    //3
    let identifier = "pontoDeInteresse"
    var view: MKMarkerAnnotationView
    
    //4
    if let dequeuedView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKMarkerAnnotationView {
      dequeuedView.annotation = annotation
      view = dequeuedView
    } else {
      
      //5
      view = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
      view.canShowCallout = true
      view.calloutOffset = CGPoint(x: -5, y: 5)
      view.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
    }
    return view
  }
  //1 Essa função é chamada para cada annotation que deixamos ser exibida no mapa (quando rolamos para uma região que tem annotations), e retorna uma view específica para essa annotation
  
  //2 Aqui nos informamos que as regras da função só vão ser implementadas para annotations que forem objetos do tipo Artwork. Caso o app use outras annotations, como user location, a função vai retornar nil e nada acontece
  
  //3 Dizemos qual será o tipo da view a ser criada quando a função for chamada e definimos um identifier comum
  
  //4 Dizemos que, caso já hajam outras views desse tipo prontas, mas que não estejam sendo exibidas, elas serão reutilizadas. Primeiro, a função avalia se há views de annotation disponíveis. Depois, ela substitu a annotation antiga da view pela nova. Em seguida, ela atribui a view reciclada como sendo a view que a função retornará para ser exibida ao usuário.
  
  //5 Aqui diremos como as views devem ser, caso não haja nenhuma para ser reciclada. Vale ressaltar que a canSHowCallout é o item que cria aquela bolha branca bonitinha com informações, e ela pode exibir title e subtitle (desde que ambos estejam na annotation)
}
