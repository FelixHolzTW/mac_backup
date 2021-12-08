# Simple Mac Backup

This repository contains a basic and simple setup to restore installed applications on a Mac.  
The whole process expects a sync solution (e.g. Google Drive, Dropbox, ...) which is mounted as a local drive or folder.  

## Prerequisites

As this setup only contains examples that should serve as an inspiration it should be possible to adjust the solution to your tooling needs.  

For installed packages this solution uses [Homebrew](https://brew.sh/) as the package manager. This allows for easy exporting and importing of installed packages. The [restore script](./restore.sh) will also try to install [Homebrew](https://brew.sh/) in case it is not installed yet.  

## How to use it

Depending on your sync solution (e.g. Google Drive, Dropbox, ...) just paste the [backup script](./backup.sh) and the [restore script](./restore.sh) into your synchronized folder or drive.  
As the scripts should only use relative paths for the backup and the default installation paths for the configuration files / tooling.

NOTE: your current working directory has to be in the sync folder, since the scripts use relative paths as mentioned above.

Once you have the files in your sync folder just execute ```sh ./backup.sh``` to backup your configuration files and ```sh ./restore.sh``` on any given Mac to restore from your backup. 