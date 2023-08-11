# Use the official Apache HTTP Server image as the base image
FROM httpd:latest

# Expose the default Apache port (80)
EXPOSE 80

# Start Apache when the container starts
CMD ["httpd-foreground"]