# Aseprite Clipboard Color Toggle
A small Aseprite script that let's you paste a hex color from your clipboard into the foreground color and toggle back to your previous color if the same clipboard value is used again.


# Features
- Paste hex colors directly from clipboard
- Supports:
  - #RRGGBB
  - RRGGBB
  - #RRGGBBAA
  - RRGGBBAA
- Press the same shortcut again to restore the previous foreground color
- Simple single-key workflow (no dialogs)

# Installation
**1. Download the Script**  
Download:
```
PasteColor.lua
```

**2. Open Aseprite Scripts Folder**  
In Aseprite:
```
File -> Scripts -> Open Scripts Folder
```

**3. Add the Script**  
Copy `PasteColor.lua` into that folder.

**4. Reload Scripts**  
In Aseprite:
```
File -> Scripts -> Rescan Scripts Folder
```

# Keyboard Shortcut Setup
Aseprite does not allow scripts to auto-assign shortcuts, so you must bind it manually.

**1. Open Keyboard Shortcuts**  
```Edit -> Keyboard Shortcuts```  

**2. Find the Script**  
Search for:
```PasteColor```  

**3. Assign Shortcut**  
Click the shortcut field and assign:
```F1```
(or any key you prefer)  

# Usage
1. Copy a hex color code to your clipboard
2. Switch to Aseprite
3. Press your assigned shortcut (e.g. F1)
4. Foreground color changes to the clipboard color
5. Press F1 again - returns to previous color

# Notes
- Uses Lua global variables to remember the previous color
- Works per Aseprite session (state resets after restart)
- Invalid clipboard input is ignored
- Designed for fast palette switching while drawing

# Example Workflow
- Copy #FF8800
- Press F1
- brush becomes orange
- Press F1 again - returns to previous color
- Copy #00FFAA
- Press F1 - brush becomes teal

# License
MIT
