# IEMLP
Related Data and Code that using in "Inconsistency of evaluation metrics in link prediction"
This work has been published in	arXiv(https://doi.org/10.48550/arXiv.2402.08893)

# The process of calculating the correlation between any two evaluation metrics M1 and M2.
1) Initially, the original network is divided into training and probe sets at a ratio, for example 9:1. Next, the evaluation scores of different algorithms Ai(i = 1, 2, ..., P) (here we show an example for P = 5) are calculated by M1 and M2. The average scores can be obtained by multiple implementations with different random divisions of training and probe sets. Based on the average scores, we can get two rankings of algorithms corresponding to M1 and M2, respectively.
2) We select a large number of real-world networks G1, G2,..., GQ, and for each network Gi and each metric Mj, we can obtain a ranking of the P algorithms (here we show an example for Q=3).
3) We calculate the correlation coefficient of M1 and M2 by applying some ranking correlation coefficients (e.g., the Spearman correlation coefficient and the Kendall’s τ correlation coefficient) and averaging over the Q selected networks.

# Evaluation Metrics
Precision, Recall, Accuracy, Specificity,F1-measure, Youden, MCC, AUC, AUPR, AUC-Precision, NDCG, and AUC-mROC

# Link Prediction Algorithms
Common Neighbor Index, Resource Allocation Index, Local Path Index, Adamic-Adar Index, Preferential Attachment Index, Jaccard Index, Average Commute Time, Sim Index, Length Three, Adjacency Three, Katz Index, Liner Optimization, Salton Index, Sørenson Index, Hub Promoted Index, Hub Depressed Index, Local Random Walk, Superposed Random Walk, Leicht-Holme-Newman-1 Index, Matrix Forest Index, Local Naive Bayes based Adamic-Adar Index, Local Naive Bayes based Resource Allocation Index, Salton Cosine Similarity, Controlling the Leading Eigenvector, Common neighbor and Centrality based Parameterized Algorithm.

If you use the code and data of the related algorithm, please remember to cite “Bi Y, Jiao X, Lee Y L and Zhou T 2024 Inconsistency of evaluation metrics in link prediction (arXiv:2402.08893)”
