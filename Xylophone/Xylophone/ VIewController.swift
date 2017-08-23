//
//  ViewController.swift
//  Xylophone
//
//
import AVFoundation//AUDIO VISUAL FOUNDATION
import UIKit

class ViewController: UIViewController{

    var audioPlayer : AVAudioPlayer!// global variable
    var selectedSounfFileName : String = ""
    let soundArray =  ["note1","note2","note3","note4","note5","note6","note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
    
             selectedSounfFileName = soundArray[sender.tag - 1]
            print(selectedSounfFileName)
            playSound()
        
        
        
            /* TRY! master override*/
            
            /*so{
             try audioPlayer = AVAidioPlayer(contentsOf: soundURL!)
             }
             catch{
             print(error)
             
             }
             */
            
            
            
            
        
        }
    func playSound() {
        
        
        //constant let name soundurl, resourne name of file, extension file type
        let soundURL = Bundle.main.url(forResource: selectedSounfFileName, withExtension: "wav")
        
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch{
            print(error)
        }
        audioPlayer.play()    }
}
