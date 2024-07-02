# Chat With Your Data

<!-- @import "[TOC]" {cmd="toc" depthFrom=1 depthTo=6 orderedList=false} -->

<!-- code_chunk_output -->

- [Interacting with the bot](#interacting-with-the-bot)
- [Setting up the app in Github Codespaces](#setting-up-the-app-in-github-codespaces)

<!-- /code_chunk_output -->

## Interacting with the bot

You can interact with the bot by messaging it.

## Setting up the app in Github Codespaces

1. Click on **Use this template > Open in a codebase**.
2. Wait for the codespace to be setup, it may take a few minutes.
3. Using the Teams Toolkit extension, sign in with your Microsoft 365 account where you have permissions to upload custom apps.
4. Login to the Azure CLI using ```az login --use-device-code```.
5. Deploy necessary Azure resources using ```az deployment group create --name $$DEPLOYMENT_NAME$$ --resource-group $$RESOURCE_GROUP_NAME$$ --template-file ./infra/azure.ai.resources.json```.
6. Go to the [Azure AI Studio](https://oai.azure.com/portal) and proceed to the **Chat Playground**. Add your data according to the instructions [here](https://learn.microsoft.com/en-us/azure/ai-services/openai/concepts/use-your-data?tabs=ai-search) and wait for data to be ingested. 
7. Duplicate the ```sample.env``` file and rename it as ```.env```. Populate the ```AZURE_OPENAI_KEY, AZURE_OPENAI_ENDPOINT, AZURE_SEARCH_ENDPOINT, AZURE_SEARCH_KEY, AZURE_SEARCH_INDEX``` variables from the [Azure AI portal](https://ms.portal.azure.com/).
   
#### If you want to debug locally, continue to step 8, else skip to step 11.
8. Press **Ctrl+Shift+D** to open the **Run and Debug** menu. Select **Debug** and press **F5** or click on the play button
9. Go to the link (https://dev.botframework.com/bots?id=...) from the Output console.
10. Click on **Microsoft Teams**. Use the web app or launch the Teams app to use the bot.

#### Continue here to deploy the app on Azure.
11. Using the Teams Toolkit extension, sign into your Azure account.
12. Using the Teams Toolkit Extension tab, click on **Provision** under lifecycle. Select relevant subscription and resource group when prompted.
13. Using the Teams Toolkit Extension tab, click on **Deploy** under lifecycle.
14. Download the zip file ```appPackage/build/appPackage.dev.zip```.
15. Go to your Teams app and click on the **App** icon.
16. Select **Manage your apps** followed by **Upload an app**. Select **Upload a custom app** and open the downloaded zip file.
