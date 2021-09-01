//
//  DiscordWebSocket.swift
//  Discord
//
//  Created by TotallyNotNero on 8/31/21.
//

import Foundation
import Logging
import WebSocketKit

fileprivate let logger = Logger(label: "DiscordWebSocket")

/// Handler of the raw websocket dispatch events
open class DiscordWebsocket {
    // MARK: Properties
    
    /// The raw voice state data sent from the dispatch
    public var voiceStateData: [String : Any]?
    
    /// The raw voice server data sent from the dispatch
    public var voiceServerData: [String : Any]?
    
    
}
