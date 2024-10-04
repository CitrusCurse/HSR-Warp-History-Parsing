How this works.

Step 1: Fluent-Bit calls split_by banner.lua to take a single file and extract out each banner as an event.
Step 2: Fluent-Bit calls split_banner_events.lua does the line breaking. 
Step 3: Fluent-Bit calls data_enrichment.lua for data enrichment and normalization.
