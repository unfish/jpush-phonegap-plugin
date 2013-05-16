package org.apache.cordova.plugin;

import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaPlugin;
import org.json.JSONArray;
import org.json.JSONException;

import android.content.Context;

import cn.jpush.android.api.JPushInterface;

public class JPushUtilPlugin extends CordovaPlugin {

	@Override 
	public boolean execute(String action, JSONArray data, CallbackContext callbackContext) throws JSONException {
		Context context = cordova.getActivity().getApplicationContext();
		JPushInterface.setAliasAndTags(context, data.getString(0), null);
		return true;
	}

}
