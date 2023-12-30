FROM "quay.io/jupyterhub/jupyterhub"

WORKDIR /srv/jupyterhub
COPY "jupyterhub_config.py" .
COPY "0x509.png" .

RUN python3 -m pip install --no-cache-dir \
    dockerspawner \
    jupyterhub-nativeauthenticator

CMD ["jupyterhub", "-f", "/srv/jupyterhub/jupyterhub_config.py"]