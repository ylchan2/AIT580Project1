---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home

---

<h1>Exploring the different income related to investment and expense in USA</h1>

![](assets/title.jpg){:class="img-responsive"}
<h6>Photo by <a href="https://unsplash.com/@kellysikkema?utm_source=unsplash&amp;utm_medium=referral&amp;utm_content=creditCopyText">Kelly Sikkema</a> on <a href="https://unsplash.com/s/photos/income-tax?utm_source=unsplash&amp;utm_medium=referral&amp;utm_content=creditCopyText">Unsplash</a></h6>


Taxes are the primary source of revenue for governments. Among other things, this money is spent to improve and maintain public infrastructure, 
fund public school, emergency services and welfare programs and national security or defense. (Kagan, 2021) 
Every year US Internal Revenue Service (IRS) collects data about Individual income tax return and this data contains relatively large numbers of columns which makes data collection 
process very expensive and difficult to do some data analysis like creating models. In this project we will visualize the data, 
figure out the correlation and relationship between some attributes and, we will create a model for prediction purpose. 
This data analysis benefits government officials to report and make projections and researchers in making policies and research taxpayer compliance and administration.		

![](assets/title3.jpg){:class="img-responsive"}
<h6>Photo by <a href="https://unsplash.com/@walkingondream?utm_source=unsplash&amp;utm_medium=referral&amp;utm_content=creditCopyText">Olga DeLawrence</a> on <a href="https://unsplash.com/s/photos/tax?utm_source=unsplash&amp;utm_medium=referral&amp;utm_content=creditCopyText">Unsplash</a></h6>


Individual income tax return data at the state and ZIP code level is collected by US Internal Revenue Service (IRS). 
The Internal Revenue Service (IRS) is a U.S. government agency responsible for the collection of taxes and enforcement of tax laws (such as the wash sale rule).
1 Established in 1862 by then-President Abraham Lincoln, the agency operates under the authority of the U.S. Department of the Treasury, 
and its primary purpose is the collection of individual income taxes and employment taxes. The IRS also handles corporate, gift, excise, and estate taxes. (Segal, 2021)

![](assets/absolutvision-82TpEld0_e4-unsplash.jpg){:class="img-responsive"}
<h6>Photo by <a href="https://unsplash.com/@freegraphictoday?utm_source=unsplash&amp;utm_medium=referral&amp;utm_content=creditCopyText">AbsolutVision</a> on <a href="https://unsplash.com/s/photos/purpose?utm_source=unsplash&amp;utm_medium=referral&amp;utm_content=creditCopyText">Unsplash</a></h6>

Why did they collect the data (purpose)?

Ø To make projections

Ø To research taxpayer compliance and administration.

Ø To help in the development of national income accounts.

IRS tax US residents to benefit people including building roads and bridges or provide basic utility for US residents. 
The IRS also collects how much taxpayers pay and how much they can be deducted from the government. 
The nature of the data is from the filled in form from the taxpayers. 
Individual tax statistics data are numerical and discrete. The IRS provides data for the tax result each year. 
The individual tax statistics data are a very detailed category for each tax element. 
Too many variables means the outcome can be overlooked and need much time to research. 
Individual tax statistics only provide the number of taxpayers in each state. 
There are no names or details of each person with their tax payment. Privacy and quality are accurate and easy to read. 

![](assets/title4.jpg){:class="img-responsive"}
<h6>Photo by <a href="https://unsplash.com/@mbaumi?utm_source=unsplash&amp;utm_medium=referral&amp;utm_content=creditCopyText">Mika Baumeister</a> on <a href="https://unsplash.com/s/photos/excel?utm_source=unsplash&amp;utm_medium=referral&amp;utm_content=creditCopyText">Unsplash</a></h6>

In this project we are trying to answer the following questions.

1) Visualize Adjusted gross income at state level

2) Calculate the correlation between education credit and total income

3) Calculate and visualize the correlation between different data in ISR data

