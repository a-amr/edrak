# creating ssh key

type
```cmd
ssh-keygen
```

or 

```cmd
ssh-keygen -b 4096
 ```

which is more secure than the default, 
the default is 2048 bit encryption, so this is better.

this command will ask you for the name of the key and the passphrase.
- name: is the key name 
- passphrase: is a password you need to use with the key every time you ssh to the server

to keep it simple, i suggest you just changing the name to something like **shinyinternal** with no passphrase.

now you have two files
- `shinyinternal`
- `shinyinternal.pub` 

the first is the private one 
## never share it 
the .pub is the public key which is a single line file which we will put in the server 

the pub key is a file will look like this 
```
ssh-rsa the-public-key   some-info-about-you
```
this info is not important and you can delete it or change it manually
# putting the public key in the server

you will need to add the public file to the server in the **~/.ssh/authorized_keys**

this will contian all public keys the ssh will accept on the server

if you want to ssh as root for exmple 
you will add the public key to **/root/.ssh/authorized_keys**

## TL;DR
type `ssh-keygen` in the terminal and send me the .pub file and your username.

do not share the other file. 
