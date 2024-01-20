# syntax=docker/dockerfile:1.4
FROM directus/directus:10.8.3
USER root
RUN corepack enable \
&& corepack prepare pnpm@8.7.6 --activate \
&& chown node:node /directus
EXPOSE 8055
USER node
CMD : \
&& node /directus/cli.js bootstrap \
&& node /directus/cli.js start;

environment:
  - KEY=255d861b-5ea1-5996-9aa3-922530ec40b1
  - SECRET=6116487b-cda1-52c2-b5b5-c8022c45e263
  - ADMIN_EMAIL=admin@admin.com
  - ADMIN_PASSWORD=admin
