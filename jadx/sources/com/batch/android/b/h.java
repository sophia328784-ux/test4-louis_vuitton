package com.batch.android.b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import com.batch.android.BatchPermissionActivity;
import com.batch.android.UserActionRunnable;
import com.batch.android.UserActionSource;
import com.batch.android.e.t;
import com.batch.android.e.w;
import com.batch.android.e.x;
import com.batch.android.json.JSONObject;
import com.batch.android.n.o;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;

/* JADX INFO: loaded from: classes.dex */
public class h extends BroadcastReceiver implements UserActionRunnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f22959a = "SmartReOptInAction";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f22960b = "batch.android_smart_reoptin";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f22961c = "batch.smart_reoptin";

    private void a(Context context) {
        Intent intent = new Intent("android.settings.APP_NOTIFICATION_SETTINGS");
        intent.setFlags(268435456);
        intent.putExtra("android.provider.extra.APP_PACKAGE", context.getPackageName());
        context.startActivity(intent);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
        if (x.d.equals(intent.getStringExtra(BatchPermissionActivity.EXTRA_PERMISSION))) {
            boolean booleanExtra = intent.getBooleanExtra("result", false);
            boolean booleanExtra2 = intent.getBooleanExtra(BatchPermissionActivity.EXTRA_REDIRECT_SETTINGS, false);
            w.b(context);
            o.a(context).a(this);
            if (booleanExtra || !booleanExtra2) {
                return;
            }
            a(context);
        }
    }

    @Override // com.batch.android.UserActionRunnable
    public void performAction(Context context, String str, JSONObject jSONObject, UserActionSource userActionSource) {
        if (context == null) {
            t.a(f22959a, "Tried to perform a smart reoptin action, but no context was available");
            return;
        }
        if (Build.VERSION.SDK_INT < 33) {
            return;
        }
        x xVar = new x(null);
        if (xVar.a(context)) {
            t.c(f22959a, "Notification permission is already granted, aborting.");
            return;
        }
        if (!com.batch.android.e.o.b(context)) {
            xVar.a(context, false, this);
        } else if (xVar.b(context)) {
            a(context);
        } else {
            xVar.c(context);
        }
    }
}
