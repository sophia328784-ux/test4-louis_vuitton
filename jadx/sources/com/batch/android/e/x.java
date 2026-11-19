package com.batch.android.e;

import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import com.batch.android.BatchPermissionActivity;
import com.batch.android.BatchPermissionListener;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;

/* JADX INFO: loaded from: classes.dex */
public class x extends BroadcastReceiver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f23192b = "NotificationPermission";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f23193c = "App is targeting Android ";
    public static final String d = "android.permission.POST_NOTIFICATIONS";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BatchPermissionListener f23194a;

    public x(BatchPermissionListener batchPermissionListener) {
        this.f23194a = batchPermissionListener;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [android.content.BroadcastReceiver] */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r6v2, types: [com.batch.android.d.a] */
    public void a(Context context, boolean z, BroadcastReceiver broadcastReceiver) {
        ?? r3;
        if (Build.VERSION.SDK_INT < 33) {
            BatchPermissionListener batchPermissionListener = this.f23194a;
            if (batchPermissionListener != null) {
                batchPermissionListener.onPermissionRequested(true);
                return;
            }
            return;
        }
        if (a(context)) {
            t.c(f23192b, "Notifications are already enabled, not requesting permission.");
            BatchPermissionListener batchPermissionListener2 = this.f23194a;
            if (batchPermissionListener2 != null) {
                batchPermissionListener2.onPermissionRequested(true);
                return;
            }
            return;
        }
        if (o.b(context)) {
            t.c(f23192b, "App is targeting Android 12L or lower.");
            if (z) {
                c(context);
                return;
            } else {
                t.c(f23192b, "Cannot request the notification permission in the context. To do that, please update your target sdk to 33.");
                return;
            }
        }
        t.c(f23192b, "App is targeting Android 13.");
        if (broadcastReceiver != null) {
            this = this;
            r3 = broadcastReceiver;
        }
        this = this;
        com.batch.android.n.o.a(context).a(r3, new IntentFilter(BatchPermissionActivity.ACTION_PERMISSION_RESULT));
        Intent intent = new Intent(context, (Class<?>) BatchPermissionActivity.class);
        intent.addFlags(268435456);
        intent.putExtra(BatchPermissionActivity.EXTRA_PERMISSION, d);
        context.startActivity(intent);
    }

    public boolean b(Context context) {
        return !((NotificationManager) context.getSystemService("notification")).getNotificationChannels().isEmpty();
    }

    public void c(Context context) {
        com.batch.android.c.a(com.batch.android.n.d.a(), context);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
        if (d.equals(intent.getStringExtra(BatchPermissionActivity.EXTRA_PERMISSION))) {
            boolean booleanExtra = intent.getBooleanExtra("result", false);
            BatchPermissionListener batchPermissionListener = this.f23194a;
            if (batchPermissionListener != null) {
                batchPermissionListener.onPermissionRequested(booleanExtra);
            }
            w.b(context);
            com.batch.android.n.o.a(context).a(this);
        }
    }

    public boolean a(Context context) {
        NotificationManager notificationManager = (NotificationManager) context.getSystemService(NotificationManager.class);
        return notificationManager != null && notificationManager.areNotificationsEnabled() && o.a(d, context);
    }
}
