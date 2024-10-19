### **3. Using Volumes with Containers**

To use a volume in a container, you can mount it with the `-v` option in the `docker run` command.

- **Mounting a Volume to a Container**:
    
    ```bash
    docker run -d --name mycontainer -v myvolume:/home nginx
    ```
    

In this example, the volume `myvolume` is mounted inside the container at `/path/in/container`.

### Example:

1. **Run a Container with a Volume**:
    
    ```bash
    docker run -d --name web -v data_volume:/usr/share/nginx/html nginx
    ```
    
    This command runs an Nginx container and mounts the `data_volume` to `/usr/share/nginx/html` (the default web content directory for Nginx).
    
2. **Modify Data in the Volume**:
You can inspect the data stored in the volume by interacting with the container. For example:
    
    ```bash
    docker exec -it web /bin/bash
    ```
    
    Inside the container, you can create files or directories in `/usr/share/nginx/html`, and they will persist because they are stored in the volume.