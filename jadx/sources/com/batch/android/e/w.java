package com.batch.android.e;

import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.app.NotificationManager;
import android.content.Context;
import android.text.TextUtils;
import com.batch.android.BatchNotificationChannelsManager;
import com.batch.android.BatchPushRegistration;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import defpackage.j91;

/* JADX INFO: loaded from: classes.dex */
public class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f23190a = "Notification Authorization";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Boolean f23191b;

    public static boolean a(NotificationManager notificationManager, String str, boolean z) {
        NotificationChannelGroup notificationChannelGroup;
        NotificationChannel notificationChannel = notificationManager.getNotificationChannel(str);
        if (notificationChannel == null && z) {
            return true;
        }
        if (notificationChannel == null) {
            return false;
        }
        String group = notificationChannel.getGroup();
        return (TextUtils.isEmpty(group) || (notificationChannelGroup = notificationManager.getNotificationChannelGroup(group)) == null || !notificationChannelGroup.isBlocked()) && notificationChannel.getImportance() != 0;
    }

    public static void b(Context context) {
        boolean zA = a(context, com.batch.android.n.d.a());
        if (a(context, zA)) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("has_notification_authorization", zA);
                com.batch.android.n.e0.a().a(com.batch.android.o.g.f23862k, jSONObject);
                com.batch.android.n.w.a(context).a(z.j1, String.valueOf(zA), true);
            } catch (JSONException unused) {
                t.c("Cannot track event NOTIFICATION_STATUS_CHANGE.");
            }
        }
        Boolean bool = f23191b;
        if (bool == null) {
            f23191b = Boolean.valueOf(zA);
            return;
        }
        if (bool.booleanValue() != zA) {
            f23191b = Boolean.valueOf(zA);
            StringBuilder sb = new StringBuilder("Notification Authorization changed (is now ");
            sb.append(zA ? "true" : "false");
            sb.append(")");
            t.c(sb.toString());
            com.batch.android.j1.e eVarA = com.batch.android.n.z.a();
            if (eVarA.a(new j91(context, eVarA, 4))) {
                return;
            }
            t.c("Notif. Authorization changed but SDK isn't ready. Not sending update to the server.");
        }
    }

    public static boolean a(Context context, boolean z) {
        String strA = com.batch.android.n.w.a(context).a(z.j1);
        return strA == null || Boolean.parseBoolean(strA) != z;
    }

    public static boolean a(Context context, BatchNotificationChannelsManager batchNotificationChannelsManager) {
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        return notificationManager != null && a(context) && a(context, notificationManager) && a(notificationManager, batchNotificationChannelsManager);
    }

    public static boolean a(Context context, String str) {
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        if (notificationManager == null || str == null) {
            return false;
        }
        return a(context) && a(context, notificationManager) && a(notificationManager, str, false);
    }

    public static boolean a(Context context, NotificationManager notificationManager) {
        return notificationManager.areNotificationsEnabled();
    }

    public static boolean a(Context context) {
        try {
            String strA = com.batch.android.n.w.a(context).a(z.i1);
            if (strA == null) {
                return true;
            }
            return e0.a(Integer.parseInt(strA)).contains(e0.ALERT);
        } catch (Exception e2) {
            t.c(f23190a, "Error while getting Batch notification type", e2);
            return true;
        }
    }

    public static boolean a(NotificationManager notificationManager, BatchNotificationChannelsManager batchNotificationChannelsManager) {
        return a(notificationManager, com.batch.android.c.a(batchNotificationChannelsManager), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Context context, com.batch.android.j1.e eVar) {
        BatchPushRegistration batchPushRegistrationB = com.batch.android.n.y.a().b(context);
        if (batchPushRegistrationB == null) {
            t.c("Notif. Authorization changed but no registration is available. Not sending update to the server.");
        } else {
            com.batch.android.a.m.a(eVar, batchPushRegistrationB);
        }
    }
}
