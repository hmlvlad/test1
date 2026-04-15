FROM public.ecr.aws/docker/library/alpine:latest
RUN apk add --no-cache python3
WORKDIR /app
COPY . /app
CMD ["python3", "-m", "http.server", "80"]
EXPOSE 80
