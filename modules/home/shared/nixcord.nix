{
  inputs,
  ...
}:
{
  imports = [ inputs.nixcord.homeModules.nixcord ];

  programs.nixcord = {
    enable = true;
    config = {
      useQuickCss = true;
      frameless = true;
      plugins = {
        messageLogger = {
          enable = true;
          collapseDeleted = true;
        };
        blurNSFW.enable = true;
        biggerStreamPreview.enable = true;
        callTimer.enable = true;
        clearURLs.enable = true;
        disableCallIdle.enable = true;
        emoteCloner.enable = true;
        experiments.enable = true;
        fixSpotifyEmbeds.enable = true;
        forceOwnerCrown.enable = true;
        fixYoutubeEmbeds.enable = true;
        friendsSince.enable = true;
        fullSearchContext.enable = true;
        gameActivityToggle.enable = true;
        implicitRelationships.enable = true;
        memberCount.enable = true;
        mutualGroupDMs.enable = true;
        permissionsViewer.enable = true;
        pinDMs.enable = true;
        plainFolderIcon.enable = true;
        platformIndicators.enable = true;
        relationshipNotifier.enable = true;
        reverseImageSearch.enable = true;
        summaries.enable = true;
        showConnections.enable = true;
        showHiddenChannels.enable = true;
        showHiddenThings.enable = true;
        silentMessageToggle.enable = true;
        spotifyControls.enable = true;
        spotifyCrack.enable = true;
        spotifyShareCommands.enable = true;
        userVoiceShow.enable = true;
        validReply.enable = true;
        validUser.enable = true;
        viewIcons.enable = true;
        volumeBooster.enable = true;
      };
    };
  };
}
