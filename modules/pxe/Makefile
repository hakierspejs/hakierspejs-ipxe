all: docker image

docker:
	sudo docker build -t ipxe-build .

image:
	sudo docker run --rm --name=ipxe -v ${PWD}/ipxe:/work/entry -it ipxe-build ./build.sh

clean:
	rm ipxe/ipxe.iso

cleandocker:
	sudo docker rmi ipxe-build
