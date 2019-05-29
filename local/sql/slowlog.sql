SET GLOBAL slow_query_log = 1;
SET GLOBAL long_query_time = 0.001;
SET GLOBAL slow_query_log_file = '/var/log/mysql/mysql-slow.log';
SET GLOBAL log_queries_not_using_indexes = 'ON';
