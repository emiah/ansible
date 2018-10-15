### Run ansible
   ansible-playbook -i inventory/redis/inventory.cfg redis_cluster.yml -u root --tags=install

# Redis cluster topology
Yêu cầu tối thiểu 3 node

![atom](../image/topo_redis_cluster.png)

![cluster node](../image/cluster_node.png)

note:

<id> <ip:port> <flags> <master> <ping-sent> <pong-recv> <config-epoch> <link-state> <slot> <slot> ... <slot>


### Add node
    redis-trib.rb add-node <ip>:<port>
### Add Salve
    redis-trib.rb add-node --slave --master-id <master_id> <ip.slave>:<port> <ip.master>:<port>

### Removing a node
    redis-trib del-node <ip>:<port> <node-id>

## Thao tác khi 1 node die

Khi master trong cặp master slave bị die, slave sẽ được đẩy lên làm master. Khi master old sống lại nó sẽ làm slave của master hiện tại.

- Hệ thống ban đầu

![aaa](../image/bt.png)

- Hệ thống khi 1 node die

![bb](../image/node_die.png)

Cần tái lập lại hệ thống ban đầu bằng cách restart redis sau khi node die hoạt động trở lại.

test1
test2
