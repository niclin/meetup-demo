測試步驟

1. 建立帳號，建立 meetup 活動

2. 拿 token

```
curl -i -X POST -d "user[email]=admin@test.com&user[password]=12345678" http://localhost:3000/api/v1/sessions.json
```

3. 拿token 請求 meetup 訊息
```
curl -i -X GET \
  --header "Authorization: Token token=mSDPwft9NnGYzEFLRoaP4g9aq1s+YrclxWoQ45lkubfYbnaes4kvKATgjLFNEE3jeK5hsju4hP+3LDlIbahn2w==, \
  email=bboyceo@hotmail.com" \
  http://localhost:3000//api/v1/meetups
```


