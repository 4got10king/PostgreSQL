create table if not exists roads(
  point1 varchar,
  point2 varchar,
  cost integer
);

insert into roads(point1, point2, cost)
values 
  ('a', 'b', 10),
  ('b', 'a', 10),
  ('a', 'c', 15),
  ('c', 'a', 15),
  ('a', 'd', 20),
  ('d', 'a', 20),
  ('b', 'd', 25),
  ('d', 'b', 25),
  ('d', 'c', 30),
  ('c', 'd', 30),
  ('b', 'c', 35),
  ('c', 'b', 35);
  
with recursive 
nodes as (select point1 as path, point1, point2, cost from roads where point1 = 'a'
union
select concat(nodes.path, ',', roads.point1) as path, roads.point1, roads.point2, nodes.cost + roads.cost from nodes
join roads on nodes.point2 = roads.point1 where path not like concat('%', roads.point1, '%')),
routes as (select cost as total_cost, concat('{', path, ',', point2, '}') as tour from nodes
where length(path) = 7 and point2 = 'a')

select * from routes where total_cost = (select min(total_cost) from routes)
order by total_cost, tour;