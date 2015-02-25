#Vog-should-do

专注于解决一个问题：在天朝生存下去之求求你请让我顺利缴费

## UI

### 首页

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


- User
- Project
- UserProjects
- UserTasks
- UpLink

  
### 详情
- User
	- username
	- password
- Project
	- name
	- type: 0 default, 1 user-created, 2 recommend
	- createdUserId:
- UserProjects
	- userId
	- projectId
	- upCyclePoint:
	- upCycleTime: month, 季度, half-year, year
	- upLink:
- UserTasks
	- userId
	- projectId
	- taskTime
	- isUpped
	- remark
- UpLink
	- link
	- upForProjectId
	- detail