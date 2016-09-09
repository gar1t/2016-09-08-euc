<style>
.reveal .step {
  text-align: left;
  margin-left: 50px;
  margin-top: 20px;
}
cite {
  float: right;
  margin-right: 50px !important;
  font-size: 40px !important;
}
th, td {
  padding: 4px 12px !important;
  text-align: center !important;
}
td {
  font-size: 36px !important;
}
</style>

# The Deep Revolution

---

<img src="alpha-go.jpg">

---

<img src="google-car.jpg">

---

<img src="pong.gif" height="600">

---

> Machine learning is a core, transformative way by which we’re
> rethinking how we’re doing everything. We are thoughtfully applying
> it across all our products.

<cite>-- Sundar Pichai, Google CEO</cite>

---

# Deep Learning in Five Minutes

---

## Perceptrons

<img src="perceptron.png" height="500">

Michael A. Nielsen, *Neural Networks and Deep Learning*, Determination
Press, 2015

---

### A three layer neural network

<img src="network.png" height="400">

Michael A. Nielsen, *Neural Networks and Deep Learning*, Determination
Press, 2015

---

### Multiple hidden layers

<img src="network-2.png">

Michael A. Nielsen, *Neural Networks and Deep Learning*, Determination
Press, 2015

---

### Calculating Loss (aka Cost)

<img src="cost.png" height="300">

Michael A. Nielsen, *Neural Networks and Deep Learning*, Determination
Press, 2015

---

### Gradient Descent

<img src="gd.png" height="500">

Michael A. Nielsen, *Neural Networks and Deep Learning*, Determination
Press, 2015

---

## Backpropagation

- Efficiently calculate gradient of the cost function
- Introdued in 1970s, applied to network training in 1986
- Calculates partial derrivatives of cost wrt weights
- No, you didn't need to know that

---

### TensorFlow Playground

<img src="playground.png">

[http://playground.tensorflow.org/](http://playground.tensorflow.org/)

---

### Conv Network Architectures

- LeNet in 1990s - 6 layers
- AlexNet in 2012 - 12 layers
- ZF Net in 2013 - tweaks to hyperparams
- GoogLeNet/Inception in 2014 - 22 layers
- VGGNet in 2014 - 16/19 layers
- ResNet in 2015 - 50/101/152 layers
- ??? on September 16, 2016 - ??? layers

---

# Computational Requirements

---


## Alpha Go Hardware

- 1,920 standard CPUs
- 280 GPUs (or possibly TPUs)
- (1,920 x 70) + (280 x 200) = 190K watts
- 20 watts for Lee Sedol (9000x less power than AlphaGo)

---

<img src="gpu.jpg" height="600">

---

## CUDA and cuDNN

- APIs and libraries for programming Nvidia's GPUs
- Juggernaut in Deep Learning
- All major deep learning frameworks target CUDA/cuDNN

---

### CUDA Kernels

<img src="cuda-1.png" height="600">

[http://geco.mines.edu/tesla/cuda_tutorial_mio/](http://geco.mines.edu/tesla/cuda_tutorial_mio/)

---

### CUDA Kernels

<img src="cuda-2.png" height="600">

[http://geco.mines.edu/tesla/cuda_tutorial_mio/](http://geco.mines.edu/tesla/cuda_tutorial_mio/)

---

### Optimizing GPU Performance

<img src="maxas.jpg">

<a href="http://on-demand.gputechconf.com/gtc/2015/presentation/S5873-Amir-Khosrowshahi.pdf">E.g. OPTIMIZED GPU KERNELS
FOR DEEP LEARNING</a>

---

### Deep Learning Frameworks

<table>
<tr><th></th><th>GitHub Stars</th><th>Stack Exchange Score</th></tr>
<tr><td>TensorFlow</td><td>31,497</td><td>4,312</td></tr>
<tr><td>Caffe</td><td>12,373</td><td>1,164</td></tr>
<tr><td>CNTK</td><td>6,187</td><td>9</td></tr>
<tr><td>Torch</td><td>5,342</td><td>506</td></tr>
<tr><td>MXNet</td><td>4,985</td><td>23</td></tr>
<tr><td>Theano</td><td>4,482</td><td>1,784</td></tr>
<tr><td>deeplearning4j</td><td>3,959</td><td>37</td></tr>
<tr><td>PaddlePaddle</td><td>2,875</td><td>-</td></tr>
</table>

As of September 9, 2016

---

# Erlang and Deep Learning

---

## Erlang's Strengths

- Fault tolerance in long running systems
- Concurrent processing and IO
- System inspectability

---

### Erlang's Weaknesses

- It's not C
- It's not C++
- It's not Python
- It has no CUDA story whatsoever
- It has a weak OpenCL story and even that doesn't matter

---

## Erlang can be used in Deep Learning

- Client-side control systems
- Server-side support tools
- Inference server
- Maybe distributed Deep Learning training (total green field)

---

### Projects to take inspiration from

- Distributed TensorFlow (distributed training)
- TensorFlow Serving (inference)
- SparkNet (distributed training)
- DeepDisk (distributed training)

---

## Guild AI

- Expriments in augmenting Deep Learning data collection
- Formalize prepare, train, evaluate operations
- Local run visualization, comparison, analysis
- Data sharing and collaboration
- Command line interface (CLI) that, oddly, uses Erlang

---

## Guild AI Features

- Pluggable runtime (supports TensorFlow and test/reference)
- Formalized run lifecycle operations (prepare, train, evaluate)
- Pluggable data collectors
- Customizable views for run visualization and comparison
- Customizable visualization widgets
- Real time data updates

---

## Early Guild AI client

- https://github.com/guildai/guild-client

---

# Guild AI Demo

---

## `erlang-cli` <small>(aside)</small>

- Support for full featured command line interfaces (CLIs) in Erlang
- Trivially embeddable library, not a framework
- Consistent with mainstream POSIX utility conventions
- Support for commands with sub-parsers
- I _think_ feature parity with [jcomellas/getopt](https://github.com/jcomellas/getopt)

[https://github.com/gar1t/erlang-cli](https://github.com/gar1t/erlang-cli)

---

## More on Deep Learning

- [Talks by Andrew Ng](https://www.youtube.com/results?search_query=andrew+ng)
- [Neural Networks and Deep Learning](http://neuralnetworksanddeeplearning.com/)
- [TensorFlow online course by Udacity](https://www.udacity.com/course/deep-learning--ud730)
- [TensorFlow tutorials](https://www.tensorflow.org/versions/r0.10/tutorials/index.html)
- [Deep Learning Book](http://www.deeplearningbook.org/)
- [Guild AI](https://github.com/guildai) (green field)

---

# Questions

<p>@gar1t on Twitter</p>
