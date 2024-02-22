# Reporter Assay Statistical Analysis:

This project is conducted as an extension of our prior findings regarding protein-protein interactions involving the protein of interest with proteins 1/2/3. The aim is to investigate whether proteins 1/2/3 exert any significant influence on the activity of the protein of interest. To address this, we opted for a reporter assay to discern whether the absence of any of these proteins has a notable impact on the activity of the protein of interest.

Samples were initially transfected with either siControl, siRNA1, siRNA2, or siRNA3. Following a 48-hour period post-siRNA transfection, the samples underwent transfection with either a control reporter plasmid or the reporter plasmid itself. After an additional 48 hours post-control or reporter plasmid transfection, activity levels were assessed through imaging (manual counting) or FACS detection. Each experiment was repeated independently at least four times.

The results were then organized into corresponding data frames within R. Shapiro-Wilk tests and Levene tests were conducted to confirm that the data adheres to the assumptions of normality and equal variance. Subsequently, one-way ANOVA tests were performed after converting the results into factors.

Through our analysis employing the FACS gating method we deemed most suitable for our assay, we found that while the absence of gene 1 appeared to reduce the activity of the protein of interest, the absence of genes 2 and 3 seemed to yield an opposite effect. However, considering the calculated p-value, it became evident that only the absence of gene 1 significantly impacts the activity of the protein of interest.
