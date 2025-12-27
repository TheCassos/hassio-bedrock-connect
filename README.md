# BedrockConnect Home Assistant addon

This is Home Assistant addon for [BedrockConnect](https://github.com/Pugmatt/BedrockConnect) app

TL; DR; this apps allow you to connect to your own (or actually any) Minecraft Bedrock server on your PS4/PS5, Nintendo Switch and Xbox console.

## forked from: patrikulus/hassio-bedrock-connect to resolve version issues, causing addon not to work on latest HAOS ##

Minor Alterations I made to patrikulus's project:
1. BedrockConnect version is no longer fixed, replaced with "latest" (minimal intervention required from me, just rebuild docker addon from HAOS).
2. OpenJDK (from Docker) replaced with OpenJDK by Eclipse Temurin: https://hub.docker.com/_/eclipse-temurin/
3. OpenJDK (now by Eclipse-Temurin) version is no longer fixed, always latest (minimal intervention required from me, just rebuild docker addon from HAOS)

## 26th Dec 2025 works :) Kids are happy ##

1. Add to HAOS in Addons, Addons Store, repositories, url:
https://github.com/TheCassos/hassio-bedrock-connect
2. install addon: BedrockConnect Add-on
3. Configure Addon - Set your server list in addon config. Please refer to the [documentation](https://github.com/Pugmatt/BedrockConnect?tab=readme-ov-file#defining-your-own-custom-servers) of BedrockConnect
3. Start the addon
4. Play Minecraft on your console on LAN :)

Optional, for BedrockConnect while  Minecraft is on Online play:

Context & Info:
I use AdGuard Home (local DNS server) on my HA Green also, so I already have a local DNS server setup (192.168.130.254) on same host (HA Green) 
- my DHCP server informs all clients to use 192.168.130.254 for DNS already.
- AdGuard is great, I recommend you use it anyway and its easy to install on HAOS.
The key thing we need is DNS hostname overides / DNS Rewrite - allows for rewriting requests
- any DNS Server or proxy that can do this will work.

1. Install, configure and use AdGuard Home on your HAOS and networks - see here: (https://www.home-assistant.io/integrations/adguard/ & https://github.com/hassio-addons/addon-adguard-home)
3. add DNS Rewrites to AdGuard:
geo.hivebedrock.network <ip of your HAOS, in my case is 192.168.130.254)
4. on console, go to Play, then Servers
5. select 'The Hive'
this will load BedrockConnect, from HAOS, while Minecraft is Online

Remember in order for this addon to work correctly, your HA instance and console must be both in the same VNET (if you have more complicated network setup,  but I assume this might be the case since you're using Home Assistant)
