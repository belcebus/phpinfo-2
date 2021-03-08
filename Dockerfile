FROM alpine

WORKDIR /app

# copiamos el contenido a /app
COPY src .

# para ejecutar php
RUN apk add --upgrade php

# lo que queremos ejecutar: php index.php
ENTRYPOINT /usr/bin/php

CMD ["-f", "index.php", "-S", "0.0.0.0:8080"]
