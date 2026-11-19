package com.batch.android.b;

import android.content.Context;
import android.content.Intent;
import com.batch.android.UserActionRunnable;
import com.batch.android.UserActionSource;
import com.batch.android.e.t;
import com.batch.android.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class g implements UserActionRunnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f22956a = "RedirectSettingsAction";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f22957b = "batch.android_redirect_settings";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f22958c = "batch.redirect_settings";

    @Override // com.batch.android.UserActionRunnable
    public void performAction(Context context, String str, JSONObject jSONObject, UserActionSource userActionSource) {
        if (context == null) {
            t.a(f22956a, "Tried to perform a redirect settings action, but no context was available");
            return;
        }
        Intent intent = new Intent();
        intent.setFlags(268435456);
        intent.setAction("android.settings.APP_NOTIFICATION_SETTINGS");
        intent.putExtra("android.provider.extra.APP_PACKAGE", context.getPackageName());
        context.startActivity(intent);
    }
}
