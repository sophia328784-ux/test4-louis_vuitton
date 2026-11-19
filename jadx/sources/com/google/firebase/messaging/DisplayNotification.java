package com.google.firebase.messaging;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.media.AudioAttributes;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.NotificationCompat$BigPictureStyle;
import androidx.core.app.NotificationCompat$BigTextStyle;
import androidx.core.app.NotificationCompat$Builder;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.IconCompat;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import defpackage.jr;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
class DisplayNotification {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ExecutorService f35233a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f35234b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final NotificationParams f35235c;

    public DisplayNotification(Context context, NotificationParams notificationParams, ExecutorService executorService) {
        this.f35233a = executorService;
        this.f35234b = context;
        this.f35235c = notificationParams;
    }

    /* JADX WARN: Code duplicated, block: B:139:0x031d  */
    /* JADX WARN: Code duplicated, block: B:253:0x0314 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v148 */
    /* JADX WARN: Type inference failed for: r0v149 */
    /* JADX WARN: Type inference failed for: r0v77 */
    public final boolean a() {
        ImageDownload imageDownload;
        Bundle bundle;
        int identifier;
        Uri defaultUri;
        Intent launchIntentForPackage;
        int i2;
        PendingIntent activity;
        PendingIntent broadcast;
        Integer numValueOf;
        Long lValueOf;
        long[] jArr;
        int[] iArr;
        int i3;
        int i4 = 1;
        if (this.f35235c.a("gcm.n.noui")) {
            return true;
        }
        Context context = this.f35234b;
        if (!((KeyguardManager) context.getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
            int iMyPid = Process.myPid();
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService(ActionFloatingViewItem.f37018a)).getRunningAppProcesses();
            if (runningAppProcesses != null) {
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                    if (runningAppProcessInfo.pid == iMyPid) {
                        if (runningAppProcessInfo.importance != 100) {
                            break;
                        }
                        return false;
                    }
                }
            }
        }
        String strE = this.f35235c.e("gcm.n.image");
        if (TextUtils.isEmpty(strE)) {
            imageDownload = null;
        } else {
            try {
                imageDownload = new ImageDownload(new URL(strE));
            } catch (MalformedURLException unused) {
                imageDownload = null;
            }
        }
        if (imageDownload != null) {
            ExecutorService executorService = this.f35233a;
            TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            imageDownload.f35265c = executorService.submit(new jr(imageDownload, taskCompletionSource, 20));
            imageDownload.d = taskCompletionSource.f32085a;
        }
        Context context2 = this.f35234b;
        NotificationParams notificationParams = this.f35235c;
        AtomicInteger atomicInteger = CommonNotificationBuilder.f35230a;
        try {
            ApplicationInfo applicationInfo = context2.getPackageManager().getApplicationInfo(context2.getPackageName(), 128);
            if (applicationInfo == null || (bundle = applicationInfo.metaData) == null) {
                bundle = Bundle.EMPTY;
            }
        } catch (PackageManager.NameNotFoundException e2) {
            e2.toString();
        }
        Bundle bundle2 = bundle;
        String strE2 = notificationParams.e("gcm.n.android_channel_id");
        try {
            if (context2.getPackageManager().getApplicationInfo(context2.getPackageName(), 0).targetSdkVersion < 26) {
                strE2 = null;
            } else {
                NotificationManager notificationManager = (NotificationManager) context2.getSystemService(NotificationManager.class);
                if (TextUtils.isEmpty(strE2) || notificationManager.getNotificationChannel(strE2) == null) {
                    strE2 = bundle2.getString("com.google.firebase.messaging.default_notification_channel_id");
                    if (TextUtils.isEmpty(strE2) || notificationManager.getNotificationChannel(strE2) == null) {
                        strE2 = "fcm_fallback_notification_channel";
                        if (notificationManager.getNotificationChannel("fcm_fallback_notification_channel") == null) {
                            int identifier2 = context2.getResources().getIdentifier("fcm_fallback_notification_channel_label", "string", context2.getPackageName());
                            notificationManager.createNotificationChannel(new NotificationChannel("fcm_fallback_notification_channel", identifier2 == 0 ? "Misc" : context2.getString(identifier2), 3));
                        }
                    }
                }
            }
        } catch (PackageManager.NameNotFoundException unused2) {
        }
        AtomicInteger atomicInteger2 = CommonNotificationBuilder.f35230a;
        String packageName = context2.getPackageName();
        Resources resources = context2.getResources();
        PackageManager packageManager = context2.getPackageManager();
        NotificationCompat$Builder notificationCompat$Builder = new NotificationCompat$Builder(context2, strE2);
        String strD = notificationParams.d(packageName, resources, "gcm.n.title");
        if (!TextUtils.isEmpty(strD)) {
            notificationCompat$Builder.f11910e = NotificationCompat$Builder.e(strD);
        }
        String strD2 = notificationParams.d(packageName, resources, "gcm.n.body");
        if (!TextUtils.isEmpty(strD2)) {
            notificationCompat$Builder.f11911f = NotificationCompat$Builder.e(strD2);
            NotificationCompat$BigTextStyle notificationCompat$BigTextStyle = new NotificationCompat$BigTextStyle();
            notificationCompat$BigTextStyle.f11896e = NotificationCompat$Builder.e(strD2);
            notificationCompat$Builder.i(notificationCompat$BigTextStyle);
        }
        String strE3 = notificationParams.e("gcm.n.icon");
        if (TextUtils.isEmpty(strE3) || ((identifier = resources.getIdentifier(strE3, "drawable", packageName)) == 0 && (identifier = resources.getIdentifier(strE3, "mipmap", packageName)) == 0)) {
            identifier = bundle2.getInt("com.google.firebase.messaging.default_notification_icon", 0);
            if (identifier == 0) {
                try {
                    identifier = packageManager.getApplicationInfo(packageName, 0).icon;
                } catch (PackageManager.NameNotFoundException e3) {
                    e3.toString();
                }
            }
            if (identifier == 0) {
                identifier = 17301651;
            }
        }
        notificationCompat$Builder.Q.icon = identifier;
        String strE4 = notificationParams.e("gcm.n.sound2");
        if (TextUtils.isEmpty(strE4)) {
            strE4 = notificationParams.e("gcm.n.sound");
        }
        if (TextUtils.isEmpty(strE4)) {
            defaultUri = null;
        } else if ("default".equals(strE4) || resources.getIdentifier(strE4, "raw", packageName) == 0) {
            defaultUri = RingtoneManager.getDefaultUri(2);
        } else {
            defaultUri = Uri.parse("android.resource://" + packageName + "/raw/" + strE4);
        }
        if (defaultUri != null) {
            Notification notification = notificationCompat$Builder.Q;
            notification.sound = defaultUri;
            notification.audioStreamType = -1;
            notification.audioAttributes = new AudioAttributes.Builder().setContentType(4).setUsage(5).build();
        }
        String strE5 = notificationParams.e("gcm.n.click_action");
        if (TextUtils.isEmpty(strE5)) {
            String strE6 = notificationParams.e("gcm.n.link_android");
            if (TextUtils.isEmpty(strE6)) {
                strE6 = notificationParams.e("gcm.n.link");
            }
            Uri uri = !TextUtils.isEmpty(strE6) ? Uri.parse(strE6) : null;
            if (uri != null) {
                launchIntentForPackage = new Intent("android.intent.action.VIEW");
                launchIntentForPackage.setPackage(packageName);
                launchIntentForPackage.setData(uri);
            } else {
                launchIntentForPackage = packageManager.getLaunchIntentForPackage(packageName);
            }
        } else {
            launchIntentForPackage = new Intent(strE5);
            launchIntentForPackage.setPackage(packageName);
            launchIntentForPackage.setFlags(268435456);
        }
        if (launchIntentForPackage == null) {
            i2 = 1;
            activity = null;
        } else {
            launchIntentForPackage.addFlags(67108864);
            Bundle bundle3 = notificationParams.f35270a;
            Bundle bundle4 = new Bundle(bundle3);
            for (String str : bundle3.keySet()) {
                int i5 = i4;
                if (str.startsWith("google.c.") || str.startsWith("gcm.n.") || str.startsWith("gcm.notification.")) {
                    bundle4.remove(str);
                }
                i4 = i5;
            }
            i2 = i4;
            launchIntentForPackage.putExtras(bundle4);
            if (notificationParams.a("google.c.a.e")) {
                launchIntentForPackage.putExtra("gcm.n.analytics_data", notificationParams.g());
            }
            int iIncrementAndGet = atomicInteger2.incrementAndGet();
            PushAutoTrackHelper.hookIntentGetActivity(context2, iIncrementAndGet, launchIntentForPackage, 1140850688);
            activity = PendingIntent.getActivity(context2, iIncrementAndGet, launchIntentForPackage, 1140850688);
            PushAutoTrackHelper.hookPendingIntentGetActivity(activity, context2, iIncrementAndGet, launchIntentForPackage, 1140850688);
        }
        notificationCompat$Builder.f11912h = activity;
        if (notificationParams.a("google.c.a.e")) {
            Intent intentPutExtras = new Intent("com.google.firebase.messaging.NOTIFICATION_DISMISS").putExtras(notificationParams.g());
            int iIncrementAndGet2 = atomicInteger2.incrementAndGet();
            Intent intentPutExtra = new Intent("com.google.android.c2dm.intent.RECEIVE").setPackage(context2.getPackageName()).putExtra("wrapped_intent", intentPutExtras);
            PushAutoTrackHelper.hookIntentGetBroadcast(context2, iIncrementAndGet2, intentPutExtra, 1140850688);
            broadcast = PendingIntent.getBroadcast(context2, iIncrementAndGet2, intentPutExtra, 1140850688);
            PushAutoTrackHelper.hookPendingIntentGetBroadcast(broadcast, context2, iIncrementAndGet2, intentPutExtra, 1140850688);
        } else {
            broadcast = null;
        }
        if (broadcast != null) {
            notificationCompat$Builder.Q.deleteIntent = broadcast;
        }
        String strE7 = notificationParams.e("gcm.n.color");
        if (TextUtils.isEmpty(strE7)) {
            i3 = bundle2.getInt("com.google.firebase.messaging.default_notification_color", 0);
            if (i3 != 0) {
                numValueOf = Integer.valueOf(ContextCompat.getColor(context2, i3));
            } else {
                numValueOf = null;
            }
        } else {
            try {
                numValueOf = Integer.valueOf(Color.parseColor(strE7));
            } catch (IllegalArgumentException unused3) {
                i3 = bundle2.getInt("com.google.firebase.messaging.default_notification_color", 0);
                if (i3 != 0) {
                    try {
                        numValueOf = Integer.valueOf(ContextCompat.getColor(context2, i3));
                    } catch (Resources.NotFoundException unused4) {
                        numValueOf = null;
                    }
                } else {
                    numValueOf = null;
                }
            }
        }
        if (numValueOf != null) {
            notificationCompat$Builder.D = numValueOf.intValue();
        }
        notificationCompat$Builder.g(16, !notificationParams.a("gcm.n.sticky"));
        notificationCompat$Builder.y = notificationParams.a("gcm.n.local_only");
        String strE8 = notificationParams.e("gcm.n.ticker");
        if (strE8 != null) {
            notificationCompat$Builder.Q.tickerText = NotificationCompat$Builder.e(strE8);
        }
        Integer numB = notificationParams.b("gcm.n.notification_priority");
        if (numB == null || numB.intValue() < -2 || numB.intValue() > 2) {
            numB = null;
        }
        if (numB != null) {
            notificationCompat$Builder.m = numB.intValue();
        }
        Integer numB2 = notificationParams.b("gcm.n.visibility");
        if (numB2 == null || numB2.intValue() < -1 || numB2.intValue() > i2) {
            numB2 = null;
        }
        if (numB2 != null) {
            notificationCompat$Builder.E = numB2.intValue();
        }
        Integer numB3 = notificationParams.b("gcm.n.notification_count");
        if (numB3 == null || numB3.intValue() < 0) {
            numB3 = null;
        }
        if (numB3 != null) {
            notificationCompat$Builder.l = numB3.intValue();
        }
        String strE9 = notificationParams.e("gcm.n.event_time");
        if (TextUtils.isEmpty(strE9)) {
            lValueOf = null;
        } else {
            try {
                lValueOf = Long.valueOf(Long.parseLong(strE9));
            } catch (NumberFormatException unused5) {
                NotificationParams.h("gcm.n.event_time");
                lValueOf = null;
            }
        }
        if (lValueOf != null) {
            notificationCompat$Builder.n = true;
            notificationCompat$Builder.Q.when = lValueOf.longValue();
        }
        JSONArray jSONArrayC = notificationParams.c("gcm.n.vibrate_timings");
        if (jSONArrayC == null) {
            jArr = null;
        } else {
            try {
                if (jSONArrayC.length() <= 1) {
                    throw new JSONException("vibrateTimings have invalid length");
                }
                int length = jSONArrayC.length();
                jArr = new long[length];
                for (int i6 = 0; i6 < length; i6++) {
                    jArr[i6] = jSONArrayC.optLong(i6);
                }
            } catch (NumberFormatException | JSONException unused6) {
                jSONArrayC.toString();
                jArr = null;
            }
        }
        if (jArr != null) {
            notificationCompat$Builder.Q.vibrate = jArr;
        }
        JSONArray jSONArrayC2 = notificationParams.c("gcm.n.light_settings");
        if (jSONArrayC2 == null) {
            iArr = null;
        } else {
            iArr = new int[3];
            try {
                if (jSONArrayC2.length() != 3) {
                    throw new JSONException("lightSettings don't have all three fields");
                }
                int color = Color.parseColor(jSONArrayC2.optString(0));
                if (color == -16777216) {
                    throw new IllegalArgumentException("Transparent color is invalid");
                }
                iArr[0] = color;
                iArr[1] = jSONArrayC2.optInt(1);
                iArr[2] = jSONArrayC2.optInt(2);
            } catch (IllegalArgumentException e4) {
                jSONArrayC2.toString();
                e4.getMessage();
                iArr = null;
            } catch (JSONException unused7) {
                jSONArrayC2.toString();
                iArr = null;
            }
        }
        if (iArr != null) {
            int i7 = iArr[0];
            int i8 = iArr[1];
            int i9 = iArr[2];
            Notification notification2 = notificationCompat$Builder.Q;
            notification2.ledARGB = i7;
            notification2.ledOnMS = i8;
            notification2.ledOffMS = i9;
            notification2.flags = ((i8 == 0 || i9 == 0) ? 0 : 1) | ((-2) & notification2.flags);
        }
        boolean zA = notificationParams.a("gcm.n.default_sound");
        ?? r0 = zA;
        if (notificationParams.a("gcm.n.default_vibrate_timings")) {
            r0 = (zA ? 1 : 0) | 2;
        }
        int i10 = r0;
        if (notificationParams.a("gcm.n.default_light_settings")) {
            i10 = (r0 == true ? 1 : 0) | 4;
        }
        notificationCompat$Builder.f(i10);
        String strE10 = notificationParams.e("gcm.n.tag");
        if (TextUtils.isEmpty(strE10)) {
            strE10 = "FCM-Notification:" + SystemClock.uptimeMillis();
        }
        CommonNotificationBuilder.DisplayNotificationInfo displayNotificationInfo = new CommonNotificationBuilder.DisplayNotificationInfo(notificationCompat$Builder, strE10);
        if (imageDownload != null) {
            try {
                Task task = imageDownload.d;
                Preconditions.h(task);
                Bitmap bitmap = (Bitmap) Tasks.b(task, 5L, TimeUnit.SECONDS);
                notificationCompat$Builder.h(bitmap);
                NotificationCompat$BigPictureStyle notificationCompat$BigPictureStyle = new NotificationCompat$BigPictureStyle();
                notificationCompat$BigPictureStyle.f11893e = bitmap == null ? null : IconCompat.d(bitmap);
                notificationCompat$BigPictureStyle.f11894f = null;
                notificationCompat$BigPictureStyle.g = true;
                notificationCompat$Builder.i(notificationCompat$BigPictureStyle);
            } catch (InterruptedException unused8) {
                imageDownload.close();
                Thread.currentThread().interrupt();
            } catch (ExecutionException e5) {
                Objects.toString(e5.getCause());
            } catch (TimeoutException unused9) {
                imageDownload.close();
            }
        }
        Log.isLoggable("FirebaseMessaging", 3);
        NotificationManager notificationManager2 = (NotificationManager) this.f35234b.getSystemService("notification");
        String str2 = displayNotificationInfo.f35232b;
        Notification notificationC = displayNotificationInfo.f35231a.c();
        notificationManager2.notify(str2, 0, notificationC);
        PushAutoTrackHelper.onNotify(notificationManager2, str2, 0, notificationC);
        return true;
    }
}
