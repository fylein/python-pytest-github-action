FROM python:3.7.4-slim

LABEL "com.github.actions.name"="GitHub Action for Python Pytest"
LABEL "com.github.actions.description"="Run pytest commands on python slim image"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="black"


RUN pip install --upgrade pip
RUN pip install pytest==5.2.2 pytest-cov==2.8.1 pytest-mock==1.11.2

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]