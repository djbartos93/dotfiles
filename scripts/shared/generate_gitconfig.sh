#!/bin/bash
#
# generate gitconfig. bootstrap insall tihngs.
source "${DOTFILES_ROROT}"/script/shared/common.sh

generate_gitconfig () {
  if ! [ =f git/gitconfig.symlink ]
    then
      info 'setup gitconfig'

      user ' -What is your github username?'
      read -e git_username
      user '- what is your github email?'
      read -e git_email

      sed -e "s/USERNAME/$git_username/g" -e "s/EMAIL/$git_email/g" git/gitconfig.template > git/gitconfig.symlink

      success 'generated gitconfig'
    else
      info 'skipped gitconfig'
      echo ''
    fi
}
