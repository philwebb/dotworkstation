{
  pkgs,
  username,
  ...
}: {
  system = {
    stateVersion = 6;
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
        _HIHideMenuBar = true;
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
          "/Users/${username}/tools/eclipse/eclipse-java-2024-12-R-macosx-cocoa-aarch64/Eclipse.app"
          "/System/Applications/Mail.app"
          "/System/Applications/Calendar.app"
          "/Users/${username}/Applications/Chat.app"
          "/Users/${username}/Applications/Messages.app"
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
        "com.apple.universalaccess" = {
          reduceTransparency = true;
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
        "com.apple.addressbook" = {
          ABShowDebugMenu = true;
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
    activationScripts.postUserActivation.text = ''

      # Install oh-my-zsh if missing
      [ ! -d "/Users/${username}/.oh-my-zsh" ] && git clone https://github.com/ohmyzsh/ohmyzsh.git /Users/${username}/.oh-my-zsh

      # Install SDKMAN! if missing
      if [ ! -d "/Users/${username}/sdkman" ]; then
        export SDKMAN_DIR="/Users/${username}/sdkman" && curl -s "https://get.sdkman.io?rcupdate=false" | bash
        [ -f "/Users/${username}/sdkman/etc/config" ] && rm "/Users/${username}/sdkman/etc/config"
      fi

      # Install Color Sync Profiles
      sudo cp ~/.workstation/colorsyncprofiles/* /Library/ColorSync/Profiles

      # Install Eclipse User Setup
      if [ -f "/Users/${username}/.eclipse/org.eclipse.oomph.setup/setups/user.setup" ]; then
        rm "/Users/${username}/.eclipse/org.eclipse.oomph.setup/setups/user.setup"
      fi
      ln -s "/Users/${username}/.workstation/eclipse/user.setup" /Users/${username}/.eclipse/org.eclipse.oomph.setup/setups/user.setup

      # Install subl command line
      mkdir -p ~/bin
      ln -f -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl

      # Use stow to create symlinks
      pushd ~/.workstation/home && stow . && popd

      # Show various folders
      chflags nohidden ~/Library
      sudo chflags nohidden /Volumes

      # Expand the following File Info panes:
      # “General”, “Open with”, and “Sharing & Permissions”
      defaults write com.apple.finder FXInfoPanesExpanded -dict \
        General -bool true \
        OpenWith -bool true \
        Privileges -bool true

      # Disable the sound effects on boot
      sudo /usr/sbin/nvram SystemAudioVolume=" "
      sudo /usr/sbin/nvram StartupMute=%01

      # Remove duplicates in the “Open With” menu (also see `lscleanup` alias)
      /System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user

      # Enable lid wakeup
      sudo pmset -a lidwake 1

      # Restart automatically on power loss
      sudo pmset -a autorestart 1

      # Restart automatically if the computer freezes
      sudo /usr/sbin/systemsetup -setrestartfreeze on 2>/dev/null 1>&2

      # Restore power defaults
      sudo pmset restoredefaults 2>/dev/null 1>&2

      # Set standby delay to 24 hours (default is 1 hour)
      sudo pmset -a standbydelay 86400

      # Sleep the display after 15 minutes
      sudo pmset -a displaysleep 15

      # Disable machine sleep while charging
      sudo pmset -c sleep 0

      # Set machine display sleep to 5 minutes and sleep to 10 on battery
      sudo pmset -b displaysleep 5
      sudo pmset -b sleep 10

      # Never go into computer sleep mode
      sudo /usr/sbin/systemsetup -setcomputersleep Off 2>/dev/null 1>&2

      # Hibernation mode
      # 0: Disable hibernation (speeds up entering sleep mode)
      # 3: Copy RAM to disk so the system state can still be restored in case of a
      #    power failure.
      sudo pmset -a hibernatemode 0

      # Enable subpixel antialiasing font rendering on non-Apple LCDs
      defaults write -g CGFontRenderingFontSmoothingDisabled -bool NO

      # Enable HiDPI display modes (requires restart)
      sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true

      # Change indexing order and disable some file types
      defaults write com.apple.spotlight orderedItems -array \
        '{"enabled" = 1;"name" = "APPLICATIONS";}' \
        '{"enabled" = 1;"name" = "SYSTEM_PREFS";}' \
        '{"enabled" = 1;"name" = "DIRECTORIES";}' \
        '{"enabled" = 1;"name" = "PDF";}' \
        '{"enabled" = 1;"name" = "FONTS";}' \
        '{"enabled" = 0;"name" = "DOCUMENTS";}' \
        '{"enabled" = 0;"name" = "MESSAGES";}' \
        '{"enabled" = 0;"name" = "CONTACT";}' \
        '{"enabled" = 0;"name" = "EVENT_TODO";}' \
        '{"enabled" = 0;"name" = "IMAGES";}' \
        '{"enabled" = 0;"name" = "BOOKMARKS";}' \
        '{"enabled" = 0;"name" = "MUSIC";}' \
        '{"enabled" = 0;"name" = "MOVIES";}' \
        '{"enabled" = 0;"name" = "PRESENTATIONS";}' \
        '{"enabled" = 0;"name" = "SPREADSHEETS";}' \
        '{"enabled" = 0;"name" = "SOURCE";}' \
        '{"enabled" = 0;"name" = "MENU_DEFINITION";}' \
        '{"enabled" = 0;"name" = "MENU_OTHER";}' \
        '{"enabled" = 0;"name" = "MENU_CONVERSION";}' \
        '{"enabled" = 0;"name" = "MENU_EXPRESSION";}' \
        '{"enabled" = 0;"name" = "MENU_WEBSEARCH";}' \
        '{"enabled" = 0;"name" = "MENU_SPOTLIGHT_SUGGESTIONS";}'

      # Install all the Java
      sh /Users/${username}/scripts/install-all-javas.sh

      # Apply settings to save a restart
      /System/Library/PrivateFrameworks/SystemAdministration.framework/Resources/activateSettings -u
      killall SystemUIServer

      # Cleanup
      rm ~/Library/Application\ Support/Rectangle/RectangleConfig2*.json &> /dev/null
      killall rectangle && open /Applications/Rectangle.app

    '';
  };
  security.pam.enableSudoTouchIdAuth = true;
}
