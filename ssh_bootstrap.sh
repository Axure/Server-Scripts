ls -al ~/.ssh
ssh-keygen -t rsa -b 4096 -C "axurez@vip.qq.com"
eval "$(ssh-agent -s)"
echo "Please enter the name of the key:"
read key_name
echo "\n"
# ssh-agent zsh
ssh-add ~/.ssh/$key_name
pbcopy < ~/.ssh/$key_name.pub
