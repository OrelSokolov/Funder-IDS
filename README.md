How to deploy:
==================

* ssh .......
* cd .......
* sudo git pull
* sudo rm pids/unicorn.pid
* ps aux | grep 'unicorn master'
* sudo kill -QUIT [master pid] && sudo unicorn -c unicorn.rb -D
* sudo mongo
* use funders
* db.ids.insert({test: "test"})
* show collections

```
  ids
  system.indexes
```

* sudo ./update_funders.sh
* whenever -w


