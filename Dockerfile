FROM python:latest
WORKDIR /tg_bot
ADD . /tg_bot
ARG bot_tk
ARG gs_tk
ENV TGBOT_TOKEN=$bot_tk
ENV GS_TOKEN=$gs_tk
RUN pip3 install --no-cache  -r /tg_bot/requirments.txt
RUN echo Container build has been finished
CMD ["python3", "/tg_bot/money_bot.py"]
