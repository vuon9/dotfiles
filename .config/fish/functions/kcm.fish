function kcm --wraps='k get cm -o yaml' --description 'alias kcm=k get cm -o yaml'
  k get cm -o yaml $argv
        
end
