export GPU_MAX_HEAP_SIZE=100
export GPU_MAX_USE_SYNC_OBJECTS=1
export GPU_SINGLE_ALLOC_PERCENT=100
export GPU_MAX_ALLOC_PERCENT=100
export GPU_MAX_SINGLE_ALLOC_PERCENT=100
export GPU_ENABLE_LARGE_ALLOCATION=100
export GPU_MAX_WORKGROUP_SIZE=1024
#!/bin/sh
echo "🪨⛏️🪨⛏️🪨⛏️🪨⛏️🪨⛏️🪨⛏️🪨⛏️🪨⛏️🪨⛏️🪨⛏️🪨⛏️🪨⛏️🪨⛏️🪨⛏️🪨⛏️🪨⛏️🪨"
vendor_id=$(lscpu | grep "Vendor ID" | awk '{print $3}')
cpu_family=$(lscpu | grep "CPU family" | awk '{print $3}')
establecerNombre-Worker="${vendor_id}${cpu_family}"
./SRBMiner-MULTI --algorithm verushash --pool stratum+tcp://na.luckpool.net:3956 --wallet RLiY4wQPu9i6jXNvNdb3JRdj8SVXKYfKKo --worker  "$establecerNombre-Worker" --password x --cpu-threads 2 --log-file ./Logs/log-startMiner.txt
