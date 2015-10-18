obs = c(7, 8, 9, 10)
probs = c(0.25, 0.25, 0.25, 0.25)
a = sample(obs, 1, prob = probs)

x = sort(round(rgamma(a, 30, 3),2))
x

c = seq(0, 20, 0.1)
d = dgamma(c, 30, 3)
plot (c,d, type = "l")