CREATE USER "partyb" WITH LOGIN PASSWORD 'node_b';
CREATE SCHEMA "node_b";
GRANT USAGE, CREATE ON SCHEMA "node_b" TO "partyb";
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON ALL tables IN SCHEMA "node_b" TO "partyb";
ALTER DEFAULT privileges IN SCHEMA "node_b" GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON tables TO "partyb";
GRANT USAGE, SELECT ON ALL sequences IN SCHEMA "node_b" TO "partyb";
ALTER DEFAULT privileges IN SCHEMA "node_b" GRANT USAGE, SELECT ON sequences TO "partyb";
ALTER ROLE "partyb" SET search_path = "node_b";