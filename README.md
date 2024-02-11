# 手順

### docker起動

```bash
$ docker-compose up --build -d
```

### PHPを管理するappコンテナに入る
```bash
$ docker-compose exec app bash
```

### 初回だけ、dump-autoloaderを実行
```bash
# composer dump-autoload
```
