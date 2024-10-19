### **5. Backing Up and Restoring Volumes**

You can back up data stored in a volume by copying it to your local filesystem.

### Example:

1. **Backup a Volume**:
    - Run a temporary container that mounts the volume and uses the `tar` command to back up the data:
        
        ```bash
        docker run --rm -v data_volume:/data -v $(pwd):/backup busybox tar cvf /backup/backup.tar /data
        
        ```
        
    - This command saves a backup of the `data_volume` in a `backup.tar` file in your current directory.
2. **Restore a Volume**:
    - To restore the backup into a volume, run: