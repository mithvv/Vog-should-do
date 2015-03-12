#Vog-should-do

## Haishang
专注于解决一个问题：在天朝生存下去之求求你请让我顺利缴费

### UI

#### 首页

```
________________________
|待缴费
|_______________________
|
|
|-----------------------
|
| 水		电		燃气
|
|-----------------------
|
| 电信	物业	
|
|-----------------------
|
|
|
|-----------------------
|
------------------------
```


## DB


- HSUser
- HSProject
- HSUserProjects
- HSUserTasks
- HSUpLink

  
#### 详情
- HSUser
	- id
	- username
	- password
- HSProject
	- name
	- type: 0 default, 1 user-created, 2 recommend
	- createdUserId:
- HSUserProjects
	- userId
	- projectId
	- upCyclePoint:
	- upCycleTime: month, 季度, half-year, year
	- upLink:
- HSUserTasks
	- userId
	- projectId
	- taskTime
	- isUpped
	- remark
- HSUpLink
	- link
	- upForProjectId
	- detail
