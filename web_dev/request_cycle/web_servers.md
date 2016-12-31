What are some of the key design philosophies of the Linux operating system?

* open source
* although the core pieces of the Linux operating system are generally common, there are many distributions of Linux, which include different software options
* terminal 
* complete control
* It means making flexibility, simplicity, and freedom the foremost considerations when designing and building software systems. 



In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?

* A VPS is a server created on something other than your own private machine, it's in the cloud, though at a specific location. You can manipulate it but don't have to deal with general maintenance of it.  



Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?

* It's a permission thing. You can really mess things up when you have full permission over something. 

* If ran as root, it might have freedom to delete everything in the system. Besides, you might be the victim of a buggy script which accidentally deletes critical files.

* You can be victim of your own stupidity. That rm -rf * you ran by mistake, or if you swapped input/output device in dd, would be stopped by your lack of permissions, but if you run as root, you are all powerful.