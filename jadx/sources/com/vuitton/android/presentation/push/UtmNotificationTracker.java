package com.vuitton.android.presentation.push;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import com.appsflyer.sdk_base.referrer.Payload;
import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/push/UtmNotificationTracker;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class UtmNotificationTracker {
    public static void a(Context context, Uri uri) {
        uri.getClass();
        String queryParameter = uri.getQueryParameter("utm_campaign");
        if (queryParameter == null && (queryParameter = uri.getQueryParameter("campaign")) == null) {
            queryParameter = "no_campaign";
        }
        String queryParameter2 = uri.getQueryParameter("utm_source");
        if (queryParameter2 == null) {
            queryParameter2 = "push";
        }
        String queryParameter3 = uri.getQueryParameter("utm_medium");
        if (queryParameter3 == null) {
            queryParameter3 = "no_medium";
        }
        String queryParameter4 = uri.getQueryParameter("utm_content");
        FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.getInstance(context);
        Bundle bundle = new Bundle();
        bundle.putString("campaign", queryParameter);
        bundle.putString(Payload.SOURCE, queryParameter2);
        bundle.putString("medium", queryParameter3);
        if (queryParameter4 != null) {
            bundle.putString("content", queryParameter4);
        }
        firebaseAnalytics.getClass();
        firebaseAnalytics.f34361a.i(new Bundle(bundle));
    }
}
