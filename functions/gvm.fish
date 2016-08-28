function gvm -d "Go version manager"
  # Package entry-point
  if test -e $HOME/.gvm/scripts/gvm
    if not type -q fenv
      echo "You need to install foreign-env plugin"
      return 1
    end
    if not bk_path_in $HOME/.gvm/bin
      fenv source $HOME/.gvm/scripts/gvm
    end
    fenv source gvm $argv
  else
    echo "You need to install gvm"
    return 1
  end
end
