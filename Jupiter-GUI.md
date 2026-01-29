# Using Jupiter GUI in Docker

### 1. Prerequisites (Host Machine)
You must have an X Server running on your host machine to display the GUI.

#### Windows
1.  **Install VcXsrv** from [Sourceforge](https://sourceforge.net/projects/vcxsrv/)
2.  **Launch VcXsrv** with the following settings:
    -   Display settings: **Multiple windows**
    -   Client startup: **Start no client**
    -   **Extra settings**: **Disable access control** (Check this box! Critical for Docker to connect).

#### Mac (macOS)
1.  **Install XQuartz**: `brew install --cask xquartz`
2.  **Configure Security**:
    -   Open XQuartz.
    -   Go to **Preferences** -> **Security**.
    -   Check **"Allow connections from network clients"**.
3.  **Restart**: You may need to restart XQuartz or even logout/login for changes to take effect.

### 2. Create the container (if you haven't yet)
Run the corresponding script to create the container:

**Windows:**
```powershell
.\create.bat
```

**Mac:**
```bash
./create.sh
```

### 3. Run Jupiter
1.  Start the container:

**Windows:**
```powershell
.\run.bat
```

**Mac:**
```bash
./run.sh
```

2.  Inside the container, test the GUI:

```bash
jupiter
```

This should open the Jupiter GUI, ignore any message related to GUI that appears on your terminal. Do not close the terminal while using Jupiter.


> [!NOTE]
> If you see an error like `Can't connect to X11 window server` or `HeadlessException`, double-check that your X Server is running and "Disable access control" is checked.
