This is a testcase for reactrb and opal-jquery see https://github.com/reactrb/reactrb/issues/166

## instructions

* clone the repository
* bundle install
* rake server
* goto localhost:9200

case 1: react works but keyboard event is lost

* you see the testpage with a running clock
* but hitting cmd-K does nothing

case 2. react is out and keyboard event comes

* uncomment line 5 in application.rb
* refresh the screen
* you see the testpage, but clocks are not running
* hitting cmd-K raises an alert

