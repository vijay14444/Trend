# Stage 1: Use Nginx to serve built files
FROM nginx:alpine

# Copy built frontend files into nginx's default html directory
COPY dist/ /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
