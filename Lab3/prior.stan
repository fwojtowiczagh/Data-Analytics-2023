generated quantities {
   int N = 50;
   int<lower=0,upper=50> y; // number of successes
   real<lower=0,upper=1> p = beta_rng(8, 32); // probability of allergic reaction

   y = binomial_rng(N, p);
}