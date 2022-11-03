############################################
# Load Variables
. .\docker-00-variables.ps1

############################################
# Build + Run a sample microservice like webpage

# Local variables
$containername="ms_publication"
$imagename=$containername+":latest"
$dockerPortExposetoHost=8002
$dockerfile="ms_publication/Dockerfile"

# Build
# docker pull $imagename
docker build . -t $imagename -f $dockerfile

# Release
docker stop $containername
docker container rm $containername
$dockerPorts="$dockerPortExposetoHost"+":"+"$dockerPortExposeInternalContainer"
docker run -d `
    -p $dockerPorts `
    --network $dockerNetworkWithDNSCommon `
    --hostname $containername `
    --name $containername `
    $imagename

$url="http://localhost:"+$dockerPortExposetoHost
write-output $url

# Read the final output from log container
docker logs $containername --tail -1 --follow
