
# Log Archiving Script  

This Bash script is designed to compress and archive logs from a specified directory. It checks the directory's existence, creates an archive directory if it doesn't already exist, and saves the compressed logs with a timestamp for organization and tracking purposes.  

---

## Features  

1. **Directory Validation**  
   - Ensures the provided log directory exists. If not, an error message is displayed, and the script exits.  

2. **Timestamped Archives**  
   - Adds a timestamp (`YYYY-MM-DD_HH:MM:SS`) to the archive file names for easy identification.  

3. **Automatic Archive Directory Creation**  
   - Automatically creates an `_archive` directory adjacent to the provided log directory, if it does not already exist.  

4. **Compression**  
   - Compresses the log directory into a `.tar.gz` file and saves it in the archive directory.  

5. **Success Confirmation**  
   - Confirms successful compression and displays the location of the archived logs.  

---

## Prerequisites  

- **Operating System**: Linux or Unix-based systems  
- **Permissions**:  
  - The script requires `sudo` privileges to create directories and perform file compression.  
- **Tools Required**:  
  - `tar` for file compression  
  - `date` for timestamp generation  

---

## How to Use  

### 1. Save the Script  
Save the script as `log_archive.sh` on your system.  

### 2. Make the Script Executable  
Run the following command to grant execute permissions:  
``` 
chmod +x log_archive.sh  
```  

### 3. Run the Script  
Execute the script by passing the path to the log directory as an argument:  
```
sudo ./log_archive.sh /path/to/log_directory  
```  

### Example:  
```  
sudo ./log_archive.sh /var/logs  
```  

---

## Output  

### Example Run Output:  
```  
This is the timestamp: 2024-12-16_11:35:50  
This is the archive directory: /var/logs_archive  
Testing for archive directory: /var/logs_archive/logs_2024-12-16_11:35:50.tar.gz  
Logs archived successfully to /var/logs_archive  
```  

---

## Error Handling  

- **Directory Not Found**:  
  If the specified log directory does not exist, the script outputs an error message:  
  ```  
  Error: /path/to/log_directory not found.  
  ```  

- **Insufficient Permissions**:  
  If the user does not have sufficient permissions, an error message will indicate that `sudo` is required.  

---

## Notes  

- **Custom Archive Directory**:  
  By default, the script creates an archive directory named `<log_directory>_archive`. You can modify this behavior by editing the `archive_dir` variable in the script.  

- **Log Retention**:  
  Archived logs remain in the `_archive` directory. Manage this directory periodically to avoid storage issues.  

- **Compression Tool**:  
  The script uses `tar` with gzip compression (`.tar.gz`). Modify the `tar` command to use alternative compression methods if desired.  

---

## Troubleshooting  

- If the script fails with a `Permission denied` error, ensure you are running it with `sudo`.  
- If `tar` is not found, install it using your system's package manager:  
  ```
  sudo apt install tar     # For Debian/Ubuntu-based systems  
  sudo yum install tar     # For RHEL/CentOS-based systems  
  ``` 

---

## License  

This script is open-source and available for personal use. Feel free to modify and share it as needed.  

--- 

