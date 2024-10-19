### **8. Removing Volumes**

To remove unused volumes, you can use the `docker volume rm` or `docker volume prune` commands.

### Example:

1. **Remove a Specific Volume**:
    
    ```bash
    docker volume rm myvolume
    ```
    
2. **Prune Unused Volumes**:
    
    ```bash
    docker volume prune
    ```
    
    This removes all volumes not currently used by any container.