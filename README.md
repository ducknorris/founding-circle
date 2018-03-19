# Funding Circle - Coding Challenge

### Objective

Write a program that prints out a multiplication table of the first 10 prime number.

* The program must run from the command line and print one table to STDOUT.
* The first row and column of the table should have the 10 primes, with each cell containing the product of the primes for the corresponding row and column.

### Notes

* Consider complexity. How fast does your code run? How does it scale?
* Consider cases where we want N primes.
* Do not use the Prime class from stdlib (write your own code).
* Write tests. Try to demonstrate TDD/BDD.
* If you’re using external dependencies please specify those dependencies and how to install them.
* Please package  your  code ,  OR  include  running  instructions.

---

### Instructions

In order to run the script or the tests you have two options:

1. You use Docker
2. You use your local Ruby (via rbenv or RVM)

I'll only cover the Docker option as the other one it's pretty much very dependable on your local environment.

As it's packed at this moment, the only requirement is to have Docker installed on the local machine.

I'm also using, some helper scripts, that I've created some years ago and "got stucked" with. Of course I addapt them for each project:

* `build.sh` is a helper script to build the Docker image;
* `connect.sh` is a helper to run and connect to the Docker shell in the app path;
* `run.sh` is a helper I created for this project and I'm using it to run the code from my host.

In order to have the code running, follow these steps:

#### 1. Build the Docker image

Either use `./build.sh` or build it using Docker cli. For example: `docker build -t=ducknorris/founding-circle .`.

#### 2. Run the code

Here there are 2 options.

First is the straight forward option `./run.sh --n=10` for example. This will run the code and print the multiplication table for the first 10 prime numbers.

The other one is to run and connect to the Docker container with `./connect.sh`. Now you'll be in the container and you can run `./bin/table.sh --n=10`. This will also run the code and print the multiplication table for the first 10 prime numbers.

The choice is yours.

#### 3. Specs

Here also I'm giving 2 options as I did in the previous statement.

Either run `./specs.sh` from your host. This will invoke the `rspec` in the Docker container, or you can use `./connect.sh` to run and connect to the Docker container, followed by `rspec` to go through the specs.

### Notes

* I'm using `RSpec` for tests as I'm more comfortable and used to it, thouth from time to time, I find myself in a situation where I have to use `minitests`.
* I'm using `pry` gem as a replacement for IRB console.
* I tried to demonstrate "some" TDD for the `CustomPrime` class by splitting them into sepparate commits. For the rest of the commits, I went for a more modular approach as I added functionality.
