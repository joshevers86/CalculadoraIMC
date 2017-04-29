//
//  ViewController.swift
//  CalculadoraIMC
//
//  Created by Jose Navarro Alabarta on 5/1/16.
//  Copyright © 2016 Jose Navarro Alabarta. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var peso: UITextField!
    @IBOutlet weak var estatura: UITextField!
    
    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var resultado: UILabel!
    var langStr = Locale.current.languageCode
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        peso.delegate=self
        estatura.delegate=self
        print("Idioma: \(String(describing: langStr!))")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func textFieldDidBeginEditing(_ textField: UITextField) {
        var punto : CGPoint
        punto = CGPoint(x: 0, y: textField.frame.origin.y-50)
        self.scroll.setContentOffset(punto, animated: true)
    }
    
    @IBAction func textFieldDidEndEditing(_ textField: UITextField) {
        self.scroll.setContentOffset(CGPoint.zero, animated: true)
    }
    
    
    @IBAction func backgroudnTap(_ sender: UIControl){
        peso.resignFirstResponder() //desaparecer el teclado
        estatura.resignFirstResponder() //desaparecer el teclado
        
    }
    
    
    @IBAction private func textFieldDoneEditing(_ sender: UITextField){
        sender.resignFirstResponder() //desaparece el teclado
        
    }

    @IBAction func calcularIMC(_ sender: Any) {
        
       //resultado.text = "\(imc())"
        
    }
    
    func imc () -> Double {
        
        var IMC:Double
        
        if let pesoLocal = Double(self.peso.text!),  let estaturaLocal = Double(self.estatura.text!){
            print("Tu peso: \(pesoLocal) y tu altura: \(estaturaLocal)")
            IMC = pesoLocal / (estaturaLocal/100.0 * estaturaLocal/100.0)
        }else{
            print("El formulario se ha rellenado mal")
            IMC=0.0
        }
        
        return IMC
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resu = imc()
        let sigVista = segue.destination as! VistaResultados
        sigVista.indiceIM=resu
        sigVista.idioma = langStr!
    }

}

