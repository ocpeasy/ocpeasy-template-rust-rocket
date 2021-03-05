FROM rust:1.50.0
COPY . ./
COPY docker-entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN rustup install nightly
RUN rustup default nightly
RUN cargo install --path .
RUN cargo build
EXPOSE 3001
ENTRYPOINT ["/entrypoint.sh"]