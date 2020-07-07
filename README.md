# TestZimad Main

## Description

Есть аэропорт с одной взлетной полосой. Диспетчеру предоставляется интерфейс, позволяющий отправить самолет на взлет.
Интерфейс позволяет отправлять несколько самолетов на взлет одновременно. Сам взлет занимает 10+ секунд. 
Интерфейс отображает текущий статус самолета (вылетел, ожидает вылета (если отправили на взлет несколько), в ангаре), а также историю изменения статуса. 
Требования: 
- обновление фронтэнда в реальном времени;
- взлётом занимается отдельный микросервис, который отсчитывает случайное количество секунд и возвращает сигнал о том, что самолёт взлетел;
- для хранения использовать NoSQL базу данных.

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
## Built With

* Ruby - 2.6.0
* Rails - 6.0.3

## Authors

* **Baidin Maxim** - *Creator* - [the_scrubs_fan](https://github.com/TheScrubsFan)



