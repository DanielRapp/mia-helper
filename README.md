# What is this?

This is a helper program designed for the TSEA83 to make programming the MIA-system easier. It allows you to convert something like: `TB:tb_pm, FB:fb_ir` into something understandable by the MIA-system: `0088000`

## Syntax

Inside [`example.v`](https://github.com/DanielRapp/mia-helper/blob/master/example.v) is an example program that prints `1337` (base 16) in memory at address 0-42 (base 16).

# Labels

Since it doesn't force (or even allow) you to place rownumbers for indicating where microinstructions should lie in the micromemory, you can use labels instead:

```Verilog
MyM:
SEQ:0101, myADR:JUMP_HERE

SEQ:1111

--JUMP_HERE--

P:1
```

Read the [manual](http://www.da.isy.liu.se/courses/tsea28/laborationer/mikrokomp_2013-v2.pdf) for instructions on what each field (like `TB` and `FB` does).

# Constants

Constants are also supported in order to avoid mistakes and more readable code:

```Verilog
CONSTANTS:
jmp_to_myADR=0101
halt=1111
pc_increment=1

MyM:
SEQ:jmp_to_myADR, myADR:JUMP_HERE

SEQ:halt

--JUMP_HERE--

P:pc_increment
```

See [`example.v`](https://github.com/DanielRapp/mia-helper/blob/master/example.v) for more.

# Setup
Before doing anything, run `make init liu_id=LIUID`, replacing `LIUID` with your own.

Don't forget to make the `assemble` file executable with, for instance, `chmod 777 assemble`.

## Tips
Make your life easier by using ssh-keys instead of password for logging in with [this guide](https://www.digitalocean.com/community/articles/how-to-set-up-ssh-keys--2). (Or just run `cat ~/.ssh/id_rsa.pub | ssh LIU_ID@ixtab.edu.isy.liu.se "cat >> ~/.ssh/authorized_keys"`, replacing `LIUID` with your own.)

If you set the environment variable `liu_id` to your LiU id (with `export liu_id=danth407`) you won't have to include it as an argument below.

# Running
* To compile a program, run `make compile prog=PROG_NAME`, replacing `PROG_NAME` with your program.
* To sync all programs, run `make sync liu_id=LIUID`.
* To run a program, run `make run liu_id=LIUID prog=PROG_NAME`, note that this will also sync all files.
* To simply compile, sync and run a program one after another, just run `make prog=PROG_NAME liu_id=danth407`.
