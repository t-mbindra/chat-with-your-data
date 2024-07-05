# Chat With Your Data

<!-- @import "[TOC]" {cmd="toc" depthFrom=1 depthTo=6 orderedList=false} -->

<!-- code_chunk_output -->

- [Interacting with the bot](#interacting-with-the-bot)
- [Setting up the app in Github Codespaces](#setting-up-the-app-in-github-codespaces)

<!-- /code_chunk_output -->

## Interacting with the bot

You can interact with the bot by messaging it.

## Setting up the app in Github Codespaces

1. Click on **Use this template > Open in a codebase**. Wait for the codespace to be setup, it may take a couple of minutes.
2. Using the Teams Toolkit extension, sign in with your Microsoft 365 account where you have permissions to upload custom apps. Also, sign in to your Azure account.
3. Replace \<resource-group-name\> in deploy.sh with the resource group where you want to create the Azure AI resources.
5. Deploy Azure AI resources by running ```sh deploy.sh``` in the terminal. You will be prompted to login to Azure and select a subscription.
6. Go to the [Azure AI Studio](https://oai.azure.com/portal) and proceed to the **Chat Playground**. Add your data according to the instructions [here](https://learn.microsoft.com/en-us/azure/ai-services/openai/concepts/use-your-data?tabs=ai-search) and wait for data to be ingested. 
7. Populate the ```SECRET_AZURE_OPENAI_KEY, SECRET_AZURE_OPENAI_ENDPOINT, SECRET_AZURE_SEARCH_ENDPOINT, SECRET_AZURE_SEARCH_KEY, AZURE_SEARCH_INDEX``` variables from the [Azure portal](https://ms.portal.azure.com/) in the ```env/.env.local.user``` file
   
#### If you want to debug locally, continue to step 8, else skip to step 11.
8. Press **Ctrl+Shift+D** to open the **Run and Debug** menu. Select **Debug** and press **F5** or click on the play button
9. Go to the link (https://dev.botframework.com/bots?id=...) from the Output console.
10. Click on **Microsoft Teams**. Use the web app or launch the Teams app to use the bot.

> You can check the status of all your bots on [Microsoft Bot Framework](https://dev.botframework.com/bots). Additionally, you can check the status of all your Teams apps on the [Teams Developer Portal](https://dev.teams.microsoft.com/apps).


#### Continue here to deploy the app on Azure.
11. Populate the ```SECRET_AZURE_OPENAI_KEY, SECRET_AZURE_OPENAI_ENDPOINT, SECRET_AZURE_SEARCH_ENDPOINT, SECRET_AZURE_SEARCH_KEY, AZURE_SEARCH_INDEX``` variables from the [Azure portal](https://ms.portal.azure.com/) in the ```env/.env.dev.user``` file.
12. Using the Teams Toolkit Extension tab, click on **Provision** under lifecycle. Select relevant subscription and resource group when prompted.
13. Using the Teams Toolkit Extension tab, click on **Deploy** under lifecycle.
14. Download the zip file ```appPackage/build/appPackage.dev.zip```.
15. Go to your Teams app and click on the **App** icon. Select **Manage your apps** followed by **Upload an app**.
16. Select **Upload a custom app** and open the downloaded zip file. Click on **Add** when prompted. Select where you want to use the app.

> You can check the status of all Azure resources on the [Azure Portal](https://portal.azure.com/#home) by navigating to the relevant resource group.
> If you do not have permission to upload custom apps (sideloading), Teams Toolkit will recommend creating and using a Microsoft 365 Developer Program account - a free program to get your own dev environment sandbox that includes Teams.
