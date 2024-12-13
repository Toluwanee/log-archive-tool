#!/bin/bash

log_directory="$1"

if [ ! -d "$log_directory" ];
then 
echo "Error: ${log_directory} not found. "
exit 1
fi

timestamp=$(date +"%Y-%m-%d_%H:%M:%S")
echo "This is the timestamp: $timestamp"

archive_dir="${log_directory}_archive_$timestamp"
echo "This is the archive directory: $archive_dir"

sudo mkdir -p "$archive_dir"

#this is where the logs are compressed
sudo tar -zcvf "${archive_dir}/logs.tar.gz" "$log_directory"
echo "Testing for archive directory:  ${archive_dir}/logs.tar.gz"

if [ -d "${archive_dir}" ];
then
echo  "Logs archived succesfully to ${archive_dir}"
fi
