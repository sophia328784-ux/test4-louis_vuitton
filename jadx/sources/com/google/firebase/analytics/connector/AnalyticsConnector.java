package com.google.firebase.analytics.connector;

import android.os.Bundle;

/* JADX INFO: loaded from: classes2.dex */
public interface AnalyticsConnector {

    public interface AnalyticsConnectorHandle {
    }

    public interface AnalyticsConnectorListener {
        void a(int i2, Bundle bundle);
    }

    void a(String str, String str2, Bundle bundle);

    void b(String str);

    AnalyticsConnectorHandle c(String str, AnalyticsConnectorListener analyticsConnectorListener);
}
