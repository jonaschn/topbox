FROM openjdk:7
SHELL ["/bin/bash", "-c"]

RUN curl https://pyenv.run | bash && \
    echo 'export PATH="/root/.pyenv/bin:$PATH"' >> ~/.bashrc && \
    echo 'eval "$(pyenv init -)"' >> ~/.bashrc && \
    echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc && \
    source ~/.bashrc && \
    pyenv install miniconda3-4.7.12 && \
    pyenv global miniconda3-4.7.12
# necessary for following docker commands
ENV PATH /root/.pyenv/versions/miniconda3-4.7.12/bin:$PATH

WORKDIR /opt/topbox
COPY requirements.txt requirements.txt
RUN conda install --yes --file requirements.txt

CMD ["/bin/bash"]