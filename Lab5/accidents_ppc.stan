generated quantities{
    real alpha = normal_rng(0.8, 0.18);
    real theta = normal_rng(0.00085, 0.000085);
    real n = normal_rng(5715, 1117);
    real lambda =  exp(alpha + theta * n);
    int y = poisson_rng(lambda);
}