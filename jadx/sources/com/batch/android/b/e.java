package com.batch.android.b;

import android.content.Context;
import com.batch.android.UserActionRunnable;
import com.batch.android.UserActionSource;
import com.batch.android.e.t;
import com.batch.android.e.x;
import com.batch.android.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class e implements UserActionRunnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f22951a = "NotificationPermissionAction";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f22952b = "batch.android_request_notifications";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f22953c = "batch.request_notifications";

    @Override // com.batch.android.UserActionRunnable
    public void performAction(Context context, String str, JSONObject jSONObject, UserActionSource userActionSource) {
        if (context == null) {
            t.a(f22951a, "Tried to perform a notif. permission request action, but no context was available");
        } else {
            new x(null).a(context, true, null);
        }
    }
}
