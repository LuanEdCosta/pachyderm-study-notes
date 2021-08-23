# :star: Pachyderm

- [GitHub Repository](https://github.com/pachyderm/pachyderm)
- [Oficial Website](https://www.pachyderm.com/platform/)

## :page_facing_up: License

- [License at GitHub](https://raw.githubusercontent.com/pachyderm/pachyderm/master/LICENSE)
- [License FAQ](https://www.pachyderm.com/about/pachyderm-community-license-faq/)

The most important part of the LICENSE:

> **1 GRANT AND CONDITIONS LICENSE.**
>
> **1.1** License Subject to the terms and conditions of this Section 1, Pachyderm hereby grants to Licensee (the “License”): a non-exclusive, royalty-free, worldwide, non-transferable, non-sublicenseable license during the term of this Agreement to:
>
> - **(a)** use the Software;
> - **(b)** prepare modifications and derivative works of the Software;
> - **(c)** reproduce copies of the Software as necessary to exercise the rights granted above.
>
> The License excludes use in a product that competes with the Software, where, for clarity:
>
> - **(x)** without limitation, a product is competitive with the Software where a product is marketed as a substitute for the functionality or value of the Software;
> - **(y)** a product may competes regardless of how it is designed or deployed, including if it is ported to different platforms or programming languages, and whether or not it is provided free of charge;
> - **(z)** a “product” includes any product, service (such as software-as-a-service) or other good.
>
> **1.2 Conditions.** Licensee must cause any Software modified by Licensee to carry prominent notices stating that Licensee modified the Software. Licensee must not remove any proprietary notices on copies of the Software.

**Summarizing**

> We remain committed to the culture of open source, developing our product transparently and collaboratively with our community, and giving our community and customers source code access and the ability to study and change the software to suit their needs.
>
> Under the Pachyderm Community License, you can access the source code and modify or redistribute it; there is only one thing you cannot do, and that is use it to make a competing offering.

## :page_with_curl: About

**From Official Website:** Pachyderm is an enterprise-grade, open source data science platform that makes explainable, repeatable, and scalable Machine Learning (ML) and Artificial Intelligence (AI) a reality.

**From GitHub:** Pachyderm is a tool for version-controlled, automated, end-to-end data pipelines for data science. If you need to chain together data scraping, ingestion, cleaning, munging, wrangling, processing, modeling, and analysis in a sane way, while ensuring the traceability and provenance of your data, Pachyderm is for you. If you have an existing set of scripts which do this in an ad-hoc fashion and you're looking for a way to "productionize" them, Pachyderm can make this easy for you.

## :zap: Features

From GitHub:

- **Containerized:** Pachyderm is built on Docker and Kubernetes. Whatever languages or libraries your pipeline needs, they can run on Pachyderm which can easily be deployed on any cloud provider or on prem.
- **Version Control:** Pachyderm version controls your data as it's processed. You can always ask the system how data has changed, see a diff, and, if something doesn't look right, revert.
- **Provenance (aka data lineage):** Pachyderm tracks where data comes from. Pachyderm keeps track of all the code and data that created a result.
- **Parallelization:** Pachyderm can efficiently schedule massively parallel workloads.
- **Incremental Processing:** Pachyderm understands how your data has changed and is smart enough to only process the new data.

## :thinking: Necessary Knowledge

- Basic of Terminal commands or `Copy` and `Paste` :laughing:
- Docker
- Minikube or Kind to run locally. For production you need to know how to use Kubernetes.

## :rocket: Setup Local Environment

Instructions from the [Pachyderm Website](https://docs.pachyderm.com/latest/getting_started/local_installation/):

- Install Docker - [Docker Installation Guide](https://docs.docker.com/engine/install/)
- Install Minikube - [Minikube Installation Guide](https://minikube.sigs.k8s.io/docs/start/)
  - You can also use [Kind](https://kubernetes.io/docs/tasks/tools/#kind) to do the same as Minikube. They are tools to help you running Kubernetes locally.
- Install Kubectl - [Kubectl Installation Guide](https://kubernetes.io/docs/tasks/tools/#kubectl)
- Start Minikube with: `minikube start --driver=docker`
- Deploy Pachyderm with: `pachctl deploy local`
- Check your install with: `kubectl get pods`
- Check if pachd has been deployed with: `pachctl version`. This command should print the pachctl and pachd in the terminal.

---

Other Commands

```bash
# Sets docker as the default driver
minikube config set driver docker

# Adds your user to the 'docker' group
sudo usermod -aG docker $USER && newgrp docker

# Configure Pachyderm to connect directly to the Minikube instance
# Run this command if your local pipelines don't execute:
pachctl config update context `pachctl config get active-context` --pachd-address=<minikube ip>:30080

# Opens the Pachyderm dashboard
pachctl port-forward
```

## :cloud: Necessary Infrastructure

- Docker
- Kubernetes

## :open_file_folder: Available SDKs

Since Pachyderm is containerized you can write code with any language you want, because they will run inside the container. You can use a container with python to process the data and then pull them into another container with JavaScript.

## :hammer: Tools

- [Pachyderm Python Client](https://github.com/pachyderm/python-pachyderm)

## :ok_hand: Examples

- [Image Processing With OpenCV](https://docs.pachyderm.com/latest/getting_started/beginner_tutorial/)
- [Pachyderm + Python Pachyderm Client + Jupyter Lab](https://github.com/pachyderm/python-pachyderm/tree/master/examples/jupyter)

## :pushpin: Conclusion

**Advantages**

- Your data are versioned.
- Your models are versioned.
- Containerized, so you can write code in any language.
- Automatic pipeline execution.
- You can know why you got some result: Pachyderm tracks all data and code that generated a result.
- With Pachyderm Hub you don't need to deal with Kubernetes and can access the Pachyderm dashboard.
- With the enterprise plan you have access to the Pachyderm dashboard from the terminal.

**Disadvantages**

- You have to pay to use the Pachyderm Dashboard.
- The Pachyderm Hub is not completely free. There's a very small free tier.
- The license don't allow you to create a competitive tool (something that may make them loose money).

## :tv: Videos to Learn More About

- [Introduction to Pachyderm](https://www.youtube.com/watch?v=Pno7P3fVM7o&ab_channel=JoeyZwicker)
- [Pachyderm - Beginner's Tutorial Walkthrough](https://www.youtube.com/watch?v=sb4T8GUChLU&ab_channel=Pachyderm)
- [Completing the Machine Learning Loop: MLOps and Pachyderm](https://www.youtube.com/watch?v=ZbYpbE1Z_T0&ab_channel=Pachyderm)
- [Intro to Dataset and Model Versioning with Pachyderm](https://www.youtube.com/watch?v=r9CrtAtuJDI&ab_channel=Pachyderm)

## :man: Author

Luan Eduardo da Costa | Front-end Developer :laughing: :laughing: :+1:
