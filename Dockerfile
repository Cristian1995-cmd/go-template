# syntax=docker/dockerfile:1

FROM golang:1.23 AS builder

WORKDIR /src

# Download modules separately for better layer caching
COPY go.* ./
RUN --mount=type=cache,target=/root/.cache/go-build \
    --mount=type=cache,target=/go/pkg/mod \
    go mod download

COPY . .
RUN --mount=type=cache,target=/root/.cache/go-build \
    --mount=type=cache,target=/go/pkg/mod \
    go mod tidy
RUN --mount=type=cache,target=/root/.cache/go-build \
    --mount=type=cache,target=/go/pkg/mod \
    CGO_ENABLED=0 GOOS=linux go build -o /out/go-template ./cmd/app

FROM gcr.io/distroless/base-debian12

WORKDIR /app

COPY --from=builder /out/go-template /app/go-template
COPY --from=builder /src/config.yaml /app/config.yaml

USER nonroot:nonroot

EXPOSE 8080

ENTRYPOINT ["/app/go-template"]
