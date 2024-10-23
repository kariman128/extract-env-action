## export-env-action

GitHub Secret에 여러 환경 변수를 **단 하나의 파일**로 등록해 사용할 수 있습니다.

### 사용 예시

- **Github Secret** : ENV_FILE_CONTENT

```yml
DB_USERNAME=myuser
DB_PASSWORD=mypassword
API_KEY=myapikey
```

- test.yml

```yml
jobs:
  test:
    runs-on: ubuntu-latest

    steps:
      - name: Set environment variables from secret
        uses: Miensoap/extract-env-action@v0.0.3
        with:
          env_file_content: ${{ secrets.ENV_FILE_CONTENT }}

      - name: Use environment variables
        run: |
          echo "DB_USERNAME is $DB_USERNAME"
```

### 테스트 결과

![image](https://github.com/user-attachments/assets/6b1a1419-83ee-483f-a745-f48d35d8dd8d)

