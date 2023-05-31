//
//  ViewController.swift
//  TestOmise
//
//  Created by Wirunpong Jaingamlertwong on 31/5/2566 BE.
//

import OmiseSDK
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapOpenCreditCard(_ sender: Any) {
        let creditCardViewController = CreditCardFormViewController.makeCreditCardFormViewController(withPublicKey: "pkey_test_5v4nlfn24loyz2f05g3")
        creditCardViewController.delegate = self
        creditCardViewController.handleErrors = true
        present(creditCardViewController, animated: true)
    }
}

extension ViewController: CreditCardFormViewControllerDelegate {
    
    func creditCardFormViewController(_ controller: OmiseSDK.CreditCardFormViewController, didSucceedWithToken token: OmiseSDK.Token) {
        controller.dismiss(animated: true)
    }
    
    func creditCardFormViewController(_ controller: OmiseSDK.CreditCardFormViewController, didFailWithError error: Error) {
        controller.dismiss(animated: true)
    }
    
    func creditCardFormViewControllerDidCancel(_ controller: OmiseSDK.CreditCardFormViewController) {
        controller.dismiss(animated: true)
    }
}
