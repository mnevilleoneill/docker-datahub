# docker-datahub

Run the Logentries [DataHub](https://logentries.com/product/datahub/) in Docker containers. 

## Usage

1. Edit datahub.config and replace "Insert Account Key" with your Logentries [Account Key](https://docs.logentries.com/docs/accountkey).

2. Build the image:
	
	`sudo docker build -t docker-datahub .`

3. Start a daemonized container: 

	`sudo docker run -d -p 10000:10000 -P --name datahub docker-datahub` 