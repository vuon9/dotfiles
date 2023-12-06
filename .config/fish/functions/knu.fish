function knu --wraps='k config set-context --current --namespace' --description 'alias knu=k config set-context --current --namespace'
  k config set-context --current --namespace $argv
        
end
