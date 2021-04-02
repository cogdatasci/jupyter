# Jupyter

Dockerfile for Jupyter lab with common data science packages and preferred settings. Based on [jupyter/tensorflow-notebook](https://hub.docker.com/r/jupyter/tensorflow-notebook).

## To run

```
docker run -it -p 8888:8888 -v "`pwd`":/home/jovyan/work/ -e JUPYTER_ENABLE_LAB=yes cogdatascilab/jupyter
```

![Preview](https://user-images.githubusercontent.com/77553463/113453795-a1f09c80-93bb-11eb-87a6-2d11265d9c8e.png)

##  Details

Adds and configures a few niceties to jupyter lab.

* [Jupyterlab-LSP](https://github.com/krassowski/jupyterlab-lsp)
* [Jupyterlab sublime keybindings](https://github.com/ryantam626/jupyterlab_sublime)
* [One Dark Pro theme](https://github.com/johnnybarrels/jupyterlab_onedarkpro)

#### Notes

In the future need to Set up tagging system for managing versions.

Last edited: 4/2/21, 2:19 PM
