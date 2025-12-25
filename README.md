# BedrockConnect Home Assistant addon

This is Home Assistant addon for [BedrockConnect](https://github.com/Pugmatt/BedrockConnect) app

TL; DR; this apps allow you to connect to your own (or actually any) Minecraft Bedrock server on your PS4/PS5 and Xbox console.

1. Install this addon
2. Set your server list in addon config. Please refer to the [documentation](https://github.com/Pugmatt/BedrockConnect?tab=readme-ov-file#defining-your-own-custom-servers) of BedrockConnect
3. Start the addon
4. Play Minecraft on your console :)

Remember in order for this addon to work correctly, your HA instance and console must be both in the same VNET (if you have more complicated network setup,  but I assume this might be the case since you're using Home Assistant)

# forked from patrikulus/hassio-bedrock-connect:main to resolve version issues with Bedrock Connect & replace Docker OpenJDK #

## currently testing ##

Add to HAOS in Addons, Addons Store, repositories, url:
https://github.com/TheCassos/hassio-bedrock-connect

then install configure and install addon: BedrockConnect Add-on
