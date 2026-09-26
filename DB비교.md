# DB 비교

## 1. 한눈에 비교

| 구분 | SQLite | MySQL | PostgreSQL | SQL Server |
|---|---|---|---|---|
| 개발/관리 | SQLite 프로젝트 | Oracle | PostgreSQL Global Development Group | Microsoft |
| 기본 형태 | 임베디드 DB | 서버형 DB | 서버형 DB | 서버형 DB |
| 별도 DB 서버 | 필요 없음 | 필요 | 필요 | 필요 |
| 데이터 관리 | 주로 파일 | DB 서버가 관리 | DB 서버가 관리 | DB 서버가 관리 |
| 대표 용도 | 앱 내장, 학습, 테스트 | 웹 서비스, 일반적인 서버 DB | 복잡한 데이터 처리, 고급 SQL | 기업 시스템, Microsoft 생태계 |
| 동시 접속 | 상대적으로 제한적 | 강함 | 강함 | 강함 |
| 확장성 | 제한적 | 높음 | 높음 | 높음 |
| SQL 기능 | 비교적 단순 | 풍부 | 매우 풍부 | 매우 풍부 |
| JSON/고급 타입 | 제한적 | 지원 | 매우 강함 | 강함 |
| 기업 시스템 | 상대적으로 적음 | 매우 흔함 | 매우 흔함 | 매우 흔함 |


- "SQLite도 여러 명이 쓸 수 있는데 왜 임베디드 DB라고 하지?"라는 의문이 생긴다면,
    - 임베디드라는 말은 사용자 수를 뜻하는 게 아니라, DB 엔진이 애플리케이션에 내장되어 동작하는 방식을 뜻하기 때문이야.
---

## 2. SQLite

### 특징

SQLite는 **서버가 없는 임베디드 데이터베이스**다.

```text
애플리케이션
     │
     ▼
  SQLite
     │
     ▼
 database.db
```

애플리케이션이 SQLite 라이브러리를 통해 데이터베이스 파일을 직접 사용한다.

```bash
sqlite3 library.db
```

위와 같이 실행하면 `library.db` 파일을 데이터베이스로 사용한다.

### 장점

- 설치와 설정이 간단하다.
- 별도의 DB 서버가 필요하지 않다.
- 데이터베이스를 하나의 파일로 관리할 수 있다.
- 테스트와 개발이 편하다.
- 모바일/임베디드 환경에 적합하다.

### 단점

- 서버형 DB에 비해 동시 쓰기 처리에 제약이 있다.
- 대규모 서버 서비스에는 일반적으로 적합하지 않다.
- MySQL, PostgreSQL 등에 비해 제공하는 고급 기능이 적다.

### 대표적인 사용 상황

```text
모바일 앱
테스트 환경
개인 프로그램
소규모 프로그램
학습용 DB
```

---

## 3. MySQL

### 특징

MySQL은 **서버형 관계형 데이터베이스**다.

```text
애플리케이션
      │
      ▼
  MySQL 서버
      │
      ▼
    데이터
```

애플리케이션이 데이터베이스 파일을 직접 사용하는 것이 아니라 MySQL 서버에 SQL을 요청한다.

```sql
SELECT *
FROM member
WHERE member_id = 10;
```

MySQL 서버가 SQL을 처리하고 결과를 반환한다.

### 특징적인 부분

MySQL에서는 **스토리지 엔진**이라는 개념도 중요하다.

대표적으로 InnoDB가 있다.

```text
MySQL
  │
  └── InnoDB
        ├── 데이터 관리
        ├── 인덱스
        ├── 트랜잭션
        └── 동시성 처리
```

현재 일반적인 MySQL 환경에서는 InnoDB가 핵심적인 스토리지 엔진이다.

### 장점

- 웹 서비스에서 많이 사용된다.
- 서버형 DB로 여러 클라이언트의 요청을 처리할 수 있다.
- 트랜잭션을 지원한다.
- 인덱스와 다양한 SQL 기능을 제공한다.
- 대규모 서비스까지 확장할 수 있다.

### 대표적인 사용 상황

```text
웹 서비스
쇼핑몰
게시판
회원 시스템
일반적인 백엔드 서버
```

---

## 4. PostgreSQL

### 특징

PostgreSQL도 **서버형 관계형 데이터베이스**다.

특히 복잡한 SQL과 다양한 데이터 타입 및 고급 기능을 제공하는 것이 특징이다.

```text
애플리케이션
      │
      ▼
PostgreSQL 서버
      │
      ▼
    데이터
```

### 특징적인 부분

PostgreSQL은 단순한 테이블 데이터뿐만 아니라 다양한 형태의 데이터를 다룰 수 있다.

```text
일반 테이블
JSON
배열
사용자 정의 타입
공간 데이터
복잡한 쿼리
```

등을 지원한다.

### 장점

- SQL 기능이 매우 풍부하다.
- 복잡한 JOIN과 집계 쿼리를 처리할 수 있다.
- 다양한 데이터 타입을 지원한다.
- 확장성이 좋다.
- 복잡한 데이터베이스 시스템을 구축할 수 있다.

### 대표적인 사용 상황

```text
복잡한 데이터 처리
분석 시스템
대규모 서비스
GIS / 공간 데이터
고급 SQL이 필요한 서비스
```

---

## 5. SQL Server

### 특징

