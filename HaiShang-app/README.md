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
- HSTutorialLink

  
#### 详情
- HSUser
	- ID
	- username
	- password
- HSProject
	- name
	- type: 0 default, 1 user-created, 2 recommend
	- createdUserID:
- HSUserProjects
	- userID
	- projectID
	- upCyclePoint:
	- upCycleTime: month, 季度, half-year, year
	- upLink:
- HSUserTasks
	- userID
	- projectID
	- taskTime
	- isUpped
	- remark
- HSTutorialLink
	- link
	- title
	- upForProjectID
	- detail
- HSTutorialProjectRel
	- tutorialID
	- projectID
