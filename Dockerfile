FROM cern/slc6-base
RUN yum groupinstall -y "Development Tools"
RUN yum -y install texlive texlive-latex texlive-xetex
RUN yum -y install texlive-collection-latex
RUN yum -y install texlive-collection-latexrecommended
RUN yum -y install texlive-xetex-def
RUN yum -y install texlive-collection-xetex
RUN yum -y install texlive-collection-latexextra
