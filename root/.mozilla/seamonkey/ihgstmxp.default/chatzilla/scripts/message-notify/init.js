plugin.id = "message-notify";

plugin.init =
function _init(glob) {
	plugin.major = 1;
	plugin.minor = 0;
	plugin.version = plugin.major + "." + plugin.minor + " ( 8 Jun 2007)";
	plugin.description = "Notifies the user on any messages to a channel. " +
						"By James Ross <silver@warwickcompsoc.co.uk>.";
	
	plugin.prefary.push(["sound", "beep", ""]);
	plugin.prefary.push(["attention", true, ""]);
	
	return "OK";
}

plugin.enable =
function _enable() {
	client.eventPump.addHook([{ set: "channel", type: "privmsg"},
	                          { set: "channel", type: "action"},
	                          { set: "channel", type: "notice"},
	                          { set: "channel", type: "join"},
	                          { set: "channel", type: "part"},
	                          { set: "channel", type: "quit"},
	                          { set: "channel", type: "kick"}],
	                         plugin.onMessage, plugin.id + "-channel-hook");
	
	return true;
}

plugin.disable =
function _disable() {
	client.eventPump.removeHookByName(plugin.id + "-channel-hook");
	
	return true;
}

plugin.onMessage =
function _onMessage(e) {
	try {
		if (plugin.prefs["sound"] && !window.isFocused)
			playSounds(plugin.prefs["sound"]);
		if (plugin.prefs["attention"] && !window.isFocused)
			window.getAttention();
	} catch(ex) {
		showErrorDlg(ex);
	}
}

