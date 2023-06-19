
echo "Create a folder"
mkdir actions-runner && cd actions-runner

echo "Download the latest runner package"
curl -o actions-runner-linux-x64-2.305.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.305.0/actions-runner-linux-x64-2.305.0.tar.gz

echo "Validate the hash"
echo "737bdcef6287a11672d6a5a752d70a7c96b4934de512b7eb283be6f51a563f2f  actions-runner-linux-x64-2.305.0.tar.gz" | shasum -a 256 -c

echo "Extract the installer"
tar xzf ./actions-runner-linux-x64-2.305.0.tar.gz
