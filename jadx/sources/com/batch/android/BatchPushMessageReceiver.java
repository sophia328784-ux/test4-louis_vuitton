package com.batch.android;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.batch.android.e.t;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes.dex */
public class BatchPushMessageReceiver extends com.batch.android.d.b {
    private static final String d = "BatchPushMessageReceiver";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final int f22836e = 30;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final ArrayDeque<String> f22837f = new ArrayDeque<>(30);

    private boolean b(Context context, Intent intent) {
        try {
            JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
            if (jobScheduler == null) {
                t.c(d, "Could not get Job Scheduler system service");
                return false;
            }
            Bundle extras = intent.getExtras();
            if (extras != null && !extras.isEmpty()) {
                Bundle bundle = new Bundle();
                bundle.putBundle(BatchPushJobService.JOB_EXTRA_PUSH_DATA_KEY, extras);
                if (jobScheduler.schedule(new JobInfo.Builder((int) (Math.random() * 2.147483647E9d), new ComponentName(context, (Class<?>) BatchPushJobService.class)).setOverrideDeadline(3600000L).setTransientExtras(bundle).build()) == 0) {
                    t.c(d, "Failed to schedule the push notification presenter job");
                    return false;
                }
                t.c(d, "Successfully scheduled the push notification presenter job");
                return true;
            }
            t.c(d, "Intent extras were empty, not scheduling push notification presenter job");
            return false;
        } catch (Exception e2) {
            t.c(d, "Could schedule Batch push presentation job", e2);
            return false;
        }
    }

    private void c(Context context, Intent intent) {
        ComponentName componentName = new ComponentName(context.getPackageName(), BatchPushService.class.getName());
        if (com.batch.android.e.o.c(context)) {
            com.batch.android.d.b.startWakefulService(context, intent.setComponent(componentName));
        } else {
            context.startService(intent.setComponent(componentName));
        }
    }

    public boolean a(Context context, Intent intent) {
        if ((intent.getFlags() & 268435456) == 0) {
            t.c(d, "Normal priority notification: scheduling a Job");
            return b(context, intent);
        }
        t.c(d, "High priority notification/legacy Android: starting service");
        try {
            c(context, intent);
            return true;
        } catch (IllegalStateException | SecurityException unused) {
            t.c(d, "Failed to start service, scheduling Job");
            return b(context, intent);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            t.c(d, "null intent. Ignoring.");
            return;
        }
        if (!b(intent)) {
            t.c(d, "Intent was not a push message.");
            return;
        }
        String strA = a(intent);
        if (!a(strA)) {
            if (a(context, intent)) {
                b(strA);
            }
        } else {
            t.b(d, "Got a duplicate message_id from FCM: " + strA + " , ignoring.");
        }
    }

    private boolean a(String str) {
        if (str == null) {
            return false;
        }
        return f22837f.contains(str);
    }

    private String a(Intent intent) {
        String stringExtra = intent.getStringExtra("google.message_id");
        if (!TextUtils.isEmpty(stringExtra)) {
            return stringExtra;
        }
        String stringExtra2 = intent.getStringExtra("message_id");
        if (TextUtils.isEmpty(stringExtra2)) {
            return null;
        }
        return stringExtra2;
    }

    public static int a() {
        return f22837f.size();
    }

    private boolean b(Intent intent) {
        String stringExtra = intent.getStringExtra("message_type");
        return stringExtra == null || "gcm".equalsIgnoreCase(stringExtra);
    }

    private void b(String str) {
        if (str == null) {
            return;
        }
        ArrayDeque<String> arrayDeque = f22837f;
        arrayDeque.add(str);
        if (arrayDeque.size() > 30) {
            arrayDeque.pollFirst();
        }
    }

    public static void b() {
        f22837f.clear();
    }
}
