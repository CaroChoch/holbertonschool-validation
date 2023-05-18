# Deployment Instructions

## Preparing a Release

When a new version of the application is ready for deployment, create a Git tag and push it to the remote repository. This triggers the automated build process and creates a ZIP archive of the application.

```bash
git tag 1.0.0
git push origin 1.0.0
```

The tag name becomes the version number of the release.

## Deploying a Release

To deploy a release, download the ZIP archive from the GitHub release page. The archive is named `awesome-website.zip` and is associated with the Git tag for the release.

Unzip the archive to access the `awesome-api` binary and the `dist/` directory containing the Hugo-generated website files.

```bash
unzip awesome-website.zip
```

Next, start the application:

```bash
make build
```

You can stop the application at any time with:

```bash
make stop
```

## release


A Github Release is created with the ```tag 1.0.0``` and contain archive awesome-website.zip + content of the file DEPLOY.md as text for the release.

## Pull Requests
A new collaboration process used GitHub Pull Request :
- Instead of pushing code to the principal branch, developers are expected to open pull requests
- A Pull Request can only be merged if the associated workflow is executed successfully
