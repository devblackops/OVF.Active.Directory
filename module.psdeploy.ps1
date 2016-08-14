if($ENV:BHProjectName -and $ENV:BHProjectName.Count -eq 1) {
    Deploy OVF-Module {
        By PSGalleryModule Artifactory {
            FromSource $ENV:BHProjectName
            To PSGallery
            Tagged PSGallery
            WithOptions @{
                ApiKey = $env:PSGalleryApiKey
            }
        }
    }
}
