### **4. Sharing Volumes Between Multiple Containers**

One of the most powerful features of volumes is that they can be shared between multiple containers.

### Example:

1. **Run Two Containers Sharing the Same Volume**:
    
    ```bash
    docker run -d --name web1 -v data_volume:/data busybox sleep 3600
    docker run -d --name web2 -v data_volume:/data busybox sleep 3600
    
    ```
    
    Both containers `web1` and `web2` are sharing the same volume `data_volume`, mounted to `/data`.
    
2. **Write Data in One Container and Read in Another**:
    - **Write Data in `web1`**:
        
        ```bash
        docker exec -it web1 sh -c "echo 'Hello from web1' > /data/hello.txt"
        
        ```
        
    - **Read Data from `web2`**:
        
        ```bash
        docker exec -it web2 cat /data/hello.txt
        
        ```
        
    
    Since the two containers share the same volume, `web2` can access the data written by `web1`.