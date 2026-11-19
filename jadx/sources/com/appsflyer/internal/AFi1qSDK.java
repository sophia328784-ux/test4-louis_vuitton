package com.appsflyer.internal;

import android.app.Activity;
import android.net.Uri;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class AFi1qSDK implements AFi1tSDK {
    @Override // com.appsflyer.internal.AFi1tSDK
    public final String AFLogger(Activity activity) {
        Uri uriG_ = AFb1uSDK.g_(activity != null ? activity.getIntent() : null);
        String string = uriG_ != null ? uriG_.toString() : null;
        if (string == null) {
            string = "";
        }
        if (StringsKt.P(string, "android-app://", false)) {
            return null;
        }
        return string;
    }

    @Override // com.appsflyer.internal.AFi1tSDK
    public final String registerClient(Activity activity) {
        Uri referrer = (activity == null || activity.getIntent() == null) ? null : activity.getReferrer();
        String string = referrer != null ? referrer.toString() : null;
        return string == null ? "" : string;
    }
}
