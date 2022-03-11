-- PART 1:
-- Rewrite the SQL table below to use a maximally efficient column order.
-- You may directly modify this table.

CREATE TABLE project (
    --16
    developer_id UUID,
    -- 8
    created_at TIMESTAMP WITH TIME ZONE,
    updated_at TIMESTAMPTZ,
    author_id BIGINT NOT NULL,
    -- 4
    id SERIAL PRIMARY KEY,
    target_id INTEGER,
    project_id INTEGER NOT NULL UNIQUE,
    -- 2
    action SMALLINT NOT NULL,
    -- -1
    data TEXT,
    target_type VARCHAR(2),    
    developer_addr INET,
    title CHAR(256)
    
);

-- PART 2:
-- Complete the table below describing the number of bytes used by the row created by the following insert statement.
-- Use the original column order defined above,
-- and not your modified order from part 1.

INSERT INTO project VALUES (
    0,
    55,
    NULL,
    NULL,
    NULL,
    'A0EEBC99-9C0B-4EF8-BB6D-6BB9BD380A11',
    NULL,
    NULL,
    88,
    12,
    'now',
    '2022-03-09T18:34:27+00:00'
);

-- Header: 23 bytes for struct + 1 null bitmap = 24 bytes
-- Data: 50 bytes data
-- Padding: 14 bytes padding
-- Total: 88 bytes total
--
-- SERIAL 4 bytes, 28 4 bytes padding BIGINT 8 bytes data, 40 
-- 8 bytes padding UUID 16 bytes data, 64 INTEGER 4 bytes data, 68
-- smallint 2 bytes data, 70 2 bytes padding, TIMESTAMP 8 bytes data, 80
-- TIMESTAMPTZ 8 bytes data, 88
