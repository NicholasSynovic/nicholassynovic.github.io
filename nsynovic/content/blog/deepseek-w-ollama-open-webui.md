______________________________________________________________________

title: DeepSeek w/ Ollama + Open WebUI description: DeepSeek w/ Ollama + Open
WebUI summary: DeepSeek w/ Ollama + Open WebUI

categories: [ai, docker, opensource, watercooler] citations: ['']

draft: false

## date: 2025-01-28T10:33:47-05:00 featured_image: '' include_toc: true markup: md outputs: [] show_comments: false toc: false show_reading_time: true

## Table of Contents

- [Table of Contents](#table-of-contents)
- [DeepSeek R1 Exists](#deepseek-r1-exists)
- [Ollama](#ollama)
- [Open WebUI](#open-webui)
- [Putting It All Together](#putting-it-all-together)

## DeepSeek R1 Exists

It's the latest exciting open-source LLM model and the first (to my knowledge)
open-source _reasoning_ model. While I'm unfamiliar with the intricacies of
reasoning models, the gist of it is that these LLMs "think through" the problem
before responding. In other words, as part of the output that you get from your
prompt, you also get the chain of thought that supports the reasoning behind the
model's output. This provides context as to why the model generated its final
output.

To be clear, I wouldn't call these models self-explaining; at the end of the
day, LLMs are still considered black boxes that generate text based on
statistical and mathematical computations. Just because DeepSeek "thinks
through" a problem does not mean that it is truly sentient, accurate, or
correct. There is still a need for human-in-the-loop (i.e., human reviewer)
style usage when leveraging these models.

With the context and clarification out of the way, how can you leverage DeepSeek
R1 locally? And more broadly, how do you do so with any open-source LLM?

## Ollama

You leverage Ollama, an open-source _inference engine_ that is designed to work
with _quantized LLMs_ via the _GGUF file format_ or hosted on the _Ollama Model
Hub_.

![https://media3.giphy.com/media/v1.Y2lkPTc5MGI3NjExOHJuYXpkeHpvN2N1YXFqbmphZTJmaHJpcm1uM2JoNzJ2d3dtdzVzZyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/3WmWdBzqveXaE/giphy.gif](https://media3.giphy.com/media/v1.Y2lkPTc5MGI3NjExOHJuYXpkeHpvN2N1YXFqbmphZTJmaHJpcm1uM2JoNzJ2d3dtdzVzZyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/3WmWdBzqveXaE/giphy.gif)

> [https://media3.giphy.com/media/v1.Y2lkPTc5MGI3NjExOHJuYXpkeHpvN2N1YXFqbmphZTJmaHJpcm1uM2JoNzJ2d3dtdzVzZyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/3WmWdBzqveXaE/giphy.gif](https://media3.giphy.com/media/v1.Y2lkPTc5MGI3NjExOHJuYXpkeHpvN2N1YXFqbmphZTJmaHJpcm1uM2JoNzJ2d3dtdzVzZyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/3WmWdBzqveXaE/giphy.gif)

In short:

- An inference engine is a utility to run machine and deep learning models
  efficiently by optimizing the model's underlying computational graph.
- The computational graph is similar to a program's call graph (or the order in
  which instructions are executed) but for mathematics
- Quantized LLMs are large language models whose computational graph relies on
  either a reduced number of bits to represent floating point numbers or
  integers.
- Deep learning models are often trained using bit widths of 64. 128, or higher
  to represent the nuances of data that can be represented at a given time.
  Reducing the bit width or precision (e.g., floating point representation to
  integer representation) often improves the latency of the model (measured in
  tokens per second) at the cost of precise answers.
- The GGUF file format is not important for this discussion, but you can learn
  more about it
  [here](https://github.com/ggerganov/ggml/blob/master/docs/gguf.md)
- The [Ollama Model Hub](https://ollama.com/search) hosts quantized LLMs ready
  for downstream consumption via the
  [`ollama` command line utility](https://github.com/ollama/ollama).

Ollama provides a very simple interface to get started with using LLMs locally.
Alternatives do exist (e.g., [`vllm`](https://vllm.ai)) but the tooling
surrounding Ollama is extensive and well-documented, so it is my preferred
choice when running LLMs locally.

As Ollama is a command-line utility it can be difficult to leverage tooling such
as document and image reasoning, web searching, retrieval augmented generation
(RAG), and multi-modal data analysis without having to develop your own
interface. This is where GUI interfaces such as Open WebUI fill the gap.

## Open WebUI

Open WebUI is a self-hostable application that communicates to Ollama via
Ollama's HTTP REST API. It provides a ChatGPT-like interface that I find
familiar while exposing existing ChatGPT features such as image generation,
document reasoning, RAG, and web search. It also supports new features like the
ability to chain multiple models together to provide one model with a prompt,
and then automatically pass the response of that model into a second or third
LLM for post-processing! I think it's a neat project and an exemplar of the
Ollama ecosystem. You can find more information about it
[here](https://github.com/open-webui/open-webui).

## Putting It All Together

Having gone through all of this now, how can we install these tools?

If you are on an M series Mac, you should install Ollama locally and ignore all
references to Ollama docker installation hereafter. This is because Ollama via
Docker does not support M series Mac GPU acceleration, but the compiled binary
does. You can read about it
[here](https://ollama.com/blog/ollama-is-now-available-as-an-official-docker-image).

For everyone else, I recommend installing Ollama and Open Web UI via Docker
Compose via this YAML file:

```yaml
version: '3.8'
name: ai

services:
  ollama:
    container_name: ollama
    image: ollama/ollama:0.5.7
    restart: always
    networks:
      - ollama-network
    ports:
      - "11434:11434"
    volumes:
      - ollama:/root/.ollama
    deploy:
      resources:
        reservations:
          devices:
            - driver: nvidia
              capabilities: [gpu]

  open-webui:
    container_name: open-webui
    image: ghcr.io/open-webui/open-webui:0.5.7
    restart: always
    extra_hosts:
      - "host.docker.internal:host-gateway"
    networks:
      - ollama-network
    ports:
      - "3000:8080"
    volumes:
      - open-webui:/app/backend/data

networks:
  ollama-network:
    external: false

volumes:
  ollama:
  open-webui:
```

Copy this to a `docker-compose.yml` file and then run:

```shell
docker compose --file ./docker-compose.yml create
docker compose --file ./docker-compose.yml start
```

This installs Ollama at its latest version (as of writing) with NVIDIA GPU
acceleration support across all GPUs. It also installs the latest version of
Open WebUI (as of writing). The Ollama HTTP REST API is exposed on port 11434
and Open WebUI is exposed on port 3000.

If you don't have NVIDIA GPU support for Docker or are using a different GPU
vendor or intend to run this on CPU, see this post from
[Ollama](https://ollama.com/blog/ollama-is-now-available-as-an-official-docker-image).

Once installed run the following command to install DeepSeek R1 from Ollama's
Model Hub:

```shell
docker compose --file ./docker-compose.yml exec ollama ollama pull deepseek-r1:7b
```

Then refresh your browser's connection to Open WebUI (via http://localhost:3000)
and you should be able to start using DeepSeek R1 locally!

![DeepSeek R1 7B running on my system through Open WebUI with Ollama as the backend inference server](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/u17kp8sbp9l3qttjsdxr.png)

> **NOTE**: All computers are different and unique snowflakes. For context, I
> have deployed this on a system running Pop OS with an NVIDIA 3060 GPU. While
> I've done my best to make deployment of Ollama, Open WebUI, and DeepSeek R1
> repeatable and reproducible, your system might need additional tinkering to
> get it to work right. Please see both the Ollama and Open WebUI documentation
> and GitHub Issue boards for support.
