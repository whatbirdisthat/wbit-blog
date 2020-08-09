---
title: Cloudformation notes
---

### Continuous Delivery (Devops)

---

### [Infrastructure Continuous Delivery Using AWS Cloudformation](https://www.youtube.com/watch?v=TDalsML3QqY)

-   Use the intrinsic function `Fn:Sub` in YAML.
    ![Use Yaml `Fn:Sub`](./images/2020-05-15-09-28-06.png)

-   Use Changesets to preview the changes to infrastructure that will
    occur on update of a stack or stacks.
    ![Changesets overview](./images/2020-05-15-09-29-56.png)

-   Use cross-stack references to share information between independent stacks:
    ![Cross-stack reference exports example](./images/2020-05-15-09-33-32.png)

-   Nested stacks for template re-use
    ![Nested stack example](./images/2020-05-15-09-35-08.png)

-   Considerations for Exports and Nested Stacks
    ![Nested Stacks Considerations](./images/2020-05-15-09-40-56.png)

### Sample Application

-   Examine a sample application
    ![Sample Application](./images/2020-05-15-09-42-55.png)

-   Microservices Application based on Amazon ECS
    ![Microservices Application](./images/2020-05-15-09-43-35.png)

> Sample code for the application can be found [here](https://github.com/aws-samples/ecs-refarch-cloudformation)

-   Reference Architecture
    ![Reference Architecture Diagram](./images/2020-05-15-09-49-59.png)

-   Decompose into AWS resource types
    ![AWS Resource types](./images/2020-05-15-09-51-00.png)

-   Build cloudformation templates based on this logical grouping
    ![CFN templates based on logical grouping](./images/2020-05-15-09-53-34.png)

-   Set up flow configuration
    ![Template outputs flow configuration](./images/2020-05-15-09-56-56.png)

> Nested stacks allows for composability, the ability to manage code
> for stacks individually yet manage changes to a _single stack_
> deployment. A single stack template is large, unweildy and becomes
> a management headache, where sub-stacks are easier to manage.

-   Use Nested Stacks, or Cross Stack References
    ![Nested Stacks or Cross Stack References](./images/2020-05-15-09-59-47.png)

> Using cross stack references means you will need to manage the creation
> order and dependencies for each (component) stack individually.
> This is less of a headache than it appears, when applied using a
> pipeline to manage stack creation / updates.

-   Use CodePipeline to apply continuous delivery for infrastructure
    ![CodePipeline for continous delivery of infrastructure](./images/2020-05-15-10-04-41.png)

-   How does this align with Release Phases?
    ![Application of release phases](./images/2020-05-15-10-05-45.png)

-   Modelling pipelines: networking pipeline and application pipeline
    ![Two pipelines](./images/2020-05-15-10-08-06.png)

-   CodePipeline: network resources pipeline
    ![network resources pipeline](./images/2020-05-15-10-10-12.png)

-   CodePipeline: application pipeline
    ![application pipeline](./images/2020-05-15-10-12-15.png)

*   Create CodePipeline pipelines _using Cloudformation_
    ![cloudformation template to set up the pipeline](./images/2020-05-15-10-15-03.png)

*   Create and manage pipeline using Cloudformation
    ![create and manage pipeline using Cloudformation](./images/2020-05-15-10-17-21.png)

*   Editing the network pipeline YAML
    ![outline of networkpipeline.yaml](./images/2020-05-15-10-20-32.png)

*   Parameters:
    ![Parameters](./images/2020-05-15-10-21-39.png)

*   Resources:
    ![resources](./images/2020-05-15-10-22-29.png)

*   Pipeline:
    ![pipeline-1](./images/2020-05-15-10-23-19.png)

*   Stages.1 "S3Source"
    ![S3Source stage](./images/2020-05-15-10-24-12.png)

*   Stages.2 "DevEnvironment"
    ![create-dev-sgs](./images/2020-05-15-10-25-26.png)

*   Stages.3 "Create-DevLBs"
    ![create dev load balancers](./images/2020-05-15-10-26-27.png)

*   Stages.4 "Production Environment"
    ![production actions](./images/2020-05-15-10-27-03.png)

---

### [Devops on AWS: Advanced Continuous Delivery Techniques](https://www.youtube.com/watch?v=_xmYShSDDJg)

---

## Cloudformation

---

### [Cloudformation Master Class](https://www.youtube.com/watch?v=6R44BADNJA8)

---

### [Deep Dive on AWS Cloudformation](https://www.youtube.com/watch?v=01hy48R9Kr8)

---

### [Cloudformation Best Practices](https://www.youtube.com/watch?v=fVMlxJJNmyA)

---
