### **2. Inspecting Volumes**

You can inspect a volume to see where it is stored on the host and get detailed information about it.

- **Inspect a Volume**:
    
    ```bash
    docker volume inspect myvolume
    ```
    

### Example:

```bash
docker volume inspect data_volume
```

This command will provide detailed output, including the path on the host where the volume is stored.