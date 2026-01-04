ARG BUILD_FROM
FROM $BUILD_FROM

# Install requirements for add-on
RUN \
  apk add --no-cache \
    python3 py3-pip

# Create virtualenv
RUN \
  python3 -m venv /opt/venv

ENV PATH="/opt/venv/bin:$PATH"

RUN \
  pip install --no-cache-dir \
    calibreweb==0.6.25

WORKDIR /data

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
