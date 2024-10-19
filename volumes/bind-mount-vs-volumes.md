### **6. Using Bind Mounts vs. Volumes**

In some cases, you may want to use **bind mounts** to directly map a host directory to a container directory. This is different from volumes because bind mounts are tied to the host's filesystem.

### Example:

1. **Bind Mounting a Host Directory**:
    
    ```bash
    docker run -d --name myapp -v /root/example:/data busybox sleep 3600
    ```
    
    Here, the host directory `/path/on/host` is mounted inside the container at `/data`.
    
2. **Compare with Volumes**:
    - **Volumes** are fully managed by Docker and stored in `/var/lib/docker/volumes/` on the host.
    - **Bind Mounts** directly map host directories and give you more control over the directory used in the container.