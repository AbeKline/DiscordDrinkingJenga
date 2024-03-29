# DiscordDrinkingJenga
A bot to play drinking jenga in Discord

Download and extract, or clone this repository.
Install node (nodejs.org) - version 16.6.0 or greater.
Open a command prompt, navigate to the files you extracted. 
Run the following command:   
```
npm install
```
Go to [How to Make a Discord Bot](https://www.digitaltrends.com/gaming/how-to-make-a-discord-bot/), follow steps 2-4 to get auth token and add bot to your server. Make sure your bot has permission to View Channels and Send Messages.

Run the configurator: 
```
npm run setup
```

Run the bot: 
On Windows, run RunBot.bat as admin or  
On Windows/Mac/Linux, run `npm start` from a terminal or  
Via Docker:  
```
docker build -t drinkingjengabot .
docker run -d --restart unless-stopped drinkingjengabot
```

Once the bot is live, use `!help` or `!adminhelp` to get list of commands. 

If you have any feedback (tiles, features, or bugs), let us know here: https://forms.gle/eNpbEvrDqzNcgMWc9


To convert a tile set from TSV to JSON:  
Step 1: Execute this substitution regex:  
find: ^([^\t]+)\t([^\t]+)\t([^\t]+)\t([^\t]+)$  
replace: "$1": {"text": "$2", "count": $3,"WAITSR": $4},  
Step 2: Perform some postprocessing to properly form the JSON: add surrounding curly braces and remove the end-of-line comma on the final line  
Step 3: Confirm that the JSON is properly formed, and fix any small discrepancies that may arise. We encountered some discrepancies after Steps 1 and 2, but we're unsure if they were user error or mistakes in the regular expression.  

Note: This bot only can support a single server currently.

Manual configuration (if not using the configurator):  
Create file auth.json in the bot directory, contents should be:   
```{"token":"[your token]"}```

Edit config.json  
• replace permadmins with your (and your fellow admins) [userIds](https://support.discord.com/hc/en-us/articles/206346498-Where-can-I-find-my-User-Server-Message-ID-). Make sure to keep it in a list of strings.  
• replace both instances of "Abe or Michael" with then names of your admin(s).  