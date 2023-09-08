# Use an official YARA base image
FROM plusvic/yara:latest

# Create a directory to store the YARA rule 
RUN mkdir /yara_rules

# Copy the YARA rule into the container
COPY yara_rules /yara_rules/

# Copy the entrypoint script into the container
COPY entrypoint.sh /entrypoint.sh

# Set execute permission for the script 
RUN chmod +x /entrypoint.sh

# Define the entrypoint for the container
ENTRYPOINT ["/entrypoint.sh"]
