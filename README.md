# Setup
Before doing anything, run `make init liu_id=LIUID`, replacing `LIUID` with your own.

Don't forget to make the `assemble` file executable with, for instance, `chmod 777 assemble`.

## Tips
Make your life easier by using ssh-keys instead of password for logging in with [this guide](https://www.digitalocean.com/community/articles/how-to-set-up-ssh-keys--2).

If you set the environment variable `liu_id` to your LiU id (with `export liu_id=danth407`) you won't have to include it as an argument below.

# Running
* To compile a program, run `make compile prog=PROG_NAME`, replacing `PROG_NAME` with your program.
* To sync all programs, run `make sync liu_id=LIUID`.
* To run a program, run `make run liu_id=LIUID prog=PROG_NAME`, note that this will also sync all files.
* To simply compile, sync and run a program one after another, just run `make prog=PROG_NAME liu_id=danth407`.
