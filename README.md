This repository demonstrates a potential issue related to unexpected behavior when traversing nested tables in Lua using the `pairs` iterator.  The `pairs` iterator does not guarantee any particular order, which can lead to unpredictable results if the code relies on a specific order of iteration. This example shows a nested table and attempts to access a deeply nested element after traversing using `pairs`. The behavior can vary across Lua versions and implementations, potentially leading to silent failures or incorrect results.