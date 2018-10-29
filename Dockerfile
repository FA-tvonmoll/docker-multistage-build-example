# VALIDATE
FROM frolvlad/alpine-bash as pre-build-validator
WORKDIR /app
COPY ./ /app/
RUN ./validate-ignore.sh

# BUILD
FROM node:10 as builder
WORKDIR /app
COPY --from=pre-build-validator /app /app/
RUN npm install

# FLATTEN
FROM node:10-alpine as output
COPY --from=builder /app /
EXPOSE 8080
ENTRYPOINT ["npm"]
CMD ["start"]
