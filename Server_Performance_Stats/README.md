# Server Performance Stats

This script analyzes basic server performance stats, including CPU usage, memory usage, disk usage, and top processes. It also provides additional stats like OS version, uptime, load average, logged-in users, and failed login attempts.

This project is part of the [Server Stats project on roadmap.sh](https://roadmap.sh/projects/server-stats), which focuses on learning and implementing basic server performance monitoring.


## Features:
- **CPU Usage**: Displays total CPU usage.
- **Memory Usage**: Shows memory usage, including free vs used memory.
- **Disk Usage**: Provides disk usage details (free vs used space).
- **Top CPU Processes**: Lists the top 5 processes by CPU usage.
- **Top Memory Processes**: Lists the top 5 processes by memory usage.
- **Additional Stats**: Includes server OS version, uptime, load average, logged-in users, and failed login attempts.

## Requirements:
- Linux-based system
- `bash` shell

## How to Use:
1. Clone the repository to your local machine:
    ```bash
    git clone https://github.com/HirenTumbadiya/devops-projects
    ```

2. Navigate to the `Server_Performance_Stats` directory:
    ```bash
    cd Server_Performance_Stats
    ```

3. Give execute permissions to the script:
    ```bash
    chmod +x server-stats.sh
    ```

4. Run the script:
    ```bash
    ./server-stats.sh
    ```

## Output:
The script will display the following:
- Total CPU Usage
- Memory Usage (free vs used)
- Disk Usage (free vs used)
- Top 5 processes by CPU usage
- Top 5 processes by memory usage
- Additional server stats (OS version, uptime, load average, logged-in users, failed login attempts)

## Customization:
You can modify the script to add more metrics or adjust the output format according to your needs.
