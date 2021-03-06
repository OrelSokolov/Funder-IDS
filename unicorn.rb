# Set the working application directory
# working_directory "/path/to/your/app"
working_directory "/var/www/funders_ids"

# Unicorn PID file location
# pid "/path/to/pids/unicorn.pid"
pid "/var/www/funders_ids/pids/unicorn.pid"

# Path to logs
# stderr_path "/path/to/logs/unicorn.log"
# stdout_path "/path/to/logs/unicorn.log"
stderr_path "/var/www/funders_ids/logs/unicorn.log"
stdout_path "/var/www/funders_ids/logs/unicorn.log"

# Unicorn socket
# listen "/tmp/unicorn.[app name].sock"
listen "/tmp/unicorn.funders_ids.sock"

# Number of processes
# worker_processes 4
worker_processes 2

# Time-out
timeout 300
