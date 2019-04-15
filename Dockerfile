FROM python:2.7

RUN pip install requests

ENV SHELL /bin/bash
COPY cfhttp-update /usr/local/bin/


CMD ["bash"]
