FROM mongorocks-builder

VOLUME /data/db

ENV AUTH yes
ENV STORAGE_ENGINE rocksdb
ENV JOURNALING yes

ADD run.sh /run.sh
ADD set_mongodb_password.sh /set_mongodb_password.sh

EXPOSE 27017

CMD ["/run.sh"]
