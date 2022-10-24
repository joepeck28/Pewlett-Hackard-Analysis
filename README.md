# Pewlett-Hackard-Analysis
## Initial Analysis
Pewlett Hackard has a pending silver tsunami. With the current generation of senior staff members on the verge of retirement, a plan needs to be implemented to track the potential departures, forecast the possible impact, and train a new group of seniore staff members and team leaders to replace them.
### ERD and CSV import
I started my analysis by examining the data that was provided. Six .csv files containing employee inforamtion that needed to be be linked and cross referenced in order to gain insight into the data. I used a visual aid to create a schema, or, a picture of the files, their headings, and how they realated to each other

![final_erd](https://user-images.githubusercontent.com/110148559/197456362-1d26ca41-7849-4753-af3e-5d47665a8edb.png)

After creating the schema I imported the data into PostgreSQL using primary and foreign, or, reference keys that allow me to see how the data can be linked across multple databases.

### Filtering Data

I combined the data to see how many current emplyees fell within a certain age bracket. The initial number was more than 130,000 employees. However, on closer inspection it appeared that some employees had been promoted, changed departments or had already left the company and the data need further examination.

![initial_data](https://user-images.githubusercontent.com/110148559/197457339-53fa5719-b1c0-4a6f-a1e3-bd91e1378f7b.png)

Using a DISTINCT ON approach to eliminate current employees that had moved departments, and using a filter to remove prior departures we narrowed the the scope to almost half of the initial number

![unique_data](https://user-images.githubusercontent.com/110148559/197457654-77bacf0e-8be2-46e4-a7f6-30a910ed778b.png)

### Assessing the impact

We were asked to get a count of the potential retirees by their title in order to see how many were Senior staff or Leaders in their respective departments Using a COUNT method I was able to see that more than 50,000 employees met this criteria

![senior_leaders](https://user-images.githubusercontent.com/110148559/197458279-0d0ce853-abcc-4323-959c-3711200a5174.png)

### Try to minimize the impact

Looking into the future and trying to decrease the shock of so many senior level employees I was asked looked at the next age bracket of employees born a little more recently that might still have a few years before retirement. These employees might be interested in a mentorship program, to be trained into the senior level positions that may soon be opened up.

![next_generation_leaders](https://user-images.githubusercontent.com/110148559/197459694-01f2d743-1cad-4419-9f24-9995bdab0454.png)


  - More than 75,000 potential retirees on the horizon
  - More than 50,000 of them in senior level positions
  - Just over 1500 meeting the initial criteria of being born in 1965
  - An expanded criteria search must be used
  
 ## Suggestions
 ### Broader age range
 
 Looking at a wider range of ages like those born from 1956-1965 results in a considerably larger field of mentorship candidates. 
 
 ![Expanded_Mentorship_1](https://user-images.githubusercontent.com/110148559/197461075-8f4c08a9-8967-4d53-a963-ae9710be4e8d.png)

### Looking to the younger leaders

Broadening the scope to a younger but still capable and eager subset might serve to best futureproof the company by drawing from a group that is further from retirement age but that have proven themselves as talented employees with good long term potential.

![Expanded_Mentorship_2](https://user-images.githubusercontent.com/110148559/197462166-d231dbac-f4e1-4f2d-97ae-afedd8cd6c83.png)

  - This focused scope shows a group, with adequate numbers for attrition, of individuals that may be good potential candidates for a mentorship program.
