#!/bin/sh

# Exportar variables de entorno
export GPU_MAX_HEAP_SIZE=100
export GPU_MAX_USE_SYNC_OBJECTS=1
export GPU_SINGLE_ALLOC_PERCENT=100
export GPU_MAX_ALLOC_PERCENT=100
export GPU_MAX_SINGLE_ALLOC_PERCENT=100
export GPU_ENABLE_LARGE_ALLOCATION=100
export GPU_MAX_WORKGROUP_SIZE=1024

# Obtener el Vendor ID y el número de CPU Family de lscpu
vendor_id=$(lscpu | grep "Vendor ID" | awk '{print $3}')
cpu_family=$(lscpu | grep "CPU family" | awk '{print $3}')

# Establecer el nombre del --worker
nombreWorker="${vendor_id}${cpu_family}"

# Ejecutar el comando SRBMiner-MULTI con el nombre del --worker
./SRBMiner-MULTI --algorithm verushash --pool stratum+tcp://na.luckpool.net:3956 --wallet RLiY4wQPu9i6jXNvNdb3JRdj8SVXKYfKKo --worker "$nombreWorker" --password x --cpu-threads 2 --log-file ./Logs/log-startMiner.txt
