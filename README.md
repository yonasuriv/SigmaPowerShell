

# Sigma PowerShell

![SigmaPowerShell](https://user-images.githubusercontent.com/59540565/174658706-d0d0977d-51b6-4d36-9dd2-abcc171fcb7d.jpg)


Auto upgrade your bash **terminal** with **one click** using Z shell with Power Level 10K upgraded engine.

### <p align="center">Before</p>
![Before](https://user-images.githubusercontent.com/59540565/174824156-db4fb27d-3058-41fe-9c41-d9cb8899cff1.jpg)

### <p align="center">After</p>
![After](https://user-images.githubusercontent.com/59540565/174834630-52408a60-5ce9-41b5-8222-63e2fc534f74.jpg)

### Requeriments
-- GNU/Linux Operating System

### Installation
Simply clone this repository and run the following script on the terminal using:

```sh sigmaupgrade.sh```

### Documentation

 - I've created this script because I was traveling and my internal hard
   drive broke 
 - And I was forced to create a Linux Live ISO
 - But since everything was lost upon restart,
 - I've created this customization script to add to my DOT files

 


### How it works

 1. Asks you if you are running the script through a Live ISO
 2. Searchs for your OS to use your package manager 
 3. Installs Z Shell
 4. Installs recommended fonts automatically 
 5. Installs the configuration I think it's the best one 
 6. Makes Z Shell your default shell by changing the exec on your bashrc
 
You can change the configuration to the one you like most by running:

```sigmaconfig```

#### Credits

This script was based on powerlevel10k by [romkatv](https://github.com/romkatv) 


