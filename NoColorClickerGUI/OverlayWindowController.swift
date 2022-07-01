//
//  OverlayWindowController.swift
//  NoColorClickerGUI
//
//  Created by Boris Mezhibovskiy on 6/30/22.
//

import Cocoa

class OverlayWindowController: NSWindowController {
    static let thickBorderWidth: CGFloat = 6
    var greenBorder = false
    var thickBorder = false
    override func windowDidLoad() {
        super.windowDidLoad()
        start()
    }
    func start() {
        let thickWidth = OverlayWindowController.thickBorderWidth
        contentViewController?.view.layer?.borderWidth = thickBorder ? thickWidth : thickWidth/2
        contentViewController?.view.layer?.borderColor = greenBorder ?
        CGColor(red: 0, green: 1, blue: 0, alpha: 0.6) :
        CGColor(red: 1, green: 0, blue: 0, alpha: 0.6)

        DispatchQueue.main.asyncAfter(deadline: .now()+0.1) {
            self.start()
        }
    }
}

