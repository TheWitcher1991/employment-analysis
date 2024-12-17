sudo docker exec -it superset superset fab create-admin \
               --username admin \
               --firstname Superset \
               --lastname Admin \
               --email admin@admin.com \
               --password admin

sudo docker exec -it superset superset db upgrade

sudo docker exec -it superset superset load_examples

sudo docker exec -it superset superset init
