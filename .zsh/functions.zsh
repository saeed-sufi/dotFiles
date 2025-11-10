
# Custom Functions

# Remove all Docker containers
drmc() {
  docker rm $(docker ps -a -q)
}
