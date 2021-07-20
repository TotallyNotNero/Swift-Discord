# Discord Client for Swift

[![Linux](https://github.com/TotallyNotNero/Swift-Discord/actions/workflows/linux.yml/badge.svg)](https://github.com/TotallyNotNero/Swift-Discord/actions/workflows/linux.yml)
[![Docs](https://github.com/TotallyNotNero/Swift-Discord/actions/workflows/docs.yml/badge.svg)](https://totallynotnero.github.io/Swift-Discord)

A Discord API client library for Swift.

## Example

```swift
import Discord
import Dispatch

class Bot: DiscordClientDelegate {
    private var client: DiscordClient!

    init() {
        client = DiscordClient(token: "Bot myjwt.from.discord", delegate: self)
        client.connect()
    }

    func client(_ client: DiscordClient, didCreateMessage message: DiscordMessage) {
        if message.content == "ping" {
            message.channel?.send("pong")
        }
    }
}

let bot = Bot()
dispatchMain()
```

## Features

- macOS and Linux support
- v9 API (including interactions, slash commands, stickers and message components)
- Configurable sharding
- Voice support
- Customizable cache

## Caching
This library fork introduces caching. Because this is a breaking change, it is not forced, however it is strongly recommended. The `DiscordCache` class handles it, caching messages, guilds, members and channels and storing them in a dictionary. A function, called `clearCache` clears the cache and is recommended to be ran either on the ready event or periodically, using DispatchQueue. 

**What are the advantages to caching?**
- Faster performance
- Easy fetching of guild/message/channel/user objects

**How do I use caching?**
1. First, initialize your client using the example above.
2. In your ClientOptions, specify what you want cached. You can choose between `messages`, `guilds`, `members` and `channels`, or you can leave it blank to cache nothing.

To access your cache, simply run `client.cache.cachetype[correspondingID]`

Example: 
```js
client.cache.messages[message.id].author.username
```
This will obviously return the username of the message's author.

## Requirements

- Swift 5+
- `libopus`
- `libsodium`
- Recommended: `ffmpeg` (Without FFmpeg you must send raw audio)

## Installation
Add this .git URL to your [Swift Package file](https://prnt.sc/1cuo4pc).

Be sure to use this library in a bot that has been created as a Swift Executable Package - after, you may generate an xcodeproj if you wish.

## Building

`swift build`

## Usage

Checkout the [Getting Started](https://swiftdiscord.etronicindustries.org/getting-started.html) page for a quickstart guide.
