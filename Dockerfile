FROM rust:latest

WORKDIR /usr/src/myapp

COPY . .

RUN rustup default nightly

RUN rustup override set nightly

# RUN cargo build --release

# RUN cargo install --path .

CMD ["cargo", "run"]