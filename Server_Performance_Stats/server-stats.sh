#!/bin/bash

# Function to calculate CPU usage
get_cpu_usage() {
  echo "Total CPU Usage:"
  top -bn1 | grep "Cpu(s)" | \
  awk '{print "CPU Usage: " $2 + $4 "%"}'
}

# Function to calculate memory usage
get_memory_usage() {
  echo -e "\nMemory Usage (Free vs Used):"
  free -m | awk 'NR==2{
    total=$2; used=$3; free=$4;
    printf("Total: %d MB | Used: %d MB (%.2f%%) | Free: %d MB (%.2f%%)\n", total, used, (used/total)*100, free, (free/total)*100)
  }'
}

# Function to calculate disk usage
get_disk_usage() {
  echo -e "\nDisk Usage (Free vs Used):"
  df -h --total | awk '/total/ {
    printf("Total: %s | Used: %s (%.2f%%) | Free: %s (%.2f%%)\n", $2, $3, ($3/$2)*100, $4, ($4/$2)*100)
  }'
}

# Function to get top 5 processes by CPU usage
get_top_cpu_processes() {
  echo -e "\nTop 5 Processes by CPU Usage:"
  ps -eo pid,comm,%cpu --sort=-%cpu | head -6 | awk 'NR>1 {printf("PID: %s | Command: %s | CPU: %.1f%%\n", $1, $2, $3)}'
}

# Function to get top 5 processes by memory usage
get_top_memory_processes() {
  echo -e "\nTop 5 Processes by Memory Usage:"
  ps -eo pid,comm,%mem --sort=-%mem | head -6 | awk 'NR>1 {printf("PID: %s | Command: %s | Memory: %.1f%%\n", $1, $2, $3)}'
}

# Stretch goal: additional stats
get_additional_stats() {
  echo -e "\nAdditional Server Stats:"
  echo "OS Version: $(lsb_release -d | cut -f2)"
  echo "Uptime: $(uptime -p)"
  echo "Load Average: $(uptime | awk -F'load average:' '{print $2}')"
  echo "Logged-in Users: $(who | wc -l)"
  echo "Failed Login Attempts: $(grep -i 'Failed password' /var/log/auth.log | wc -l 2>/dev/null || echo "Log unavailable")"
}

# Run all functions
get_cpu_usage
get_memory_usage
get_disk_usage
get_top_cpu_processes
get_top_memory_processes
get_additional_stats

