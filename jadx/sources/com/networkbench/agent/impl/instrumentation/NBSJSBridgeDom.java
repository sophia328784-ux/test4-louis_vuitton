package com.networkbench.agent.impl.instrumentation;

import android.webkit.JavascriptInterface;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.session.screen.NBSScreenRecordTimer;

/* JADX INFO: loaded from: classes2.dex */
public class NBSJSBridgeDom {
    @JavascriptInterface
    @com.uc.webview.export.JavascriptInterface
    public static void logDebug(String str) {
        g.d("NBSJSBridgeDom  logDebug  value : " + str);
    }

    @JavascriptInterface
    @com.uc.webview.export.JavascriptInterface
    public static void postMessage(String str) {
        g.d("NBSJSBridgeDom  postMessage  ! ");
        NBSScreenRecordTimer.storeBitmapDelay(100L);
    }
}
