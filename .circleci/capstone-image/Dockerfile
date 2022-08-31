FROM ubuntu

RUN apt-get update && \
	apt-get install -y curl zip tar gzip

# install awscli
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
	unzip awscliv2.zip && \
	./aws/install && \
	rm -rf awscliv2.zip && \
	rm -rf ./aws

# install docker
RUN curl -fsSL https://get.docker.com -o get-docker.sh && \
	sh get-docker.sh && \
	rm -rf get-docker.sh