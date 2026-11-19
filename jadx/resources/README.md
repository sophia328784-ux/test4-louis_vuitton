

# This resource directory is created from a symbolic link to the GeneratedAppSchemes directory in the mobilefactory_lvapp_forms submodule.
# We only added this directory because the repo contains a lot of un-needed Swift files used to generate the forms.

# To load the submodule, you need to run the following command in the terminal :

git submodule update --init

And then right-click -> "Reload from disk" on the GeneratedAppSchemes directory in the file tree.

# Once the submodule is initialized, you can run the following command to update the submodule to the latest commit :

git submodule update

# If the submodule doesn't update, you can run the following command :
git submodule update --init --force --remote
