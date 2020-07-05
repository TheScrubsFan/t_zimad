# TestZimad Main

## Getting Started

Run bundle (for fish syntax).


```
bundle install --path ~/.bundle --binstubs & git checkout bin/ & spring stop & spring binstub 
```

## Running

Fill redis database.

```
bundle exec rake seed:planes
```

Start server. Available at http://localhost:3000/


```
rails s
```

## Authors

* **Baidin Maxim** - *Creator* - [the_scrubs_fan](https://github.com/TheScrubsFan)



