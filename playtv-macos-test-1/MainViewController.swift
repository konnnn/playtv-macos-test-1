//
//  ViewController.swift
//  playtv-macos-test-1
//
//  Created by Evgeny Konkin on 13.04.2019.
//  Copyright © 2019 Evgeny Konkin. All rights reserved.
//

import Cocoa
import AVKit
import AVFoundation

class MainViewController: NSViewController {
    
    @IBOutlet weak var playerView: AVPlayerView!
    
    var player: AVPlayer?
    
    // Каналы новостей http://iptvsensei.ru/kanalyi-novostey
    
    // Россия 24 http://24121978.iptvbot.net/iptv/VSMYUYTV6UWLB3/507/index.m3u8
    // СТС http://24121978.iptvbot.net/iptv/VSMYUYTV6UWLB3/506/index.m3u8
    // Пятница http://24121978.iptvbot.net/iptv/VSMYUYTV6UWLB3/503/index.m3u8
    // ТНТ http://24121978.iptvbot.net/iptv/VSMYUYTV6UWLB3/502/index.m3u8
    // TV 1000 http://24121978.iptvbot.net/iptv/VSMYUYTV6UWLB3/132/index.m3u8
    // TV 1000 Action http://24121978.iptvbot.net/iptv/VSMYUYTV6UWLB3/131/index.m3u8
    
    // BBC News http://ott-cdn.ucom.am/s24/04.m3u8
    // News https://abc-iview-mediapackagestreams-1.akamaized.net/out/v1/50345bf35f664739912f0b255c172ae9/index_1.m3u8
    // ABC News http://abclive2-lh.akamaihd.net/i/abc_live11@423404/index_4000_av-p.m3u8
    // RT http://rt-news.secure.footprint.net/1103-inadv-qidx-1k_v5.m3u8
    var urlString = "http://24121978.iptvbot.net/iptv/VSMYUYTV6UWLB3/503/index.m3u8"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //
        self.view.wantsLayer = true
        
        let backgroundImage = NSImage(named: "bg")
        self.view.layer?.contents = backgroundImage
        
        guard let url = URL(string: urlString) else {
            print("\n\nPlayer url is empty")
            playerView.isHidden = true
            return
        }
        
        // Create a new AVPlayer and associate it with the player view
        playerView.isHidden = false
        player = AVPlayer(url: url)
        playerView.player = player
        player?.play()
        
        print("\n\nPlayer is playing\n\n")
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

