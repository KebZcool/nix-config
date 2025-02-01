{ config, pkgs, ... }:

{
  # Configuration de LibreWolf (via Firefox)
  programs.firefox = {
    enable = true;
    #package = pkgs.librewolf; # Installation de librewolf possible
     # Support audio/vidéo via PipeWire
     wrapperConfig = {
       pipewireSupport = true;   
    };        

    # Configuration des langues
    languagePacks = [ "fr" "en-US" ];

     /* ---- PREFERENCES ---- */
    # Check about:config for options.
    preferences = {
      # Configuration des langues
      "intl.accept_languages" = "fr-fr,en-us,en";
      "intl.locale.requested" = "fr,en-US";
      "content.notify.interval" = 100000;
      "gfx.canvas.accelerated.cache-items" = 4096;
      "gfx.canvas.accelerated.cache-size" = 512;
      "gfx.content.skia-font-cache-size" = 20;
      "browser.cache.disk.enable" = true;
      "media.memory_cache_max_size" = 65536;
      "media.cache_readahead_limit" = 7200;
      "media.cache_resume_threshold" = 3600;
      "network.http.max-connections" = 1800;
      "network.http.max-persistent-connections-per-server" = 10;
      "network.http.max-urgent-start-excessive-connections-per-host" = 5;
      "network.http.pacing.requests.enabled" = false;
      "network.dnsCacheExpiration" = 3600;
      "network.ssl_tokens_cache_capacity" = 10240;
      "network.dns.disablePrefetch" = true;
      "network.dns.disablePrefetchFromHTTPS" = true;
      "network.prefetch-next" = false;
      "network.predictor.enabled" = false;
      "network.predictor.enable-prefetch" = false;
      "browser.contentblocking.category" = "strict";
      "urlclassifier.trackingSkipURLs" = "*.reddit.com, *.twitter.com, *.twimg.com, *.tiktok.com";
      "urlclassifier.features.socialtracking.skipURLs" = "*.instagram.com, *.twitter.com, *.twimg.com";
      "browser.download.start_downloads_in_tmp_dir" = true;
      "browser.helperApps.deleteTempFileOnExit" = true;
      "browser.uitour.enabled" = false;
      "privacy.globalprivacycontrol.enabled" = true;
      "security.OCSP.enabled" = 0;
      "security.remote_settings.crlite_filters.enabled" = true;
      "security.pki.crlite_mode" = 2;
      "security.ssl.treat_unsafe_negotiation_as_broken" = true;
      "browser.xul.error_pages.expert_bad_cert" = true;
      "security.tls.enable_0rtt_data" = false;
      "browser.privatebrowsing.forceMediaMemoryCache" = true;
      "browser.sessionstore.interval" = 60000;
      "browser.privatebrowsing.resetPBM.enabled" = true;
      "privacy.history.custom" = true;
      "browser.urlbar.trimHttps" = true;
      "browser.urlbar.untrimOnUserInteraction.featureGate" = true;
      "browser.search.separatePrivateDefault.ui.enabled" = true;
      "browser.urlbar.update2.engineAliasRefresh" = true;
      "browser.search.suggest.enabled" = false;
      "browser.urlbar.quicksuggest.enabled" = false;
      "browser.urlbar.groupLabels.enabled" = false;
      "browser.formfill.enable" = false;
      "security.insecure_connection_text.enabled" = true;
      "security.insecure_connection_text.pbmode.enabled" = true;
      "network.IDN_show_punycode" = true
      "privacy.userContext.ui.enabled" = true;
      "browser.safebrowsing.downloads.remote.enabled" = false;
      "permissions.default.desktop-notification" = 2;
      "permissions.default.geo" = 2;
      "browser.search.update" = false;
      "permissions.manager.defaultsUrl" = "";
      "datareporting.policy.dataSubmissionEnabled" = false;
      "datareporting.healthreport.uploadEnabled" = false;
      "toolkit.telemetry.unified" = false;
      "toolkit.telemetry.enabled" = false;
      "toolkit.telemetry.server" = "data:,";
      "toolkit.telemetry.archive.enabled" = false;
      "toolkit.telemetry.newProfilePing.enabled" = false;
      "toolkit.telemetry.shutdownPingSender.enabled" = false;
      "toolkit.telemetry.updatePing.enabled" = false;
      "toolkit.telemetry.bhrPing.enabled" = false;
      "toolkit.telemetry.firstShutdownPing.enabled" = false;
      "toolkit.telemetry.coverage.opt-out" = true;
      "toolkit.coverage.opt-out" = true;
      "toolkit.coverage.endpoint.base" = "";
      "browser.newtabpage.activity-stream.feeds.telemetry" = false;
      "browser.newtabpage.activity-stream.telemetry" = false;
      "captivedetect.canonicalURL" = "";
      "network.captive-portal-service.enabled" = false;
      "network.connectivity-service.enabled" = false;
      "browser.privatebrowsing.vpnpromourl" = "";
      "extensions.getAddons.showPane" = false;
      "extensions.htmlaboutaddons.recommendations.enabled" = false;
      "browser.discovery.enabled" = false;
      "browser.shell.checkDefaultBrowser" = false;
      "browser.newtabpage.activity-stream.asrouter.userprefs.cfr.addons" = false;
      "browser.newtabpage.activity-stream.asrouter.userprefs.cfr.features" = false;
      "browser.preferences.moreFromMozilla" = false;
      "browser.aboutConfig.showWarning" = false;
      "browser.aboutwelcome.enabled" = false;
      "browser.profiles.enabled" = true;
      "cookiebanners.service.mode" = 1;
      "cookiebanners.service.mode.privateBrowsing" = 1;
      "full-screen-api.transition-duration.enter" = "0 0";
      "full-screen-api.transition-duration.leave" = "0 0";
      "full-screen-api.warning.timeout" = 0;
      "browser.urlbar.suggest.calculator" = true;
      "browser.urlbar.unitConversion.enabled" = true;
      "browser.urlbar.trending.featureGate" = false;
      "browser.newtabpage.activity-stream.feeds.topsites" = false;
      "browser.newtabpage.activity-stream.showWeather" = false;
      "browser.newtabpage.activity-stream.feeds.section.topstories" = false;
      "browser.download.manager.addToRecentDocs" = false;
      "browser.download.open_pdf_attachments_inline" = true;
      "browser.bookmarks.openInTabClosesMenu" = false;
      "browser.menu.showViewImageInfo" = true;
      "findbar.highlightAll" = true;
      "layout.word_select.eat_space_to_next_word" = false;  
     };

     /* ---- POLICIES ---- */
     # Check about:policies #documentation for options.

     # Politiques de sécurité et de confidentialité
    policies = {
      DisableTelemetry = true;
      DisableFirefoxStudies = true;
      DisableFeedbackCommands = true;
      DisablePocket = true;
      DisableSetDesktopBackground = true;
      DisableDeveloperTools = false;
      DontCheckDefaultBrowser = true;

     /* ---- EXTENSIONS ---- */
     # Check about:support for extension/add-on ID strings.
     # Valid strings for installation_mode are "allowed", "blocked",
     # "force_installed" and "normal_installed"
     /* ---- POLICIES ---- */

    # Configuration des extensions
      ExtensionSettings = {
      # Enhancer for YouTube
      "jid1-ZAdIEUB7XOzOJw@jetpack" = {
        install_url = "https://addons.mozilla.org/firefox/downloads/file/4393561/enhancer_for_youtube-2.0.130.1.xpi";
        installation_mode = "force_installed";
      };
      
      # uBlock Origin
      "uBlock0@raymondhill.net" = {
        install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
        installation_mode = "force_installed";
      };
      
      # Bitwarden
      "{446900e4-71c2-419f-a6a7-df9c091e268b}" = {
        install_url = "https://addons.mozilla.org/firefox/downloads/file/4410896/bitwarden_password_manager-2024.12.4.xpi";
        installation_mode = "force_installed";
      };
      
      # Pure URL
      "pure-url@jetpack" = {
        install_url = "https://addons.mozilla.org/firefox/downloads/file/4270514/pure_url-1.3.1resigned1.xpi";
        installation_mode = "force_installed";
      };
      
      # SimpleLogin
      "addon@simplelogin" = {
        install_url = "https://addons.mozilla.org/firefox/downloads/file/4332232/simplelogin-3.0.5.xpi";
        installation_mode = "force_installed";
      };
    };
  };
};

}

