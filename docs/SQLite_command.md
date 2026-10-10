# SQLite CLI 명령어

## 1. 자주 사용하는 명령어

| 명령어 | 사용법 | 설명 |
|---|---|---|
| `.help` | `.help` | SQLite CLI에서 사용할 수 있는 명령어 목록을 확인 |
| `.tables` | `.tables` | 현재 데이터베이스의 테이블 목록을 확인 |
| `.schema` | `.schema` | 데이터베이스의 전체 테이블 구조를 확인 |
| `.schema` | `.schema 테이블명` | 특정 테이블의 구조를 확인 |
| `.headers` | `.headers on` | 조회 결과에 컬럼 이름을 표시 |
| `.mode` | `.mode column` | 조회 결과를 표 형태로 보기 좋게 표시 |
| `.indexes` | `.indexes` | 생성된 인덱스 목록을 확인 |
| `.read` | `.read 파일명.sql` | SQL 파일을 읽어서 실행 |
| `.quit` | `.quit` | SQLite CLI 종료 |

---

### .help
```bash
sqlite> .help
.archive ...             Manage SQL archives
.auth ON|OFF             Show authorizer callbacks
.backup ?DB? FILE        Backup DB (default "main") to FILE
.bail on|off             Stop after hitting an error.  Default OFF
.cd DIRECTORY            Change the working directory to DIRECTORY
.changes on|off          Show number of rows changed by SQL
.check GLOB              Fail if output since .testcase does not match
.clone NEWDB             Clone data into NEWDB from the existing database
.connection [close] [#]  Open or close an auxiliary database connection
.databases               List names and files of attached databases
.dbconfig ?op? ?val?     List or change sqlite3_db_config() options
.dbinfo ?DB?             Show status information about the database
.dump ?OBJECTS?          Render database content as SQL
.echo on|off             Turn command echo on or off
.eqp on|off|full|...     Enable or disable automatic EXPLAIN QUERY PLAN
.excel                   Display the output of next command in spreadsheet
.exit ?CODE?             Exit this program with return-code CODE
.expert                  EXPERIMENTAL. Suggest indexes for queries
.explain ?on|off|auto?   Change the EXPLAIN formatting mode.  Default: auto
.filectrl CMD ...        Run various sqlite3_file_control() operations
.fullschema ?--indent?   Show schema and the content of sqlite_stat tables
.headers on|off          Turn display of headers on or off
.help ?-all? ?PATTERN?   Show help text for PATTERN
.hex-rekey OLD NEW NEW   Change the encryption key using hexadecimal
.import FILE TABLE       Import data from FILE into TABLE
.import FILE TABLE       Import data from FILE into TABLE
.indexes ?TABLE?         Show names of indexes
.limit ?LIMIT? ?VAL?     Display or change the value of an SQLITE_LIMIT
.lint OPTIONS            Report potential schema issues.
.log FILE|on|off         Turn logging on or off.  FILE can be stderr/stdout
.mode MODE ?OPTIONS?     Set output mode
.nonce STRING            Suspend safe mode for one command if nonce matches
.nullvalue STRING        Use STRING in place of NULL values
.once ?OPTIONS? ?FILE?   Output for the next SQL command only to FILE
.open ?OPTIONS? ?FILE?   Close existing database and reopen FILE
.output ?FILE?           Send output to FILE or stdout if FILE is omitted
.parameter CMD ...       Manage SQL parameter bindings
.print STRING...         Print literal STRING
.progress N              Invoke progress handler after every N opcodes
.prompt MAIN CONTINUE    Replace the standard prompts
.quit                    Stop interpreting input stream, exit if primary.
.read FILE               Read input from FILE or command output
.recover                 Recover as much data as possible from corrupt db.
.rekey OLD NEW NEW     Change the encryption key
.restore ?DB? FILE       Restore content of DB (default "main") from FILE
.save ?OPTIONS? FILE     Write database to FILE (an alias for .backup ...)
.scanstats on|off|est    Turn sqlite3_stmt_scanstatus() metrics on or off
.schema ?PATTERN?        Show the CREATE statements matching PATTERN
.separator COL ?ROW?     Change the column and row separators
.session ?NAME? CMD ...  Create or control sessions
.sha3sum ...             Compute a SHA3 hash of database content
.shell CMD ARGS...       Run CMD ARGS... in a system shell
.show                    Show the current values for various settings
.stats ?ARG?             Show stats or turn stats on or off
.system CMD ARGS...      Run CMD ARGS... in a system shell
.tables ?TABLE?          List names of tables matching LIKE pattern TABLE
.text-rekey OLD NEW NEW  Change the encryption key using hexadecimal
.timeout MS              Try opening locked tables for MS milliseconds
.timer on|off            Turn SQL timer on or off
.trace ?OPTIONS?         Output each SQL statement as it is run
.version                 Show source, library and compiler versions
.vfsinfo ?AUX?           Information about the top-level VFS
.vfslist                 List all available VFSes
.vfsname ?AUX?           Print the name of the VFS stack
.width NUM1 NUM2 ...     Set minimum column widths for columnar output
```

### .tables 
```
sqlite> .tables
Book
```

## 2. 기타 명령어

| 명령어 | 사용법 | 설명 |
|---|---|---|
| `.databases` | `.databases` | 현재 연결된 데이터베이스 목록과 파일 위치를 확인 |
| `.headers` | `.headers off` | 조회 결과에서 컬럼 이름을 숨김 |
| `.mode` | `.mode list` | 조회 결과를 `\|`로 구분하여 표시 |
| `.mode` | `.mode csv` | 조회 결과를 CSV 형식으로 표시 |
| `.output` | `.output 파일명` | 이후 실행되는 출력 결과를 파일에 저장 |
| `.output` | `.output stdout` | 출력을 다시 터미널로 표시 |
| `.dump` | `.dump` | 데이터베이스 전체를 SQL 문으로 출력 |
| `.dump` | `.dump 테이블명` | 특정 테이블의 데이터를 SQL 문으로 출력 |
| `.import` | `.import 파일명 테이블명` | 파일의 데이터를 테이블로 가져옴 |
| `.cd` | `.cd 경로` | SQLite의 현재 작업 디렉터리를 변경 |
| `.shell` | `.shell 명령어` | SQLite 내부에서 운영체제의 쉘 명령어를 실행 |
| `.show` | `.show` | 현재 SQLite CLI 설정을 확인 |
| `.nullvalue` | `.nullvalue 값` | NULL 값을 표시할 문자열을 지정 |
| `.exit` | `.exit` | SQLite CLI 종료 |
