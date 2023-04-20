data{
    int N;
    real n[N];
    int y[N];
}

parameters{
    real alpha;
    real theta;
}

model{
    alpha ~ normal(0.8, 0.18); 
    theta ~ normal(0.00085, 0.000085);  
    
    for (i in 1:N){
        y[i] ~ poisson_log(alpha + theta * n[i]);
    }
}
generated quantities {
    real y_pred[N];

    for (i in 1:N){
        y_pred[i] = poisson_log_rng(alpha + theta *n[i]);
    }
}