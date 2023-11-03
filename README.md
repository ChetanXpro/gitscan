# GitScan (git_dumper.sh)

GitScan is a simple but very useful tool for looking through all the details of a Git repository. This can be a big help if you need to check and want to search anything in your all previous commits.

## Overview

The script uses Git and Unix commands to look through everything in your Git repository and print out details of all Git objects. 

Objects in Git include things like commit objects, where details about changes are stored, blob objects, which store file data, and tree objects, which are like directories. 

This script is meant to be used on Unix-based systems and needs both Git and a standard shell.

window users can use git bash or wsl

## How to Use

To use the script, you'll first need to navigate to your Git repository using your terminal. Then:

Allow the script to be executed with this command:
```bash
chmod +x ./git_dumper.sh
```

Now you can run the script with:

```bash
./git_dumper.sh
```

This will print out details of all Git objects in your repository.

If you want to find something specific, you can add a grep command at the end:

```bash
./git_dumper.sh | grep -a 'your_keyword'

```

Just replace 'your_keyword' with whatever you're looking for.

For example, if you want to look an OpenAI API key you can do:
- openai api key starts with 'sk-'
```bash
./git_dumper.sh | grep -a 'sk-'
```

You can even try looking for an API key or other important pieces of text you know.

Happy hunting!
