{ config, pkgs, ... }:

let
	lock-false = {
		Value = false;
		Status = "locked";
	};
	lock-true = {
		Value = true;
		Status = "locked";
	};
	lock-empty-string = {
		Value = "";
		Status = "locked";
	};
in {

	programs.firefox = {
		enable = true;

		profiles = {
			default = {
				id = 0;
				name = "default";
				isDefault = true;
				settings = {
					"browser.search.defaultenginename" = "DuckDuckGo";
					"browser.search.order.1" = "DuckDuckGo";

					"signon.rememberSignons" = false;
					"widget.use-xdg-desktop-portal.file-picker" = 1;
					"browser.aboutConfig.showWarning" = false;
					"browser.compactmode.show" = true;
					"browser.cache.disk.enable" = false;
					"widget.disable-workspace-management" = true;
					"browser.toolbars.bookmarks.visibility" = "never";
					"ui.key.menuAccessKeyFocuses" = false;
				};

				search = {
					force = true;
					default = "ddg";
					order = [ "ddg" "google" ];
				};
			};
		};


		policies = {
			DisableTelemetry = true;
			DisableFirefoxStudies = true;
			DontCheckDefaultBrowser = true;
			DisablePocket = true;
			SearchBar = "unified";

			Preferences = {
				"browser.translations.enable" = lock-false;
				"extensions.pocket.enabled" = lock-false;
				"browser.newtabpage.pinned" = lock-empty-string;
				"browser.topsites.contile.enabled" = lock-false;
				"browser.newtabpage.activity-stream.showSponsored" = lock-false;
				"browser.newtabpage.activity-stream.system.showSponsored" = lock-false;
				"browser.newtabpage.activity-stream.showSponsoredTopSites" = lock-false;
			};

			ExtensionSettings = {
# Theme
				"90f8e9e4-6972-44bd-bb63-1f4fb47f7790" = { # Gruvbox theme 
					install_url = "https://addons.mozilla.org/firefox/downloads/latest/another-gruvbox-material-dark/latest.xpi";
					installation_mode = "force_installed";
				};

# Extensions
				"uBlock0@raymondhill.net" = { # ublock origin
					install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
					installation_mode = "force_installed";
				};
				"jid1-MnnxcxisBPnSXQ@jetpack" = { # privacy badger
					install_url = "https://addons.mozilla.org/firefox/downloads/latest/privacy-badger17/latest.xpi";
					installation_mode = "force_installed";
				};
				"sponsorBlocker@ajay.app" = { # sponsor block
					install_url = "https://addons.mozilla.org/firefox/downloads/latest/sponsorblock/latest.xpi";
					installation_mode = "force_installed";
				};
				"d7742d87-e61d-4b78-b8a1-b469842139fa" = { # Vimium 
					install_url = "https://addons.mozilla.org/firefox/downloads/latest//vimium-ff/latest.xpi";
					installation_mode = "force_installed";
				};
			};
		};
	};

	home.sessionVariables = {
		BROWSER = "${pkgs.firefox}/bin/firefox";
	};

	xdg.mimeApps = {
		enable = true;
		defaultApplications = {

			# Firefox
			"application/xhtml+xml" = "firefox.desktop";
			"text/html" = "firefox.desktop";
			"text/xml" = "firefox.desktop";
			"x-scheme-handler/http" = "firefox.desktop";
			"x-scheme-handler/https" = "firefox.desktop";
		};
	};
}
