#### Support Email Response

Hi, [customer name], 

Have you tried running "fly status --all", then "fly machine status <machine id>" to get more details about what went wrong? 

Most often we see this issue because an app is listening on a different port than internal_port in the config. 

Some also find that just cancelling the deploy and recreating it solves the issue. 

Please let me know if either of these work for you!

---

#### Support Email Troubleshooting steps

I used the Fly Docs and Fly.Io community forum to troubleshoot the issue. 

In the Fly Docs I looked through the "Troubleshooting your deployment" section and suggested they try running "fly status --all", then "fly machine status <machine id>" to get more info on what may be going wrong with the deploy because they had a health check fail. 

Based on the Fly Docs and Fly.Io community forum, the fly.toml seemed to be a common issue and I would think this is a good place for most customers to start troubleshooting and ensure they're listening port is not different than the internal port. 

Also in Fly.Io community forums, I found multiple different issues including "unhealthy allocations' were solved when they redeployed the app so I think this is helpful to suggest. 
---

#### Community Forum Response

Hi there, 

Have you ran "fly logs" and if so, what do they say? Is there an error being reported? 

If you're not able to solve from there, run "fly status --all" then, "fly machine status <machine id>" to get more detail on what may be going wrong. 
---

#### Rails App URL

https://sec-kramer.fly.dev