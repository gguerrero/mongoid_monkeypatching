# MongoidMonkeypathing
This tiny gem is created to fix some bugs or behaviours not desired from [Mongoid](https://github.com/mongoid) project.
So far, those are the fixes included:
* ```.last``` method invokes ```.first``` because of the [default sorting lack](http://stackoverflow.com/questions/35039847/the-bug-of-mongoid-returning-first-document-when-invoking-last).

## Dependencies
Very carefull at this point because those fixes are just tested on **mongoid version '~> 5.1'**.


## Run tests
To run the tests just run ```rake spec``` on your console.


## License
This project uses [*MIT-LICENSE*](http://en.wikipedia.org/wiki/MIT_License).
