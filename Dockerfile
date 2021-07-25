# Copyright (c) 2020-2021 Vincent A. Cicirello
# https://www.cicirello.org/
# Licensed under the MIT License
FROM cicirello/pyaction-lite:3
COPY JacocoBadgeGenerator.py /JacocoBadgeGenerator.py
run python3 -m ensurepip --default-pip
RUN python3 -m pip install requests
ENTRYPOINT ["/JacocoBadgeGenerator.py"]
