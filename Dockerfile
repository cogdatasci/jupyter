FROM jupyter/tensorflow-notebook

## install python packages
RUN pip install \
	jupyterlab-lsp \
	git+https://github.com/krassowski/python-language-server.git@main \
	jupyterlab_sublime \
	dfply \
	pymc3 \
	numpyro \
	bambi \
	&& pip cache purge

## customize jupyterlab
RUN jupyter labextension install jupyterlab_onedarkpro \
	&&  ipython profile create \
	&& echo "c.Completer.use_jedi = False" >> ~/.ipython/profile_default/ipython_config.py \
	&& echo "c.NotebookApp.notebook_dir = '/root/working/'" >> ~/.jupyter/jupyter_lab_config.py \
	&& mkdir -p ~/.jupyter/lab/user-settings/@jupyterlab/extensionmanager-extension/ \
	&& mkdir -p ~/.jupyter/lab/user-settings/@jupyterlab/apputils-extension/ \
	&& touch ~/.jupyter/lab/user-settings/@jupyterlab/extensionmanager-extension/plugin.jupyterlab-settings \
	&& echo '''{"disclaimed":true}''' >>  ~/.jupyter/lab/user-settings/@jupyterlab/extensionmanager-extension/plugin.jupyterlab-settings \
	&& touch ~/.jupyter/lab/user-settings/@jupyterlab/apputils-extension/themes.jupyterlab-settings \
	&& echo '''{"theme": "JupyterLab One Dark Pro"}''' >>  ~/.jupyter/lab/user-settings/@jupyterlab/apputils-extension/themes.jupyterlab-settings
