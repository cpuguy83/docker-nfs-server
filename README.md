Docker NFS Server
================

Usage
----
```bash
docker run -d --name nfs --priviledged cpuguy83/nfs-server /path/to/share /path/to/share2 /path/to/shareN
```

```bash
docker run -d --name nfs-client --priviledged --link nfs:nfs cpuguy83/nfs-client /path/on/nfs/server:/path/on/client
``` 

More Info
=========

See http://www.tech-d.net/2014/03/29/docker-quicktip-4-remote-volumes/
