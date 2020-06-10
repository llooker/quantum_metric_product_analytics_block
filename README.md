# Quantum Metric Business Pulse Dashboard Block

## What does this Looker Block do for me?

Use the Quantum Metric Business Pulse Dashboard Block to ensure greater visibility of your ??? data throughout your organization. Use Looker’s interface and tools to create custom alerts, see trends over time, or merge your ??? data with data from other ??? for deeper analysis. A sample of the analysis in this block includes:


* **Visualize your Digital Product's Performance -** Immediate and granular insights into the overall performance and underlying factors and behaviors influencing business outcomes.

* **Centralize your customer data -** Break down data silos by consolidating insights around technical performance, UX behaviors and revenue in one place

* **Server Log Analysis:**
-     Funnel Performance - Identify which steps in your funnel are driving drop-off and build cohorts and segments to better diagnose root cause
-     Revenue/AOV/Business Impact - Pull in your Quantum Metric definition of revenue or business impact to place a dollar value on insights
-     Engagement Time/Scroll Depth - Go beyond vanity metrics like Time-On-Page to understand how and where users actually spend their time engaging
-     Error Occurrences - Identify errors, both those visible to the client as well as those occurring behind the scenes and understand impact on KPIs
-     Page Performance - Identify slow-loading pages or steps within a single-page app and understand impact on conversion


## How to implement this Block

Create a connection to your BigQuery database on your Looker instance. ??? How do I know if I have the correct data loaded into my BigQuery database to support this block?

Download the LookML files and drag them into your LookML project, or copy and paste the text.

Rename the `connection_name`, `schema_name` and `organization_name` constants in the manifest file (`manifest.lkml`) to match your environment.

[More on Developing Looker Models](https://docs.looker.com/data-modeling/getting-started/model-development)

###### LookML model:
* product_analytics

###### Dashboards:
* business_pulse

###### Views:
* base_table_core.view


## What if I find an error or discrepancy? Suggestions for improvements?
If you have feedback for improvements or find any errors, feel free to create a "New Issue" in the github repository for this Block.

[Quantum Metric](https://www.quantummetric.com/)

====================================================================================================================
<br>
Copyright 2020

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
