//
//  ViewController.swift
//  Idade Dogs
//
//  Created by Hygor Martins on 04/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textIdade: UITextField!
    
    @IBOutlet weak var labelResultadoIdade: UILabel!
    
    @IBAction func descobrirIdade(_ sender: Any) {
        
        guard let idade = textIdade.text else {
            labelResultadoIdade.text = "Oppsss, digite uma idade valida!"
            return
        }
        
        if idade == "" {
            labelResultadoIdade.text = "Oppsss, digite uma idade valida!"
            return
        }
        
        let resultado = Int(idade)! * 7
        
        labelResultadoIdade.text = "A idade do seu doguinho é: " + String(resultado)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

