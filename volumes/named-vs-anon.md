### **7. Named Volumes vs. Anonymous Volumes**

- **Named Volumes**: Explicitly created by the user with a name.
    
    ```bash
    docker volume create my_named_volume
    
    ```
    
- **Anonymous Volumes**: Created automatically when a container is started without specifying a volume name.
    
    ```bash
    docker run -d -v /data busybox
    ```
    

Anonymous volumes can be harder to manage since they don't have a user-defined name.

### Example:

1. **Named Volume Example**:
    
    ```bash
    docker run -d --name named-container -v my_named_volume:/data busybox sleep 3600 
    ```
    
2. **Anonymous Volume Example**: