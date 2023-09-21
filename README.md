# contoso-services-typespec
TypeSpec generated services

This repo uses https://microsoft.github.io/typespec/


To create your own project, follow these steps. (You must make sure to have [Node.js 16 LTS](https://nodejs.org/en/blog/release/v16.16.0) or up, installed in your system, and at least [npm](https://www.npmjs.com) version 7+.

## Step 1 - Install the tsp compiler running in your terminal

```
$ npm install -g @typespec/compiler
```

## Step 2 - Create a directory and initialize tsp

```
$ mkdir my-tsp-project && cd my-tsp-project && tsp init
```
When prompted, select the `Generic Rest API` template, your project name and the `@typespec/openapi3` library.

## Step 3 - Install the tsp dependencies

Run 

```
$ tsp install
```
That will create a basic `tsp` project structure that looks like this:

```
package.json     # Package manifest defining your typespec project as a node package.
tspconfig.yaml   # TypeSpec project configuration letting you configure emitters, emitter options, compiler options, etc.
main.tsp         # TypeSpec entrypoint.
```
Edit the `main.tsp` file as necessary for your definition.


```
$ tsp format **/*.tsp # this will format all .tsp files in the project
```

Now you can compile the project running

```
$ tsp compile .
```

(if you're in a different folder than the project root, pass the path to the compile command)


You're all set! 🚀


