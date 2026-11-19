package com.vuitton.android.presentation.screen.webview;

import android.webkit.JavascriptInterface;
import com.batch.android.Batch;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.analytics.HitType;
import com.vuitton.foundation.model.domain.model.analytics.UserProperty;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0010B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0007¢\u0006\u0004\b\f\u0010\rJ!\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000e\u001a\u0004\u0018\u00010\bH\u0007¢\u0006\u0004\b\u000f\u0010\r¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/AnalyticsWebInterface;", "", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V", "", "name", "jsonParams", "", "logEvent", "(Ljava/lang/String;Ljava/lang/String;)V", "value", "setUserProperty", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AnalyticsWebInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f65444a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnalyticsTracker f65445b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/AnalyticsWebInterface$Companion;", "", "", "TAG", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public AnalyticsWebInterface(Logger logger, AnalyticsTracker analyticsTracker) {
        logger.getClass();
        analyticsTracker.getClass();
        this.f65444a = logger;
        this.f65445b = analyticsTracker;
    }

    @JavascriptInterface
    public final void logEvent(String name, String jsonParams) {
        name.getClass();
        jsonParams.getClass();
        this.f65444a.getClass();
        if (name.equals("purchase")) {
            Batch.Profile.trackEvent("validated_purchase");
        }
        this.f65445b.a(new Hit.WebViewHit(new HitType.Custom(name), null, jsonParams, 2, null));
    }

    @JavascriptInterface
    public final void setUserProperty(String name, String value) {
        name.getClass();
        this.f65444a.getClass();
        this.f65445b.b(new UserProperty.WebViewUserProperty(name, value));
    }
}
