// Copyright © 2021 Encrypted Ink. All rights reserved.

import Cocoa

class ApproveViewController: NSViewController {
    
    @IBOutlet weak var titleLabel: NSTextField!
    
    var approveTitle: String!
    var meta: String!
    var completion: ((Bool) -> Void)!
    
    static func with(title: String, meta: String, completion: @escaping (Bool) -> Void) -> ApproveViewController {
        let new = instantiate(ApproveViewController.self)
        new.completion = completion
        new.meta = meta
        new.approveTitle = title
        return new
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.stringValue = approveTitle
        // TODO: setup meta
    }

    @IBAction func actionButtonTapped(_ sender: Any) {
        completion(true)
    }
    
    @IBAction func cancelButtonTapped(_ sender: NSButton) {
        completion(false)
    }
    
}