# DDoS-Detection-Enterprise

This repository contains the code and resources for a machine learning-based DDoS attack detection system. The system is designed to work with enterprise-style VPCs on AWS and includes a Shiny web app for easy parameter configuration and deployment.

## Table of Contents

- [Overview](#overview)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Overview

The DDoS-Detection-Enterprise system consists of the following components:

- A CloudFormation template for creating a VPC, subnets, and security groups.
- R code for processing and analyzing network traffic data, training a machine learning model, and deploying the model for real-time DDoS attack detection.
- A Shiny web app for configuring parameters such as AWS account, EC2 instance types, seed numbers, and machine learning algorithm types.

## Prerequisites

- An AWS account with the necessary permissions to create and manage resources.
- The [AWS CLI](https://aws.amazon.com/cli/) installed and configured on your local machine.
- [R](https://www.r-project.org/) and [RStudio](https://www.rstudio.com/) installed on your local machine.
- The following R packages installed: `shiny`, `aws.ec2`, `aws.s3`, and any other packages required for machine learning algorithms and data processing.

## Installation

1. Clone this repository to your local machine:

```git clone https://github.com/yourusername/DDoS-Detection-Enterprise.git```

2. Open the RStudio project and install the required R packages:

```install.packages(c("shiny", "aws.ec2", "aws.s3"))```

## Usage

1. Launch the Shiny web app in RStudio by running `app.R`.

2. Configure the desired parameters for the AWS account, EC2 instances, seed numbers, and machine learning algorithm types.

3. Click the "Deploy" button to create the VPC and related resources, train the machine learning model, and deploy the model for real-time DDoS attack detection.

## Contributing

Contributions are welcome! Please feel free to submit issues or pull requests with any improvements or bug fixes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
