
</style>





</head>

<body>
<h1>Title</h1>

<p>A full description is available at the site where the data was obtained:</p>

<p><a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones">http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones</a> </p>

<p>Source of the original data: <a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip">https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip</a> .</p>

<p>The R script called run_analysis.R that does the following. </p>

<pre><code>1. Merges the training and the test sets to create one data set.
Returns one data set by reading &quot;train data&quot;&quot; and &quot;test data&quot;&quot; and merging all component files &quot;gad&quot;.

2. Extracts only the measurements on the mean and standard deviation for each measurement. 

 Reads file features.txt and extracts only the measurements on the mean and SD.

3. Uses descriptive activity names to name the activities in the data set
    Reads activity_labels.txt and applies descriptive activity names to name the activities in the data
</code></pre>

<p>walking, walkingupstairs, walkingdownstairs, sitting, standing, laying</p>

<pre><code>4. Appropriately labels the data set with descriptive activity names. 
tbodyacc-mean-x
</code></pre>

<p>Then it merges the data frame  with data frames containing activity labels and subject IDs.
tbodyacc-mean-y,tbodyacc-mean-z, tbodyacc-std-x,tbodyacc-std-y,tbodyacc-std-z, tgravityacc-mean-x,tgravityacc-mean-y</p>

<pre><code>5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
</code></pre>

</body>

</html>

