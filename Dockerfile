FROM ubuntu:18.04

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
    curl \
    texlive-latex-recommended \
    texlive-latex-extra \
    texlive-fonts-recommended \
    texlive-fonts-extra \
    texlive-lang-all \
 && rm -rf /var/lib/apt/lists/*

COPY root /

CMD ["bash"]

