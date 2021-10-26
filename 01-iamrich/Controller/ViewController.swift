//
//  ViewController.swift
//  01-iamrich
//
//  Created by JUAN ANTONIO CONCEPCION RIVERA on 11/10/21.
//

import UIKit

class ViewController: UIViewController {

    //PROPERTYS
    
    @IBOutlet weak var labelTitle: UILabel!
  
    @IBOutlet weak var imageViewDiamond: UIImageView!
    
    @IBOutlet weak var buttonPush: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //METHODS
    @IBAction func bottomPressed(_ sender: UIButton) {
        self.labelTitle.text="He pulsado el botón"
        self.labelTitle.textColor=UIColor.green
        self.labelTitle.font=UIFont.systemFont(ofSize: 48.0)
        self.imageViewDiamond.image=UIImage(named:"diamondLight")
        
        let controller=UIAlertController(title: "I am Rich", message: """
                                                I am Rich
                                                I deserve it
                                                I am good
                                                healthy and successfull
                                                """
                                         , preferredStyle: UIAlertController.Style.actionSheet)
        
        let action = UIAlertAction(title: "Aceptar", style: .default) { action in
            print("He pulsado el botón Aceptar.")
        }
        //let action = UIAlertAction(title: "Aceptar", style: .default, handler: nil) //Crear un boton para poder salir de la ventana del mensaje.
        
        controller.addAction(action) //Añadir acción a controller.

        let action2 = UIAlertAction(title: "Borrar", style: .destructive, handler: { (action) in
            print ("He pulsado el botón Borrar.")
            
        })
        
        controller.addAction(action2)
        
        let action3 = UIAlertAction(title: "Cancelar", style: .cancel) { _ in
            print ("He pulsado el botón Cancelar.")
            
        }
        
        controller.addAction(action3)
    
        self.show(controller, sender: nil) //Visualizar controller con el botón ok añadido anteriormente.
        
        
                                            
    }
}

