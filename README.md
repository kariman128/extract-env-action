## export-env

GitHub Secret에 여러 환경 변수를 **단 하나의 파일**로 등록해 사용할 수 있습니다.

### 사용 예시

- Github Secret

```yml
DB_USERNAME=myuser
DB_PASSWORD=mypassword
API_KEY=myapikey
```

- test.yml

```yml
jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout code
        uses: actions/checkout@v3

      - name: Set environment variables from secret
        uses: miensoap/export-env@v1.0.0
        with:
          env_file_content: ${{ secrets.ENV_FILE_CONTENT }}

      - name: Use environment variables
        run: |
          echo "DB_USERNAME is $DB_USERNAME"
```
