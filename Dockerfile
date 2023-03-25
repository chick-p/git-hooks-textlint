FROM node:lts-alpine

COPY .config/.textlintrc.json /.textlintrc.json
COPY .config/prh.yml /prh.yml

RUN npm install -g textlint@latest \
    @textlint-rule/textlint-rule-pattern@latest \
    textlint-rule-prh@latest

ENV PATH=/usr/lib/node_modules/.bin:$PATH
