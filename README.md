# RE Brainfuck Tunnel - Psiphon Pro Go Version

## Requirements

**Android:**

Termux [https://github.com/termux/termux-app/releases/tag/v0.118.1](https://github.com/termux/termux-app/releases/tag/v0.118.1)

SocksDroid [https://github.com/bndeff/socksdroid/releases/download/1.0.4/socksdroid-1.0.4.apk](https://github.com/bndeff/socksdroid/releases/download/1.0.4/socksdroid-1.0.4.apk)

## Install

**Open termux and run:**
1. Grant access storage permission
```bash
termux-setup-storage
```
2. Install
```bash
rm -rf Psiphon && pkg install git && pkg install screen && git clone https://github.com/trongtinh7727/Psiphon.git && clear && cd Psiphon && chmod a+x tun && chmod a+x psiphon-tunnel-core && chmod a+x *.sh && echo 'PATH="$PATH:$HOME/Psiphon"' >> $HOME/.bashrc && source $HOME/.bashrc && echo 'PATH="$PATH:$HOME/Psiphon"' >> $HOME/.zshrc && source $HOME/.zshrc && clear && cd
```

## Configuration & Usage:
**Android (Termux)**

### Step1 - SocksDroid Setup:
    $ DNS Server: 203.113.131.6
    $ App List: Include com.termux.
    $ Enable: Connect on Boot, Pre-app proxy, Bypass Mode.
    $ Activate SocksDroid.
    
### Step2 Termux:
    $ Execute: type `tun` and enter
    $ Enjoy!
    

![image](https://github.com/trongtinh7727/Psiphon/assets/72309458/af561b91-d232-4798-b01c-ffacd913a901)

![image](https://github.com/trongtinh7727/Psiphon/assets/72309458/7eac66c7-72b1-49ed-b486-15cfbe7fb43d)

![image](https://github.com/trongtinh7727/Psiphon/assets/72309458/337f6f51-21e4-4d4c-a74a-a7ffa9ec5b4c)
