UPDATE database_instance SET slave_io_running=0 where master_port=22293;
UPDATE database_instance SET last_seen=last_checked - interval 1 minute where port in (22293, 22296, 22297);
