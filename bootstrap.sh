for i in master worker1 worker2 worker3
do
  docker-machine create $i
done

docker-machine ssh master docker run -d --restart=unless-stopped -p 8080:8080 rancher/server:preview

echo "Dashboard on http://$(docker-machine ip master):8080"