SQL Server는 **Microsoft가 개발한 서버형 관계형 데이터베이스**다.

```text
애플리케이션
      │
      ▼
 SQL Server
      │
      ▼
    데이터
```

Microsoft 생태계와의 연계가 강하다.

특히 다음과 같은 환경에서 많이 사용된다.

```text
.NET
C#
Windows
Azure
Microsoft 기업 시스템
```

### SQL Server의 SQL

SQL Server에서는 Microsoft가 확장한 SQL인 **T-SQL(Transact-SQL)**을 사용한다.

기본적인 SQL은 다른 DB와 비슷하다.

```sql
SELECT *
FROM member
WHERE member_id = 10;
```

하지만 SQL Server만의 문법과 기능도 존재한다.

### 장점

- 기업용 시스템에 적합하다.
- Microsoft 제품과의 통합이 강하다.
- 보안 및 관리 기능이 풍부하다.
- 분석 및 BI 관련 기능을 제공한다.
- 대규모 시스템을 지원한다.

---

## 6. 가장 중요한 차이

### SQLite vs 서버형 DB

가장 먼저 이해해야 할 차이는 이것이다.

#### SQLite
---
```text
프로그램
   │
   ▼
SQLite 라이브러리
   │
   ▼
DB 파일
```

#### MySQL / PostgreSQL / SQL Server
---
```text
프로그램
   │
   ▼
DB 서버
   │
   ▼
데이터
```

즉,

> SQLite는 애플리케이션에 포함되어 사용하는 DB에 가깝고,  
> MySQL/PostgreSQL/SQL Server는 독립적으로 실행되는 DB 서버다.

---


# 9. 공부할 때의 구분

DB를 공부할 때는 **공통 개념**과 **DBMS별 구현**을 나누는 것이 좋다.

## 공통으로 배우는 것

```text
관계형 데이터베이스
        ↓
테이블
        ↓
PK / FK
        ↓
1:N 관계
        ↓
SELECT
        ↓
JOIN
        ↓
GROUP BY
        ↓
INDEX
        ↓
TRANSACTION
```

이러한 개념은 특정 DBMS 하나에만 존재하는 것이 아니다.

---

## DBMS별로 배우는 것

### SQLite

```text
SQLite
 └── SQLite의 파일 구조와 동작
 └── SQLite의 페이지 구조
 └── SQLite의 인덱스
 └── SQLite의 트랜잭션
 └── EXPLAIN QUERY PLAN
```

### MySQL

```text
MySQL
 └── MySQL 서버
 └── InnoDB
 └── InnoDB의 인덱스
 └── 트랜잭션
 └── 동시성
 └── EXPLAIN
```

### PostgreSQL

```text
PostgreSQL
 └── PostgreSQL 서버
 └── PostgreSQL의 인덱스
 └── MVCC
 └── 트랜잭션
 └── EXPLAIN
```

### SQL Server

```text
SQL Server
 └── SQL Server
 └── T-SQL
 └── 인덱스
 └── 트랜잭션
 └── 실행 계획
```

---

# 10. 한 줄로 정리

| DB | 핵심 이미지 |
|---|---|
| **SQLite** | 가볍게 프로그램에 넣어 쓰는 DB |
| **MySQL** | 웹/서버에서 많이 사용하는 범용 DB |
| **PostgreSQL** | 복잡한 SQL과 다양한 기능을 제공하는 DB |
| **SQL Server** | Microsoft 기업 환경과 연계가 강한 DB |

그리고 가장 중요한 것은 다음과 같다.

> **SQL 문법은 서로 상당히 비슷하지만, SQL을 실제로 처리하는 DBMS의 내부 구현은 다르다.**

---

# 11. DB를 공부하는 방법

DBMS마다 내부 구현이 다르기 때문에 처음부터 모든 DBMS의 내부 구조를 외울 필요는 없다.

다음 순서로 공부하면 된다.

```text
SQL 문법
   ↓
관계형 DB 개념
   ↓
PK / FK / JOIN / GROUP BY
   ↓
INDEX
   ↓
TRANSACTION
   ↓
동시성
   ↓
SQLite에서 직접 확인
   ↓
MySQL에서 직접 확인
   ↓
EXPLAIN으로 실행 계획 비교
```

## 핵심적인 학습 관점

```text
"이 DB는 이렇게 동작한다."
```

를 무조건 외우기보다,

```text
"왜 이렇게 동작하는가?"
"실제로 DB가 어떻게 처리했는가?"
"실행 계획은 어떻게 나왔는가?"
```

를 확인하는 것이 중요하다.

특히 인덱스는 다음과 같은 방식으로 공부하면 좋다.

```text
1. 인덱스의 목적 이해
        ↓
2. 인덱스의 기본적인 자료구조 이해
        ↓
3. 인덱스가 검색을 빠르게 만드는 이유 이해
        ↓
4. 인덱스의 단점 이해
        ↓
5. 실제 인덱스 생성
        ↓
6. EXPLAIN으로 실제 사용 여부 확인
        ↓
7. 다른 DBMS에서 비교
```

결국 목표는 **SQLite, MySQL, PostgreSQL, SQL Server의 모든 내부 구현을 암기하는 것**이 아니라,

> **공통적인 데이터베이스 원리를 이해한 뒤, DBMS별로 구현이 어떻게 달라지는지 확인하는 것**

이다.