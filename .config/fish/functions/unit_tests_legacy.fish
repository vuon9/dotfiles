function unit_tests_legacy --wraps='cd ~/workspace/gitlab/legacy && XDEBUG_MODE=off ./librairies/composer/vendor/phpunit/phpunit/phpunit  --configuration .cicd/config/ci.test.unit.xml --testsuite Unit --colors=always --testdox' --description 'alias unit_tests_legacy=cd ~/workspace/gitlab/legacy && XDEBUG_MODE=off ./librairies/composer/vendor/phpunit/phpunit/phpunit  --configuration .cicd/config/ci.test.unit.xml --testsuite Unit --colors=always --testdox'
  cd ~/workspace/gitlab/legacy && XDEBUG_MODE=off ./librairies/composer/vendor/phpunit/phpunit/phpunit  --configuration .cicd/config/ci.test.unit.xml --testsuite Unit --colors=always --testdox $argv
        
end
