# Chat With Your Data

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://github.com/codespaces/new?hide_repo_select=true&ref=main&repo=820189237&devcontainer_path=.devcontainer%2Fdevcontainer.json&resume=1)

<!-- @import "[TOC]" {cmd="toc" depthFrom=1 depthTo=6 orderedList=false} -->

<!-- code_chunk_output -->

- [Interacting with the bot](#interacting-with-the-bot)
- [Setting up the app in Github Codespaces](#setting-up-the-app-in-github-codespaces)

<!-- /code_chunk_output -->

## Interacting with the bot

You can interact with the bot by messaging it.

## Setting up the app in Github Codespaces

1. Click Open in GitHub Codespaces badge above to create a codespace for the sample app. Wait for the codespace to be setup, it may take a couple of minutes.
2. Using the Teams Toolkit extension, sign in with your Microsoft 365 account where you have permissions to upload custom apps. Also, sign in to your Azure account.
3. Deploy Azure AI resources by running ```sh deploy.sh``` in the terminal. You will be prompted to login to Azure and select a subscription.
4. Go to the [Azure AI Studio](https://oai.azure.com/portal) and proceed to the **Chat Playground**. Add your data according to the instructions [here](https://learn.microsoft.com/en-us/azure/ai-services/openai/concepts/use-your-data?tabs=ai-search) and wait for data to be ingested. 
5. Populate the ```SECRET_AZURE_OPENAI_KEY, SECRET_AZURE_OPENAI_ENDPOINT, SECRET_AZURE_SEARCH_ENDPOINT, SECRET_AZURE_SEARCH_KEY, AZURE_SEARCH_INDEX``` variables from the [Azure portal](https://ms.portal.azure.com/) in the ```env/.env.local.user``` file
   
#### If you want to debug locally, continue to step 6, else skip to step 9.
6. Press **Ctrl+Shift+D** to open the **Run and Debug** menu. Select **Debug** and press **F5** or click on the play button
7. Go to the link (https://dev.botframework.com/bots?id=...) from the Output console.
8. Click on **Microsoft Teams**. Click on **Add** when prompted. Select where you want to use the app.

>[!Note]
> You can check the status of all your local bots on [Microsoft Bot Framework](https://dev.botframework.com/bots). Additionally, you can check the status of all your Teams apps on the [Teams Developer Portal](https://dev.teams.microsoft.com/apps).


#### Continue here to deploy the app on Azure.
9. Populate the ```SECRET_AZURE_OPENAI_KEY, SECRET_AZURE_OPENAI_ENDPOINT, SECRET_AZURE_SEARCH_ENDPOINT, SECRET_AZURE_SEARCH_KEY, AZURE_SEARCH_INDEX``` variables from the [Azure portal](https://ms.portal.azure.com/) in the ```env/.env.dev.user``` file.
10. Using the Teams Toolkit Extension tab, click on **Provision** under lifecycle. Select relevant subscription and resource group when prompted.
11. Using the Teams Toolkit Extension tab, click on **Deploy** under lifecycle.
12. Download the zip file ```appPackage/build/appPackage.dev.zip```.
13. Go to your Teams app and click on the **App** icon. Select **Manage your apps** followed by **Upload an app**.
14. Select **Upload a custom app** and open the downloaded zip file. Click on **Add** when prompted. Select where you want to use the app.

>[!Note]
> You can check the status of all Azure resources on the [Azure Portal](https://portal.azure.com/#home) by navigating to the relevant resource group.

> If you do not have permission to upload custom apps (sideloading), Teams Toolkit will recommend creating and using a Microsoft 365 Developer Program account - a free program to get your own dev environment sandbox that includes Teams.
