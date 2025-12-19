{
  pkgs,
  username,
  ...
}: {
  system = {
    stateVersion = 6;
    primaryUser = "${username}";
    defaults = {
      NSGlobalDomain = {
        "com.apple.keyboard.fnState" = true;
        "com.apple.mouse.tapBehavior" = null;
        "com.apple.sound.beep.feedback" = 0;
        "com.apple.springing.delay" = 0.0;
        "com.apple.springing.enabled" = true;
        "com.apple.swipescrolldirection" = false;
        "com.apple.trackpad.enableSecondaryClick" = true;
        "com.apple.trackpad.forceClick" = true;
        "com.apple.trackpad.scaling" = 1.0;
        "com.apple.trackpad.trackpadCornerClickBehavior" = null;
        _HIHideMenuBar = false;
        AppleEnableMouseSwipeNavigateWithScrolls = true;
        AppleEnableSwipeNavigateWithScrolls = true;
        AppleFontSmoothing = null;
        AppleICUForce24HourTime = false;
        AppleInterfaceStyle = null;
        AppleInterfaceStyleSwitchesAutomatically = false;
        AppleKeyboardUIMode = 3;
        AppleMeasurementUnits = null;
        AppleMetricUnits = null;
        ApplePressAndHoldEnabled = false;
        AppleScrollerPagingBehavior = false;
        AppleShowAllExtensions = true;
        AppleShowAllFiles = true;
        AppleShowScrollBars = "Always";
        AppleSpacesSwitchOnActivate = true;
        AppleTemperatureUnit = null;
        AppleWindowTabbingMode = "fullscreen";
        InitialKeyRepeat = null;
        KeyRepeat = null;
        NSAutomaticCapitalizationEnabled = false;
        NSAutomaticDashSubstitutionEnabled = false;
        NSAutomaticInlinePredictionEnabled = true;
        NSAutomaticPeriodSubstitutionEnabled = false;
        NSAutomaticQuoteSubstitutionEnabled = false;
        NSAutomaticSpellingCorrectionEnabled = false;
        NSAutomaticWindowAnimationsEnabled = false;
        NSDisableAutomaticTermination = true;
        NSDocumentSaveNewDocumentsToCloud = false;
        NSNavPanelExpandedStateForSaveMode = true;
        NSNavPanelExpandedStateForSaveMode2 = true;
        NSScrollAnimationEnabled = true;
        NSTableViewDefaultSizeMode = 2;
        NSTextShowsControlCharacters = true;
        NSUseAnimatedFocusRing = false;
        NSWindowResizeTime = 0.001;
        NSWindowShouldDragOnGesture = false;
        PMPrintingExpandedStateForPrint = true;
        PMPrintingExpandedStateForPrint2 = true;
      };
      dock = {
        appswitcher-all-displays = false;
        autohide = true;
        autohide-delay = 0.0;
        autohide-time-modifier = 0.0;
        dashboard-in-overlay = false;
        enable-spring-load-actions-on-all-items = true;
        expose-animation-duration = 0.1;
        expose-group-apps = true;
        largesize = 16;
        launchanim = false;
        magnification = false;
        mineffect = "scale";
        minimize-to-application = true;
        mouse-over-hilite-stack = true;
        mru-spaces = false;
        orientation = "bottom";
        persistent-apps = [
          "/System/Applications/Utilities/Terminal.app"
          "/Applications/Firefox.app"
          "/Users/${username}/tools/eclipse/eclipse-java-2025-12-R-macosx-cocoa-aarch64/Eclipse.app"
          "/System/Applications/Mail.app"
          "/System/Applications/Calendar.app"
        ];
        scroll-to-open = false;
        show-process-indicators = true;
        show-recents = false;
        showhidden = true;
        slow-motion-allowed = false;
        static-only = false;
        tilesize = 36;
        wvous-bl-corner = 14;
        wvous-br-corner = 1;
        wvous-tl-corner = 1;
        wvous-tr-corner = 1;
      };
      ActivityMonitor = {
        IconType = 5;
        OpenMainWindow = true;
        ShowCategory = 100;
        SortColumn = "CPUUsage";
        SortDirection = 0;
      };
      finder = {
        _FXShowPosixPathInTitle = true;
        _FXSortFoldersFirst = true;
        _FXSortFoldersFirstOnDesktop = true;
        AppleShowAllExtensions = true;
        AppleShowAllFiles = true;
        CreateDesktop = true;
        FXDefaultSearchScope = "SCcf";
        FXEnableExtensionChangeWarning = false;
        FXPreferredViewStyle = "Nlsv";
        FXRemoveOldTrashItems = false;
        NewWindowTarget = "Recents";
        NewWindowTargetPath = null;
        QuitMenuItem = true;
        ShowExternalHardDrivesOnDesktop = true;
        ShowHardDrivesOnDesktop = false;
        ShowMountedServersOnDesktop = false;
        ShowPathbar = true;
        ShowRemovableMediaOnDesktop = true;
        ShowStatusBar = true;
      };
      hitoolbox = {
        AppleFnUsageType = "Do Nothing";
      };
      screencapture = {
        disable-shadow = true;
        include-date = true;
        location = "/Users/${username}/Desktop";
        show-thumbnail = true;
        type = "png";
      };
      screensaver = {
        askForPassword = true;
        askForPasswordDelay = 1;
      };
      SoftwareUpdate = {
        AutomaticallyInstallMacOSUpdates = false;
      };
      trackpad = {
        ActuationStrength = 1;
        Clicking = false;
        Dragging = false;
        FirstClickThreshold = 1;
        SecondClickThreshold = 1;
        TrackpadRightClick = true;
        TrackpadThreeFingerDrag = false;
        TrackpadThreeFingerTapGesture = 2;
      };
      universalaccess = {
        closeViewScrollWheelToggle = true;
        closeViewZoomFollowsFocus = true;
        mouseDriverCursorSize = 1.0;
        reduceMotion = null;
        reduceTransparency = false;
      };
      WindowManager = {
        AppWindowGroupingBehavior = null;
        AutoHide = false;
        EnableStandardClickToShowDesktop = true;
        EnableTiledWindowMargins = false;
        GloballyEnabled = false;
        HideDesktop = null;
        StageManagerHideWidgets = null;
        StandardHideDesktopIcons = null;
        StandardHideWidgets = null;
      };
      CustomUserPreferences = {
        NSGlobalDomain = {
          WebKitDeveloperExtras = true;
        };
        "com.apple.ImageCapture" = {
          disableHotPlug = true;
        };
        "com.apple.appleseed" = {
          "FeedbackAssistant.Autogather" = false;
        };
        "com.apple.systempreferences" = {
          NSQuitAlwaysKeepsWindows = false;
        };
        "com.apple.finder" = {
          DisableAllAnimations = true;
          OpenWindowForNewRemovableDisk = true;
        };
        "com.apple.desktopservices" = {
          DSDontWriteNetworkStores = true;
          DSDontWriteUSBStores = true;
        };
        "com.apple.frameworks.diskimages" = {
          skip-verify = true;
          skip-verify-locked = true;
          skip-verify-remote = true;
          auto-open-ro-root = true;
          auto-open-rw-root = true;
        };
        "com.apple.NetworkBrowser" = {
          BrowseAllInterfaces = true;
        };
        "com.apple.print.PrintingPrefs" = {
          "Quit When Finished" = true;
        };
        "com.apple.CrashReporter" = {
          DialogType = "none";
        };
        "com.apple.helpviewer" = {
          DevMode = true;
        };
        "com.apple.universalaccess" = {
          HIDScrollZoomModifierMask = 262144;
        };
        "com.apple.Safari" = {
          HomePage = "about:blank";
          AutoOpenSafeDownloads = false;
          ShowFavoritesBar = false;
          DebugSnapshotsUpdatePolicy = 2;
          IncludeInternalDebugMenu = true;
          FindOnPageMatchesWordStartsOnly = false;
          ProxiesInBookmarksBar = "()";
          IncludeDevelopMenu = true;
          WebKitDeveloperExtrasEnabledPreferenceKey = true;
          "ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" = true;
        };
        "com.apple.mail" = {
          DisableReplyAnimations = true;
          DisableSendAnimations = true;
          AddressesIncludeNameOnPasteboard = false;
          DisableInlineAttachmentViewing = true;
        };
        "com.apple.terminal" = {
          StringEncodings = 4;
        };
        "com.apple.TimeMachine" = {
          DoNotOfferNewDisksForBackup = true;
        };
        "com.apple.TextEdit" = {
          RichText = 0;
          PlainTextEncoding = 4;
          PlainTextEncodingForWrite = 4;
        };
        "com.apple.DiskUtility" = {
          DUDebugMenuEnabled = true;
          advanced-image-options = true;
        };
        "com.apple.appstore" = {
          WebKitDeveloperExtras = true;
          ShowDebugMenu = true;
        };
        "com.apple.systemsettings" = {
          Sound = "Show in Menu Bar";
        };
        "com.apple.dock" = {
          window-snap = 0;
          persistent-others = [
            {
              tile-data = {
                arrangement = 1;
                displayas = 1;
                file-type = 2;
                showas = 3;
                file-data = {
                  _CFURLString = "file:///Applications/";
                  _CFURLStringType = 15;
                };
              };
              tile-type = "directory-tile";
            }
            {
              tile-data = {
                arrangement = 1;
                displayas = 1;
                file-type = 2;
                showas = 3;
                file-data = {
                  _CFURLString = "file:///Users/${username}/Downloads/";
                  _CFURLStringType = 15;
                };
              };
              tile-type = "directory-tile";
            }
          ];
        };
      };
    };
    activationScripts.postActivation.text = ''
      /Users/${username}/.workstation/nix/scripts/postActivation.sh ${username}
    '';
  };
  security.pam.services.sudo_local.touchIdAuth = true;
}
