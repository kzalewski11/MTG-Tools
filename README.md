# MTG-Tools
Tools for deckbuilding in Magic The Gathering Arena

## MTGAddToCart.ps1:
This is the current version of the script. It takes clipboard data from MTGA and removes end-line garbage, opens a browser window to TCGPlayer, and adds the cards in the deck to the cart using the Mass Entry feature.

### Use Procedure
- Open MTGA
- From Decks screen, select desired deck
- Click Export
- Run Script
- Use website interface to complete transaction

### Known bugs
- Error message is sometimes displayed in PowerShell window, but has no known effect on script performance
- If you already have cards in your cart at TCGPlayer, the Mass Entry may error out in cases of very low stock of particular cards
- Similarly, if their quantity on hand is not equal or greater to your deck's requirement, you'll see a message at the top of the Mass Entry screen indicating this.

## MTGremoveUselessStuff.ps1
This script is a previous version which edits an existing text file consisting of data posted exactly from a deck export in MTGA. Running this script requires a text file to already have been created and a user-provided absolute file path or relative file path based on the location of the script.
### Use Procedure
- Open MTGA
- From Decks screen, select desired deck
- Click Export
- Open Notepad and paste data (ctrl-v)
- Save .txt document to desired location (same directory as script works well for usability)
- Run powershell script
- Enter file path (absolute or relative based on above description) when prompted
