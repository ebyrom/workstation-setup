#!/bin/bash

if [ -d ~/.bash_it ]; then
    echo "bash-it directory already exists. Not reinstalling."
    (return 2>/dev/null) && return 0 || exit 0
fi

echo "Downloading and configuring bash-it..."

cp $DIR/../../files/dircolors.ansi-dark ~/.dircolors
cp $DIR/../../files/.inputrc ~/.inputrc

rm -rf ~/.bash_it
git clone https://github.com/Bash-it/bash-it.git ~/.bash_it

#cp $DIR/../../files/add_user_initials_to_git_prompt_info.bash ~/.bash_it/custom
#cp $DIR/../../files/bobby_pivotal/bobby_pivotal.theme.bash ~/.bash_it/themes/bobby/bobby.theme.bash
#cp $DIR/../../files/cf_cli.completion.bash ~/.bash_it/completion/available
#cp $DIR/../../files/direnv.bash ~/.bash_it/custom/direnv.bash

~/.bash_it/install.sh --silent --no-modify-config
source ~/.bash_profile

#bash-it enable completion git
#bash-it enable plugin ssh
#bash-it enable plugin rbenv
#bash-it enable completion ssh
#bash-it enable completion cf_cli