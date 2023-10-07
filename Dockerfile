FROM nixpkgs/nix:nixos-23.05

ENV PATH=/root/.nix-profile/bin:/usr/bin:/bin

RUN set -e -x; \
    nix-env -iA cachix -f https://cachix.org/api/v1/install; \
    cachix use moergo-glove80-zmk-dev; \
    mkdir -p /glove80-zmk-config/config; \
    git clone -b main https://github.com/moergo-sc/zmk /glove80-zmk-config/src; \
    : Pre-build zmk to populate the nix store with the dependencies; \
    cd /glove80-zmk-config/src; \
    nix-shell --run true --attr zmk .

RUN set -e -x; \
    (\
    echo '#!/bin/bash'; \
    echo 'DST=$PWD'; \
    echo 'set -e -x'; \
    echo 'cp -v config/* /glove80-zmk-config/config'; \
    echo 'cd /glove80-zmk-config'; \
    echo 'nix-build config -o combined'; \
    echo 'cp -v combined/glove80.uf2 "$DST/glove80.uf2"'; \
    echo 'chown "$UID:$GID" "$DST/glove80.uf2"'; \
    ) > entrypoint.sh; \
    chmod a+x entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

# Run build.sh to use this file
