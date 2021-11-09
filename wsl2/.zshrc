export PATH="${PATH}:/home/$USER/bin"
export PATH="$PATH:$HOME/.pulumi/bin:/usr/local/bin/gradle/gradle-7.2/bin"

alias apt="sudo apt"
alias apt-get="sudo apt-get"
alias docker="sudo docker"
alias toolbox="docker run -it --rm -v ~/.kube:/root/.kube -v ~/git:/root/git -v ${PWD}:/root/project ksandermann/cloud-toolbox /bin/zsh"
alias python="python3"

service dnsmasq status > /dev/null
if [ $? -eq 3 ]; then echo "Dnsmasq not running, please provide sudo pw to start it..."; sudo service dnsmasq start; fi

if [[ "$(pwd)" =~ "/mnt/c/*" ]]; then
    cd ~
fi
