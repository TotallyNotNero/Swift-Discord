//
//  DiscordCache.swift
//  Discord
//
//  Created by TotallyNotNero on 7/17/21.
//

import Foundation
import Logging

fileprivate let logger = Logger(label: "DiscordCache");

/// The manager of the client's cache.
open class DiscordCache {
    
    /// The manager of the message cache.
    public var messages = [MessageID : DiscordMessage]();
    
    /// The manager of the channel cache.
    public var channels = [ChannelID : DiscordGuildChannel]();
    
    /// The manager of the guild cache.
    public var guilds = [GuildID : DiscordGuild]();
    
    /// The manager of the member cache.
    public var users = [UserID : DiscordGuildMember]();
    
    ///
    /// Clears the client's cache. Every item is deleted and the cache is effectively destroyed.
    ///
    ///
    open func clearCache() {
        
        logger.info("Clearing client cache");
        
        messages.removeAll();
        
        channels.removeAll();
        
        guilds.removeAll();
        
        users.removeAll();
        
    };
    
};
