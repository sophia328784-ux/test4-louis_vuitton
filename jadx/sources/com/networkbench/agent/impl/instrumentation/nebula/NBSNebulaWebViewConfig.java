package com.networkbench.agent.impl.instrumentation.nebula;

import com.alipay.mobile.h5container.api.H5Page;
import com.alipay.mobile.nebula.webview.APWebChromeClient;
import com.alipay.mobile.nebula.webview.APWebViewClient;
import com.alipay.mobile.nebulacore.core.H5PageImpl;
import com.alipay.mobile.nebulacore.web.H5WebChromeClient;
import com.alipay.mobile.nebulacore.web.H5WebViewClient;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.instrumentation.NBSJSBridgeDom;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.webview.a.a;
import com.networkbench.agent.impl.webview.a.b;

/* JADX INFO: loaded from: classes2.dex */
public class NBSNebulaWebViewConfig {
    private static final String TAG = "NBSNebulaWebViewConfig";

    public static void configWebView(H5Page h5Page, APWebViewClient aPWebViewClient, APWebChromeClient aPWebChromeClient) {
        try {
            if (Harvest.isHttp_network_enabled() && Harvest.isWebView_enabled()) {
                if (h5Page instanceof H5PageImpl) {
                    H5PageImpl h5PageImpl = (H5PageImpl) h5Page;
                    H5WebChromeClient webChromeClient = h5PageImpl.getWebChromeClient();
                    H5WebViewClient webViewClient = h5PageImpl.getWebViewClient();
                    if (webChromeClient == null || webViewClient == null) {
                        return;
                    }
                    a aVar = new a(webChromeClient);
                    b bVar = new b(webViewClient);
                    try {
                        h5PageImpl.getWebView().addJavascriptInterface(new NBSNebulaJsBridge(), ConfigurationName.NBS_JS_BRIDGE_NAME);
                        h5PageImpl.getWebView().addJavascriptInterface(new NBSJSBridgeDom(), "nbsDOMChanged");
                        if (aPWebChromeClient != null) {
                            h5PageImpl.getWebView().setWebChromeClient(new a(aPWebChromeClient));
                        } else {
                            h5PageImpl.getWebView().setWebChromeClient(aVar);
                        }
                        if (aPWebViewClient != null) {
                            h5PageImpl.getWebView().setWebViewClient(new b(aPWebViewClient));
                            return;
                        } else {
                            h5PageImpl.getWebView().setWebViewClient(bVar);
                            return;
                        }
                    } catch (Throwable th) {
                        Logger.error(TAG, "config error", th);
                        return;
                    }
                }
                return;
            }
            Logger.debug(TAG, "webview switch is close, skip");
        } catch (Throwable th2) {
            Logger.error(TAG, "error config H5Page", th2);
        }
    }
}
