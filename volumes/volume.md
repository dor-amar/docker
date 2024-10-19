### **1. Creating and Listing Volumes**

Docker volumes are created independently from containers and can be attached to one or more containers.

- **Create a Volume**:
    
    ```bash
    docker volume create myvolume
    ```
    
    This command creates a volume named `myvolume` that Docker will manage.
    
- **List Volumes**:
    
    ```bash
    docker volume ls
    ```
    
    This will display all volumes on the Docker host.

### Example:

1. **Create a Volume**:
    
    ```bash
    docker volume create data_volume
    ```
    
    This creates a new volume called `data_volume`.
    
2. **Verify**:
    
    ```bash
    docker volume ls
    ```
    
    You will see `data_volume` in the list of available volumes.