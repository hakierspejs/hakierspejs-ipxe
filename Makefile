all: docker image

docker:
	sudo docker build -t ipxe-build .

image:
	sudo docker run --name=ipxe -v ${PWD}/ipxe:/work/entry -it ipxe ./build.sh

clean:
	rm ipxe/ipxe.iso

cleandocker:
	sudo docker rm ipxe
	sudo docker rmi ipxe-build