Requirements and Resources needed

In this project, Tableau is used for map-based visualization. R is used for initial descriptive statistics and correlation analysis. 
The IRS data separate data into states and level of income of the people. IRS data needs to pre-process and grouped data into each state in order to process.  

The size of Individual income tax return data at the state and ZIP code level contains over 165k records and 126 attributes which shows the data contains every single detail about individual tax return, 
but this large size is somehow difficult to do some analysis like creating a model or clustering. 
Since the data has 126 columns it is difficult and visually less appealing to put the exact description of each column therefore this description was represented by some variables. 
Most of the attributes are in numbers about the detail of the tax income and expense, as example, total income, education expenses. 

![](assets/daatasetDescribtion.png){:class="img-responsive"}
The above table show the mean, standard deviation, minimum of total income, ordinary dividends, tax refund and standard deduction fields in the IRS dataset.
For more detail about the descriptive statistics, you can click [here](https://github.com/ylchan2/AIT580Project1/blob/main/analysis/AIT580final.ipynb){:target="_blank"}{:rel="noopener noreferrer"}

1) Visualize Adjusted gross income at state level

![](assets/tax_income.png){:class="img-responsive"}

Average income In Washington DC, Connecticut and Massachusetts is highest  where West Virginia and Mississippi are the lowest. Generally average income in west cost is higher and lower in the south.

![](assets/total_income1.jpg){:class="img-responsive"}

The total income per state are little bit different than average income per states. Californa and Taxes are the highest because those states has more people in it. 

![](assets/total_income_vs_adjustable_income.jpg){:class="img-responsive"}

Size of adjusted gross income are ranked from 1 to 6. 1 = 1 to 25000, 2 = 25000 to 50000, 3 = 50000 to 75000, 4 = 75000 to 100000, 5 = 100000 to 200000, 6 = 200000 or more
The above graph show the total income per each of the ranked. Most of the people are at 200000 or more. But as we see in the graph, there are more people 25000 to 50000 than 75000 to 100000.

2) Calculate the correlation between education credit and total income

![](assets/educationvstotalincome.png){:class="img-responsive"}

The graph of correlation of the between education credit and total income look like there are two lines. As the above graph which show that there are lowest and highest income group have the most people.
There is no correlation because lowest and highest income group has a different rate of using income vs education.

![](assets/correlationagi1.png){:class="img-responsive"}

Correlation graph with only group 1 = 1 to 25000

![](assets/correlationagi5.png){:class="img-responsive"}

Correlation graph with only group 5 = 100000 to 200000. As we can see the above two graph, there is a stronger correlation between total income and education credit after the data being seperated.
We can consult that there is a relation between total income and education credit but only if we seperate data into correct group.

3) Calculate and visualize the correlation between total income and adjustable income

![](assets/corrItemizeddeductionandTaxableIncome.png){:class="img-responsive"}

![](assets/corrStandardDeduction.png){:class="img-responsive"}


![](assets/correlation.jpg){:class="img-responsive"}

Total income adjust, and adjust gross income has strong correlation which is higher than 0.8.
The interesting thing are standard deduction and education credit to total income has the no correlation of all the data tested which is around 0.5. 
Our team initially thought dividends and education credit can be correlated with total income.


TODO:What conclusions can be supported for each analysis?

7) Limitations
• Discuss limitations of your analysis.
• Provide the future work that can improve your analysis to answer your question(s). 

## References
<!--UL-->
* Kagan, J. (2021, October 14). Tax Definition. Retrieved from www.investopia.com: https://www.investopedia.com/terms/t/taxes.asp#:~:text=27-,Why%20Do%20We%20Pay%20Taxes%3F,emergency%20services%2C%20and%20welfare%20programs.
* Segal, T. (2021, December 23). Internal Revenue Service (IRS). Retrieved from www.investopedia.com: https://www.investopedia.com/terms/i/irs.asp




