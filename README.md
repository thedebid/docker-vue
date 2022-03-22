# Vue App with Docker

Deploy vuejs app with docker container

**Now let’s build the Docker image of our Vue.js app:**

> docker build -t dockervue .

**To list the docker images**

> docker images

**After docker image created we can run our Vue.js app in a Docker container:**

> docker run -it -p 8000:80 --name dockervue dockervue

We should be able to access our Vue.js app on [localhost:8000](http://localhost:8000/).

### Output should be looks like this

![Preview for VueJs App](./preview.png 'This is VueJs App Preview')
