### Step 1: Build the Docker Image

Since we updated `app.py`, rebuild the Docker image:

```bash
docker build -t counter_app .
```

### Step 2: Run the Container with a Volume

Run the container with a volume to persist the count file between container restarts:

```bash
docker run -d --name counter_container -v $(pwd)/data:/data counter_app
```

This command will mount the `data` directory on your host to the `/data` directory inside the container.

### Step 3: Demonstrate Volume Persistence

1. **Check the Output**: You can view the container logs to see the count being incremented every 5 seconds.
    
    ```bash
    docker logs -f counter_container
    ```
    
    You'll see the count being incremented and printed, e.g.,:
    
    ```mathematica
    Count updated: 1
    Count updated: 2
    Count updated: 3
    ```
    
2. **Stop and Remove the Container**: After a few iterations, stop and remove the container:
    
    ```bash
    docker stop counter_container
    docker rm counter_container
    ```
    
3. **Restart the Container**: Start a new container using the same volume:
    
    ```bash
    docker run -d --name counter_container -v $(pwd)/data:/data counter_app
    ```
    
4. **Verify Persistence**: Check the logs again:
    
    ```bash
    docker logs -f counter_container
    ```
    
    The count will continue from where it left off, showing that the data persisted across container runs.
    
    ```mathematica
    Count updated: 4
    Count updated: 5
    Count updated: 6
    
    ```
    