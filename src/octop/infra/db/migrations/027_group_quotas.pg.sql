CREATE TABLE IF NOT EXISTS group_quotas (
    group_id        INTEGER PRIMARY KEY,
    quota_tokens    BIGINT NOT NULL,
    used_tokens     BIGINT NOT NULL DEFAULT 0,
    alert_threshold DOUBLE PRECISION DEFAULT 0.8,
    period          TEXT DEFAULT 'monthly',
    alert_sent_at   BIGINT,  -- 存储 Unix 时间戳
    reset_at        BIGINT
);
