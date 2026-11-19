package com.sensorsdata.analytics.android.sdk.jsbridge;

import android.text.TextUtils;
import android.view.View;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPIEmptyImplementation;
import com.sensorsdata.analytics.android.sdk.core.SACoreHelper;
import com.sensorsdata.analytics.android.sdk.core.event.InputData;
import com.sensorsdata.analytics.android.sdk.internal.beans.ServerUrl;
import com.sensorsdata.analytics.android.sdk.listener.SAJSListener;
import java.lang.ref.WeakReference;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class H5Helper {
    private static CopyOnWriteArrayList<SAJSListener> mSAJSListeners;

    public static void addJavascriptInterface(View view, Object obj, String str) {
        try {
            Class<?> cls = view.getClass();
            try {
                Object objInvoke = cls.getMethod("getSettings", null).invoke(view, null);
                if (objInvoke != null) {
                    objInvoke.getClass().getMethod("setJavaScriptEnabled", Boolean.TYPE).invoke(objInvoke, Boolean.TRUE);
                }
            } catch (Exception unused) {
            }
            cls.getMethod("addJavascriptInterface", Object.class, String.class).invoke(view, obj, str);
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    public static void addSAJSListener(SAJSListener sAJSListener) {
        try {
            if (mSAJSListeners == null) {
                mSAJSListeners = new CopyOnWriteArrayList<>();
            }
            if (mSAJSListeners.contains(sAJSListener)) {
                return;
            }
            mSAJSListeners.add(sAJSListener);
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    public static void handleJsMessage(WeakReference<View> weakReference, String str) {
        CopyOnWriteArrayList<SAJSListener> copyOnWriteArrayList = mSAJSListeners;
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
            return;
        }
        for (SAJSListener sAJSListener : mSAJSListeners) {
            if (sAJSListener != null) {
                try {
                    sAJSListener.onReceiveJSMessage(weakReference, str);
                } catch (Exception e2) {
                    SALog.printStackTrace(e2);
                }
            }
        }
    }

    public static void removeSAJSListener(SAJSListener sAJSListener) {
        try {
            CopyOnWriteArrayList<SAJSListener> copyOnWriteArrayList = mSAJSListeners;
            if (copyOnWriteArrayList == null || !copyOnWriteArrayList.contains(sAJSListener)) {
                return;
            }
            mSAJSListeners.remove(sAJSListener);
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    private static void trackEvent(final String str) {
        if (SensorsDataAPI.sharedInstance() instanceof SensorsDataAPIEmptyImplementation) {
            SALog.i("SA.AppWebViewInterface", "trackEvent SensorsDataAPIEmptyImplementation");
        } else {
            SACoreHelper.getInstance().trackQueueEvent(new Runnable() { // from class: com.sensorsdata.analytics.android.sdk.jsbridge.H5Helper.1
                @Override // java.lang.Runnable
                public void run() {
                    SACoreHelper.getInstance().trackEvent(new InputData().setExtras(str));
                }
            });
        }
    }

    public static void trackEventFromH5(String str, boolean z) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(str);
            SALog.i("SA.AppWebViewInterface", "trackEventFromH5 h5 enableVerify = " + z);
            if (z) {
                String strOptString = jSONObject.optString("server_url");
                SALog.i("SA.AppWebViewInterface", "trackEventFromH5 h5 serverUrl = " + strOptString);
                if (TextUtils.isEmpty(strOptString) || !new ServerUrl(strOptString).check(new ServerUrl(SensorsDataAPI.getConfigOptions().getServerUrl()))) {
                    return;
                }
            }
            trackEvent(str);
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
    }

    public static boolean verifyEventFromH5(String str) {
        try {
            SALog.i("SA.AppWebViewInterface", "verifyEventFromH5 h5 eventInfo = " + str);
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            String strOptString = new JSONObject(str).optString("server_url");
            SALog.i("SA.AppWebViewInterface", "verifyEventFromH5 h5 serverUrl = " + strOptString);
            if (TextUtils.isEmpty(strOptString) || !new ServerUrl(strOptString).check(new ServerUrl(SensorsDataAPI.getConfigOptions().getServerUrl()))) {
                return false;
            }
            trackEvent(str);
            return true;
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
        return false;
    }
}
