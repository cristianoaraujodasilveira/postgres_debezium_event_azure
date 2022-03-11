CREATE ROLE debezium REPLICATION LOGIN;
CREATE SCHEMA debezium;
CREATE TABLE debezium.debezium_heartbeat (heartbeat VARCHAR NOT NULL);
GRANT USAGE ON SCHEMA debezium TO debezium;
GRANT SELECT, INSERT, UPDATE, DELETE ON debezium.debezium_heartbeat TO debezium;

