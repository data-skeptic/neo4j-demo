# Use the official Neo4j image from Docker Hub
FROM neo4j:5.10.0

# Set the Neo4j home directory
ENV NEO4J_HOME /var/lib/neo4j

# Set Neo4j's default credentials (can be overridden)
ENV NEO4J_AUTH=neo4j/testpassword

# Optional: If you need to set specific configurations
# COPY ./neo4j.conf /var/lib/neo4j/conf/neo4j.conf

# Expose the default Neo4j ports
EXPOSE 7474 7687

# Start Neo4j when the container is run
CMD ["neo4j"]
