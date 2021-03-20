# TestZimad Main

## Description

Есть аэропорт с одной взлетной полосой. Диспетчеру предоставляется интерфейс, позволяющий отправить самолет на взлет.
Интерфейс позволяет отправлять несколько самолетов на взлет одновременно. Сам взлет занимает 10+ секунд. 
Интерфейс отображает текущий статус самолета (вылетел, ожидает вылета (если отправили на взлет несколько), в ангаре). 
Требования: 
- обновление фронтэнда в реальном времени;
- взлётом занимается отдельный [микросервис](https://github.com/TheScrubsFan/TestZimad-api), который отсчитывает случайное количество секунд и возвращает сигнал о том, что самолёт взлетел;
- для хранения использовать NoSQL базу данных.

## Getting Started Main

Use main folder.

```
cd main/
```

Run bundle.

```
bundle install
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



## Getting Started API

Use api folder.

```
cd api/
```

Run bundle.

```
bundle install
```

## Running

Start sidekiq.

```
bundle exec sidekiq -r ./server.rb
```

Start server. Available at http://localhost:9292


```
bundle exec rackup
```
## Built With

* Ruby - 2.6.0



## Authors

* **Baidin Maxim** - *Creator* - [the_scrubs_fan](https://github.com/TheScrubsFan)



