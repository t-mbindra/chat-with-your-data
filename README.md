# Chat With Your Data

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://github.com/codespaces/new?hide_repo_select=true&ref=main&repo=820189237&devcontainer_path=.devcontainer%2Fdevcontainer.json&resume=1)

<!-- @import "[TOC]" {cmd="toc" depthFrom=1 depthTo=6 orderedList=false} -->

<!-- code_chunk_output -->

## Setting up the app in Github Codespaces

1. Click Open in GitHub Codespaces badge above to create a codespace for the sample app. Wait for the codespace to be setup, it may take a couple of minutes.
2. Using the Teams Toolkit extension, sign in to your Microsoft 365 account and Azure account under ```ACCOUNTS```.
3. Deploy Azure AI resources by running ```sh deploy.sh``` in the terminal. You will be prompted to login to Azure and select a subscription.
4. Go to the [Azure AI Studio](https://oai.azure.com/portal) and proceed to the ```Chat Playground```. Add your data according to the instructions [here](https://learn.microsoft.com/en-us/azure/ai-services/openai/concepts/use-your-data?tabs=ai-search) and wait for data to be ingested. 
5. Populate the ```SECRET_AZURE_OPENAI_KEY, SECRET_AZURE_OPENAI_ENDPOINT, SECRET_AZURE_SEARCH_ENDPOINT, SECRET_AZURE_SEARCH_KEY, AZURE_SEARCH_INDEX``` variables from the [Azure portal](https://ms.portal.azure.com/) in the ```env/.env.local.user``` file
   
#### To debug locally, continue to step 6, else skip to step 7.
6. Press **Ctrl+Shift+D** to open the ```Run and Debug``` menu. Select ```Debug``` and press ```F5``` or click on the play button.
#### Skip to step 10.
>[!Note]
> You can check the status of all your local bots on [Microsoft Bot Framework](https://dev.botframework.com/bots). Additionally, you can check the status of all your Teams apps on the [Teams Developer Portal](https://dev.teams.microsoft.com/apps).

#### To deploy the app on Azure:
7. Populate the ```SECRET_AZURE_OPENAI_KEY, SECRET_AZURE_OPENAI_ENDPOINT, SECRET_AZURE_SEARCH_ENDPOINT, SECRET_AZURE_SEARCH_KEY, AZURE_SEARCH_INDEX``` variables from the [Azure portal](https://ms.portal.azure.com/) in the ```env/.env.dev.user``` file.
8. Using the Teams Toolkit Extension tab, click on ```Provision``` under ```LIFECYCLE```. Select relevant subscription and resource group when prompted.
9. Using the Teams Toolkit Extension tab, click on ```Deploy``` under ```LIFECYCLE```.

### Sideloading the app to Teams:
10. Download the zip file ```appPackage/build/appPackage.dev.zip```.
11. Go to your Teams app and click on the ```Apps``` icon. Select ```Manage your apps``` followed by ```Upload an app```.
12. Select ```Upload a custom app``` and open the downloaded zip file. Click on ```Add``` when prompted. Select where you want to use the app.

>[!Note]
> You can check the status of all Azure resources on the [Azure Portal](https://portal.azure.com/#home) by navigating to the relevant resource group.

> If you do not have permission to upload custom apps (sideloading), Teams Toolkit will recommend creating and using a Microsoft 365 Developer Program account - a free program to get your own dev environment sandbox that includes Teams.
