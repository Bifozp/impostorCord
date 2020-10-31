# impostorCord
[Impostor](https://github.com/impostor/Impostor) is a self hostable among us server that also has plugin support

ImpostorCord is a plugin for impostor that automatically mutes and unmutes players according to their state

## Usage
obviously you have to install impostor itself which requires .NET 5.0 which is currently in preview 

also make sure you download the beta (1.2.X) version NOT the stable version (1.1.0), the stable version has no plugin support yet

get the latest release from the releases page and put the contents of the zip in your impostor folder

this is what your direvctory should look like:<br>

├── Impostor.Server(.exe)<br>
├── config.impostorCord.json<br>
├── config.json<br>
└── plugins<br>
&nbsp;&nbsp;├── ImpostorCord.dll<br>
&nbsp;&nbsp;├──(bunch of dependency files)<br>

you also need a discord bot token and there are many guides on the internet about how to do that so im not gonna get in to it here

the permissions that we are gonna need are `mute members`, `deafen members` and  `send message` or put it on administrator but that's a bit risky if someone finds your token some bad stuff can happen to your discord server 

after doing all of those open `config.impostorCord.json` and put your bot token in the \<TOKEN> section

after all of that you should be able to start the server by opening Impostor.Server(.exe)

## Commands

| command   | alias | syntax                                  | usage                                                                              |
|-----------|-------|-----------------------------------------|------------------------------------------------------------------------------------|
| newgame   | ng    | newgame <game code>                     | connects specified game to a voice chat                                            |
| endgame   | eg    | endgame <game code>                     | disconnects specified game from a voice chat  (user must be in related voice chat) |
| join      | j     | join <color>                            | join user as specified color                                                       |
| forcejoin | fj    | forcejoin <color> <user to force join>  | join specified user to specified color  (mention specified user)                   |
| kick      | k     | kick <color>                            | clears user data from specified color                                              |