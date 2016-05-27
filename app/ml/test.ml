let on_device_ready () =
  let i = Cordova_in_app_browser.t () in
  (* Clear cache and show InAppBrowser location bar *)
  let opt = Cordova_in_app_browser.options_list_to_str [Cordova_in_app_browser.location false ;
  Cordova_in_app_browser.ai_clear_cache true] in
  (* Opens in the Cordova WebView if the URL is in the white list *)
  i#open_ "https://github.com/dannywillems/ocaml-cordova-plugin-list" (Cordova_in_app_browser.target_self) opt

let _ = Cordova.Event.device_ready on_device_ready
