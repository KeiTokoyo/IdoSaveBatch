# README.md

## ido_save.bat

### Overview

This is used to transfer and share saved data between devices in the PC game Initial Drift Online([Steam Store Page](https://store.steampowered.com/app/1456200/Initial_Drift_Online/)).

While the game **shares and updates some of its data with the Steam Cloud**, some data such as car ownership data and controller registration information is stored in the **Windows Registry**, which means that the game data cannot be fully restored and played between devices unless this is reflected. In such a case, you need to go through the registry every time you want to restore the game data.

This is for people who don't want to open the Registry Editor and manipulate the registry every time they want to do so.

If you perform the following preparations and then run the program, the IDO registry for the section you run will be saved.

**Right-click the file -> Run with administrator privileges** to avoid being killed by Windows Smart Scan.

### Running Environment

Windows OS (I don't think anyone else does IDO, so here it is...)

### File Format

bat/ANSI

**Changing the character encoding from ANSI probably won't work**.

### What you need to do

Open the bat file in **Windows Notepad** and change the path in the variable `defaultsavepath` to the directory path where you want to save it.

```bat
set defaultsavepath=<YOUR SAVE DIRECTORY PATH>
```

**Note:**

- If the directory path contains spaces, **be sure to enclose it in double quotation marks**.
- **Save in ANSI character encoding**.

### Supplemental Information

- Content source for [Overview](#overview): [Youtube: BACKUP YOUR IDO SAVE FILE! - Initial Drift Online Tutorial](https://www.youtube.com/watch?v=avirEc9puEw)
- Initial Drift Online Registry Location
    - `Computer\HKEY_CURRENT_USER\SOFTWARE\Rewindapp\Initial Drift`