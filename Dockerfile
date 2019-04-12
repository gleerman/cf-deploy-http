FROM python:2.7

ENV SHELL /bin/bash
COPY cfhttp-update /usr/local/bin/

CMD ["bash"]
