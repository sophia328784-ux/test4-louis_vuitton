package com.sensorsdata.analytics.android.sdk.visual.bridge;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sensorsdata.analytics.android.sdk.listener.SAJSListener;
import com.sensorsdata.analytics.android.sdk.util.JSONUtils;
import defpackage.fc;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class JSBridgeHelper implements WebViewJavascriptBridge {
    private static final String CALLBACK_ID_FORMAT = "JAVA_CB_%s";
    private static final String CALL_TYPE_GET_VISUAL_PROPERTIES = "getJSVisualProperties";
    private Map<String, OnBridgeCallback> mCallbacks = new HashMap();
    private SAJSListener mSAJSListener;

    /* JADX INFO: Access modifiers changed from: private */
    public static void invokeWebViewLoad(View view, String str, Object[] objArr, Class[] clsArr) {
        try {
            view.getClass().getMethod(str, clsArr).invoke(view, objArr);
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    public void addSAJSListener() {
        if (this.mSAJSListener == null) {
            this.mSAJSListener = new SAJSListener() { // from class: com.sensorsdata.analytics.android.sdk.visual.bridge.JSBridgeHelper.1
                @Override // com.sensorsdata.analytics.android.sdk.listener.SAJSListener
                public void onReceiveJSMessage(WeakReference<View> weakReference, String str) {
                    OnBridgeCallback onBridgeCallback;
                    JSONObject jSONObjectOptJSONObject;
                    try {
                        JSONObject jSONObject = new JSONObject(str);
                        if (TextUtils.equals(JSBridgeHelper.CALL_TYPE_GET_VISUAL_PROPERTIES, jSONObject.optString("callType"))) {
                            String strOptString = jSONObject.optString("message_id");
                            if (TextUtils.isEmpty(strOptString) || (onBridgeCallback = (OnBridgeCallback) JSBridgeHelper.this.mCallbacks.remove(strOptString)) == null || (jSONObjectOptJSONObject = jSONObject.optJSONObject(DbParams.KEY_DATA)) == null) {
                                return;
                            }
                            onBridgeCallback.onCallBack(jSONObjectOptJSONObject.toString());
                        }
                    } catch (Exception e2) {
                        SALog.printStackTrace(e2);
                    }
                }
            };
            SensorsDataAPI.sharedInstance().addSAJSListener(this.mSAJSListener);
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0062  */
    @Override // com.sensorsdata.analytics.android.sdk.visual.bridge.WebViewJavascriptBridge
    public synchronized void sendToWeb(final View view, final String str, Object obj, OnBridgeCallback onBridgeCallback) {
        final JSONObject jSONObject;
        try {
            try {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                JSRequest jSRequest = new JSRequest();
                jSRequest.methodName = str;
                if (onBridgeCallback != null) {
                    String str2 = "JAVA_CB_" + SystemClock.currentThreadTimeMillis();
                    this.mCallbacks.put(str2, onBridgeCallback);
                    jSRequest.messageId = str2;
                }
                if (obj instanceof String) {
                    if (TextUtils.isEmpty((String) obj)) {
                        jSONObject = null;
                    } else {
                        jSONObject = new JSONObject((String) obj);
                    }
                } else if (obj instanceof JSONObject) {
                    jSONObject = new JSONObject();
                    jSONObject.put("message_id", jSRequest.messageId);
                    jSONObject.put("platform", "Android");
                    JSONUtils.mergeJSONObject((JSONObject) obj, jSONObject);
                } else {
                    jSONObject = null;
                }
                if (jSONObject == null) {
                    return;
                }
                if (view != null) {
                    view.post(new Runnable() { // from class: com.sensorsdata.analytics.android.sdk.visual.bridge.JSBridgeHelper.2
                        @Override // java.lang.Runnable
                        public void run() {
                            JSBridgeHelper.invokeWebViewLoad(view, "loadUrl", new Object[]{fc.h("javascript:window.sensorsdata_app_call_js(", "'" + str + "','" + Base64.encodeToString(jSONObject.toString().getBytes(), 0) + "'", ")")}, new Class[]{String.class});
                        }
                    });
                }
            } catch (Exception e2) {
                SALog.printStackTrace(e2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.visual.bridge.WebViewJavascriptBridge
    public void sendToWeb(View view, String str, Object obj) {
        sendToWeb(view, str, obj, null);
    }
}
