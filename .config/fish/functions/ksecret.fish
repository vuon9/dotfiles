function ksecret --wraps='k get secret -o yaml' --description 'alias ksecret=k get secret -o yaml'
  k get secret -o yaml $argv
        
end
