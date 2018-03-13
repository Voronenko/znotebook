```sh
#!/bin/bash

set -e

mkdir -p ~/z_personal_notes
cp *.ipynb ~/z_personal_notes
virtualenv -p python3 ~/.virtualenvs/project_notes
source ~/.virtualenvs/project_notes/bin/activate
pip3 install jupyterlab
pip3 install bash_kernel
python3 -m bash_kernel.install
pip3 install iplantuml

```

zsh integration:
```
alias znotes='workon project_notes && cd ${ZNOTES_PATH-~/z_personal_notes} && jupyter lab'
```

Desktop integration:

```sh
#!/bin/bash

set -e

mkdir -p ~/apps/nteract
wget -o nteract-0.8.3-x86_64.AppImage https://github.com/nteract/nteract/releases/download/v0.8.3/nteract-0.8.3-x86_64.AppImage
chmod +x nteract-0.8.3-x86_64.AppImage
cp ./znotes.desktop ~/.local/share/applications/
cp ./nteract.sh ~/apps/nteract

```

Example of notebook:

```

In Ipython, first,

import iplantuml
then, create a cell like,

%%plantuml

@startuml
Alice -> Bob: Authentication Request
Bob --> Alice: Authentication Response
@enduml

```
