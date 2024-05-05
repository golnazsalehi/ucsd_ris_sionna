GPU=
ifdef gpus
    GPU=--device "nvidia.com/gpu=$(gpus)"
endif
export GPU

run-docker:
	docker run -u $(id -u):$(id -g) -p 127.0.0.1:8888:8888 -v ~/work/custom:/tf --privileged=true $(GPU) --env NVIDIA_DRIVER_CAPABILITIES=graphics,compute,utility --rm -it sionna

run-docker-local:
	docker run -u $(id -u):$(id -g) -p 127.0.0.1:9999:8888 -v ~/Documents/Research/sionna_proj:/tf --privileged=true $(GPU) --env NVIDIA_DRIVER_CAPABILITIES=graphics,compute,utility --rm -it sionna
