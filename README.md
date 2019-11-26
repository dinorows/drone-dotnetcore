# drone-dotnetcore
lab showcasing drone CI/CD with .NET core Web, WebAPI, Library, and console projects

# manual process:
```
# Build container
cd Web
docker build -t dinorows/core-container .
# Run final container, mapping 8080 on the local machine to 80 on the container.
docker run -p 8080:80 --rm -it dinorowscore-container
```

Note: to use drone secrets instead of a temporary access token, use the format in .drone-2.yaml!
