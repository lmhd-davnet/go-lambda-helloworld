# Go Lambda HelloWorld


## 2024.05.18 - Initial Tests

I created a Lambda by hand:
https://eu-west-2.console.aws.amazon.com/lambda/home?region=eu-west-2#/functions/go-lambda-helloworld?code&tab=code


Using instructions from
https://docs.aws.amazon.com/lambda/latest/dg/golang-package.html


```
✔ strawb@Sakura ~/git_src/github.com/lmhd-davnet/go-lambda-helloworld (V|https://vault.lmhd.me) [main|✔]
$ GOARCH=arm64 GOOS=linux go build -o bootstrap main.go

$ zip myFunction.zip bootstrap
  adding: bootstrap (deflated 47%)
```

Uploaded that to AWS...


It works!
https://hzlnkxheya6khecdtevqsbj37y0uafwj.lambda-url.eu-west-2.on.aws/


## 2024.05.18 - Adding in GoReleaser


```
goreleaser build --clean --snapshot
```
