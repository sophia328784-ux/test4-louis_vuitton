package com.google.firebase.crashlytics;

import android.os.Bundle;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.analytics.AnalyticsEventReceiver;
import com.google.firebase.crashlytics.internal.analytics.BlockingAnalyticsEventLogger;
import com.google.firebase.crashlytics.internal.analytics.BreadcrumbAnalyticsEventReceiver;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
class CrashlyticsAnalyticsListener implements AnalyticsConnector.AnalyticsConnectorListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public BlockingAnalyticsEventLogger f34469a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public BreadcrumbAnalyticsEventReceiver f34470b;

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector.AnalyticsConnectorListener
    public final void a(int i2, Bundle bundle) {
        Logger logger = Logger.f34483b;
        Locale locale = Locale.US;
        bundle.toString();
        logger.a(2);
        String string = bundle.getString("name");
        if (string != null) {
            Bundle bundle2 = bundle.getBundle("params");
            if (bundle2 == null) {
                bundle2 = new Bundle();
            }
            AnalyticsEventReceiver analyticsEventReceiver = "clx".equals(bundle2.getString("_o")) ? this.f34469a : this.f34470b;
            if (analyticsEventReceiver == null) {
                return;
            }
            analyticsEventReceiver.onEvent(string, bundle2);
        }
    }
}
