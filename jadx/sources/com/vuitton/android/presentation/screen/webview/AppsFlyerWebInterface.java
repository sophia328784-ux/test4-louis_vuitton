package com.vuitton.android.presentation.screen.webview;

import android.webkit.JavascriptInterface;
import com.appsflyer.AppsFlyerLib;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerTracker;
import com.vuitton.foundation.logger.Logger;
import java.util.Iterator;
import java.util.LinkedHashMap;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0011B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0007¢\u0006\u0004\b\u000b\u0010\fJ#\u0010\u000f\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\b2\b\u0010\u000e\u001a\u0004\u0018\u00010\bH\u0007¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/AppsFlyerWebInterface;", "", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;", "appsFlyerTracker", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;)V", "", "customerUserId", "", "setCustomerUserId", "(Ljava/lang/String;)V", "name", "json", "recordEvent", "(Ljava/lang/String;Ljava/lang/String;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AppsFlyerWebInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f65446a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppsFlyerTracker f65447b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/AppsFlyerWebInterface$Companion;", "", "", "TAG", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public AppsFlyerWebInterface(Logger logger, AppsFlyerTracker appsFlyerTracker) {
        logger.getClass();
        appsFlyerTracker.getClass();
        this.f65446a = logger;
        this.f65447b = appsFlyerTracker;
    }

    @JavascriptInterface
    public final void recordEvent(String name, String json) {
        LinkedHashMap linkedHashMap = null;
        if (json != null) {
            try {
                JSONObject jSONObject = new JSONObject(json);
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    Object objOpt = jSONObject.opt(next);
                    if (objOpt != null) {
                        linkedHashMap2.put(next, objOpt);
                    }
                }
                linkedHashMap = linkedHashMap2;
            } catch (JSONException e2) {
                this.f65446a.c("AppsFlyerWebInterface", "Record event error : " + e2, null);
            }
        }
        if (name == null) {
            name = "unknown_event";
        }
        this.f65447b.a("AppsFlyerWebInterface", new AppsFlyerEvent.FromWebView(name, linkedHashMap));
    }

    @JavascriptInterface
    public final void setCustomerUserId(String customerUserId) {
        customerUserId.getClass();
        this.f65446a.getClass();
        AppsFlyerLib.getInstance().setCustomerUserId(customerUserId);
    }
}
