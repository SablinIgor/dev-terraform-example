terraform {
    backend "remote" {
        organization = "DevStand" # org name from step 2.
        workspaces {
            name = "k8s" # name for your app's state.
        }
    }
}
