The list of tools I use on my Mac OS X.

## CLI tools

- `bat` allows to view files with syntax highlighting. Great alternative to `cat`. ([github](https://github.com/sharkdp/bat))

- `birthday` is a tool to store birthdays.([github](https://github.com/IonicaBizau/birthday))
 - usage:
 ```shell
   birthday -n 'Name Surname' -d '14/09/1995'
   birthday -n 'Name Surname' -d '14/09'
   birthday # displays all birthdays
 ```

- `fzf` - command-line fuzzy finder. ([github](https://github.com/junegunn/fzf))
 - usage:

   press `Ctrl + T` at any point in time to open up an interactive fuzzy search interface, which will recursively search for files inside the current directory.

- `hub` is a command line tool that wraps `git` in order to extend it with extra features and commands that make working with GitHub easier ([github](https://github.com/github/hub)).
 - usage:
  ```shell
  hub clone lesin/repo
  # expands to:
  git clone git://github.com/lesin/repo.git
  ```

- `watch` - used to periodically execute a command.
 - usage: `watch ruby test.rb`
 - notes: sometimes it doesn't work properly for commands with options. then just use infinite loop ` while :; do clear; some_bash_command; sleep 5; done`



## non-CLI tools

- `docker`
  - usage: [cheatsheet](https://github.com/wsargent/docker-cheat-sheet)




## List of resources

- list of useful lists (different topics like tech, books, etc) [link](https://github.com/sindresorhus/awesome)
