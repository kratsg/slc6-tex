FROM cern/slc6-base
RUN yum groupinstall -y "Development Tools"
RUN yum install -y "texlive-latex"
RUN yum install -y wget
RUN wget http://mirrors.ctan.org/macros/generic/xstring/xstring.tex
RUN wget http://mirrors.ctan.org/macros/generic/xstring/xstring.sty
RUN wget http://mirrors.ctan.org/macros/latex/contrib/adjustbox/adjustbox.dtx
RUN wget http://mirrors.ctan.org/macros/latex/contrib/adjustbox/adjustbox.ins
RUN wget http://mirrors.ctan.org/macros/latex/contrib/adjustbox/adjcalc.dtx
RUN wget http://mirrors.ctan.org/macros/latex/contrib/adjustbox/trimclip.dtx
RUN wget http://mirrors.ctan.org/macros/latex/contrib/collectbox/collectbox.dtx
RUN wget http://mirrors.ctan.org/macros/latex/contrib/collectbox/collectbox.ins
RUN wget https://raw.githubusercontent.com/leanprover/tutorial/master/tc-pgf.def
RUN latex adjustbox.ins; latex collectbox.ins;
RUN rm *.dtx; rm *.ins
