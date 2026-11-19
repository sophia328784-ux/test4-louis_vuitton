package com.batch.android;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.widget.RemoteViews;
import androidx.core.app.NotificationCompat$Action;
import androidx.core.app.NotificationCompat$Builder;
import androidx.core.app.NotificationCompat$Style;
import androidx.core.app.NotificationManagerCompat;
import com.batch.android.e.d0;
import com.batch.android.e.e0;
import com.batch.android.e.f0;
import com.batch.android.e.r;
import com.batch.android.e.t;
import com.batch.android.e.w;
import com.batch.android.e.z;
import com.batch.android.n.v;
import com.batch.android.n.y;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f23055a = "BatchPushNotificationPresenter";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f23056b = "com.batch.android.push.smallicon";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f23057c = "com.google.firebase.messaging.default_notification_icon";
    private static final String d = "com.batch.android.push.color";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f23058e = -100;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f23059f = "google.message_id";

    /* JADX WARN: Code duplicated, block: B:108:0x01c8 A[Catch: Exception -> 0x01be, TryCatch #2 {Exception -> 0x01be, blocks: (B:101:0x019f, B:108:0x01c8, B:109:0x01d3), top: B:176:0x018b }] */
    /* JADX WARN: Code duplicated, block: B:112:0x01db  */
    /* JADX WARN: Code duplicated, block: B:115:0x01e4  */
    /* JADX WARN: Code duplicated, block: B:117:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:119:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:121:0x01fa  */
    /* JADX WARN: Code duplicated, block: B:124:0x0220  */
    /* JADX WARN: Code duplicated, block: B:127:0x027b  */
    /* JADX WARN: Code duplicated, block: B:130:0x029c  */
    /* JADX WARN: Code duplicated, block: B:133:0x02a6  */
    /* JADX WARN: Code duplicated, block: B:135:0x02bc  */
    /* JADX WARN: Code duplicated, block: B:136:0x02c2  */
    /* JADX WARN: Code duplicated, block: B:138:0x02cb  */
    /* JADX WARN: Code duplicated, block: B:141:0x02e7  */
    /* JADX WARN: Code duplicated, block: B:147:0x030b  */
    /* JADX WARN: Code duplicated, block: B:150:0x0313  */
    /* JADX WARN: Code duplicated, block: B:155:0x0323  */
    /* JADX WARN: Code duplicated, block: B:157:0x032d  */
    /* JADX WARN: Code duplicated, block: B:160:0x0338 A[Catch: RuntimeException -> 0x033e, TRY_LEAVE, TryCatch #4 {RuntimeException -> 0x033e, blocks: (B:158:0x0332, B:160:0x0338), top: B:179:0x0332 }] */
    /* JADX WARN: Code duplicated, block: B:167:0x0360  */
    /* JADX WARN: Code duplicated, block: B:168:0x0376  */
    /* JADX WARN: Code duplicated, block: B:181:0x0187 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:183:0x00ba A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:41:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:43:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:47:0x00c8 A[Catch: Exception -> 0x00e3, TRY_LEAVE, TryCatch #6 {Exception -> 0x00e3, blocks: (B:45:0x00ba, B:47:0x00c8), top: B:183:0x00ba }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00dd A[Catch: Exception -> 0x00e1, TryCatch #7 {Exception -> 0x00e1, blocks: (B:49:0x00cc, B:51:0x00dd, B:58:0x00ed, B:60:0x00f4), top: B:185:0x00cc }] */
    /* JADX WARN: Code duplicated, block: B:56:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:58:0x00ed A[Catch: Exception -> 0x00e1, TryCatch #7 {Exception -> 0x00e1, blocks: (B:49:0x00cc, B:51:0x00dd, B:58:0x00ed, B:60:0x00f4), top: B:185:0x00cc }] */
    /* JADX WARN: Code duplicated, block: B:60:0x00f4 A[Catch: Exception -> 0x00e1, TRY_LEAVE, TryCatch #7 {Exception -> 0x00e1, blocks: (B:49:0x00cc, B:51:0x00dd, B:58:0x00ed, B:60:0x00f4), top: B:185:0x00cc }] */
    /* JADX WARN: Code duplicated, block: B:63:0x0101  */
    /* JADX WARN: Code duplicated, block: B:66:0x010a A[Catch: Exception -> 0x012f, TryCatch #1 {Exception -> 0x012f, blocks: (B:64:0x0104, B:66:0x010a, B:68:0x0118, B:70:0x012b, B:75:0x0134), top: B:174:0x0104 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x0133  */
    /* JADX WARN: Code duplicated, block: B:75:0x0134 A[Catch: Exception -> 0x012f, TRY_LEAVE, TryCatch #1 {Exception -> 0x012f, blocks: (B:64:0x0104, B:66:0x010a, B:68:0x0118, B:70:0x012b, B:75:0x0134), top: B:174:0x0104 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x0144  */
    /* JADX WARN: Code duplicated, block: B:81:0x014b  */
    /* JADX WARN: Code duplicated, block: B:82:0x0150  */
    /* JADX WARN: Code duplicated, block: B:85:0x015b  */
    /* JADX WARN: Code duplicated, block: B:88:0x016a  */
    /* JADX WARN: Code duplicated, block: B:90:0x016e  */
    /* JADX WARN: Code duplicated, block: B:91:0x0176  */
    /* JADX WARN: Code duplicated, block: B:92:0x017c  */
    /* JADX WARN: Code duplicated, block: B:97:0x018d A[Catch: Exception -> 0x01c4, TRY_LEAVE, TryCatch #5 {Exception -> 0x01c4, blocks: (B:95:0x0187, B:97:0x018d), top: B:181:0x0187 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r18v11, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r18v12 */
    /* JADX WARN: Type inference failed for: r18v13 */
    /* JADX WARN: Type inference failed for: r18v18 */
    /* JADX WARN: Type inference failed for: r18v19 */
    /* JADX WARN: Type inference failed for: r18v20 */
    /* JADX WARN: Type inference failed for: r18v21 */
    /* JADX WARN: Type inference failed for: r18v22 */
    /* JADX WARN: Type inference failed for: r18v7 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v14, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v15, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v20 */
    /* JADX WARN: Type inference failed for: r9v21 */
    public static void a(Context context, Bundle bundle, BatchPushPayload batchPushPayload, BatchNotificationInterceptor batchNotificationInterceptor) throws j {
        int iM;
        Bitmap bitmapL;
        int i2;
        String strA;
        Bitmap bitmapB;
        int i3;
        Bitmap bitmapG;
        int i4;
        int i5;
        Bitmap bitmap;
        Bitmap bitmapB2;
        Integer numC;
        int iN;
        int i6;
        Uri uriR;
        Uri uri;
        int i7;
        String str;
        ?? r18;
        Intent intent;
        ?? r19;
        int iRandom;
        NotificationCompat$Builder notificationCompat$Builder;
        Notification notification;
        Bitmap bitmap2;
        ?? r9;
        Bitmap bitmap3;
        com.batch.android.e1.c dVar;
        List<BatchNotificationAction> actions;
        BatchPushPayload batchPushPayload2;
        r.c cVarQ;
        String strI;
        Notification notificationC;
        ?? r10;
        Integer numJ;
        ?? r110;
        String strA2;
        String string = bundle.getString("msg");
        String string2 = bundle.getString("title");
        if (string == null) {
            t.c(f23055a, "Not presenting a notification since it has no value for Batch.Push.ALERT_KEY");
            return;
        }
        r rVarA = batchPushPayload.a();
        if (rVarA == null) {
            t.c(f23055a, "Not presenting a notification since we could not read batch's internal data");
            return;
        }
        if (rVarA.F()) {
            t.c(f23055a, "Not presenting a notification since it is marked as silent");
            return;
        }
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (d.a(context, rVarA) && !a(context, bundle, rVarA)) {
            Bundle bundle2 = batchNotificationInterceptor != null ? new Bundle(bundle) : null;
            rVarA.r();
            int iB = b(context);
            if (iB == -100) {
                t.c(f23055a, "Not showing notifications since notification type is NONE or does not contain ALERT");
                return;
            }
            if (string2 == null || string2.isEmpty()) {
                try {
                    string2 = context.getPackageManager().getApplicationLabel(applicationInfo).toString();
                } catch (Exception unused) {
                    t.a(f23055a, "Unable to find label of the application. Did you correctly set your application label in the manifest?");
                    return;
                }
            }
            String str2 = string2;
            BatchNotificationChannelsManager batchNotificationChannelsManagerA = com.batch.android.n.d.a();
            String strA3 = batchNotificationChannelsManagerA.a(batchPushPayload);
            batchNotificationChannelsManagerA.a(context);
            int iIntValue = applicationInfo.icon;
            Integer numD = d(context);
            if (numD == null) {
                iM = y.a().m();
                if (iM == 0) {
                }
                if (iM == 0) {
                    t.a(f23055a, "Unable to find icon of the application. Did you correctly set your application icon in the manifest?");
                    return;
                }
                bitmapL = y.a().l();
                if (rVarA.y()) {
                    try {
                        strA = d0.a(rVarA.e());
                        bitmapB = d0.b(context, strA);
                        if (bitmapB == null) {
                            i4 = iB;
                            try {
                                bitmapG = new f(context, rVarA.e(), rVarA.d()).G();
                                i3 = i4;
                                if (bitmapG != null) {
                                    d0.a(context, strA, bitmapG);
                                }
                            } catch (Exception e2) {
                                e = e2;
                                i2 = i4;
                                t.c(f23055a, "Error while downloading custom big icon image", e);
                                t.a(f23055a, "Unable to download large icon image sent via payload, fallback on default");
                                i5 = i2;
                            }
                        } else {
                            i3 = iB;
                            bitmapG = bitmapB;
                        }
                        if (bitmapG != null) {
                            i3 = i4;
                            bitmapL = a(context, bitmapG);
                            i5 = i3;
                        } else {
                            i3 = i4;
                            t.a(f23055a, "Unable to download large icon image sent via payload, fallback on default");
                            i5 = i3;
                        }
                    } catch (Exception e3) {
                        e = e3;
                        i2 = iB;
                    }
                } else {
                    i5 = iB;
                }
                bitmap = bitmapL;
                try {
                    if (rVarA.z()) {
                        strA2 = d0.a(rVarA.g());
                        bitmapB2 = d0.b(context, strA2);
                        if (bitmapB2 == null && (bitmapB2 = new f(context, rVarA.g(), rVarA.f()).G()) != null) {
                            d0.a(context, strA2, bitmapB2);
                        }
                        if (bitmapB2 != null) {
                            t.a(f23055a, "Unable to download large big picture image sent via payload, fallback on default");
                            bitmapB2 = null;
                        }
                    } else {
                        bitmapB2 = null;
                    }
                } catch (Exception e4) {
                    t.c(f23055a, "Error while downloading custom big picture image", e4);
                    t.a(f23055a, "Unable to download big picture image sent via payload, fallback on default");
                }
                numC = c(context);
                if (numC != null) {
                    iN = numC.intValue();
                } else {
                    iN = y.a().n();
                }
                if (iN == -1) {
                    iN = a(context);
                }
                i6 = iN;
                uriR = y.a().r();
                if (uriR != null) {
                    uri = uriR;
                    i7 = i5;
                } else if ((i5 & 1) != 0) {
                    uri = uriR;
                    i7 = i5 & (-2);
                } else {
                    i7 = i5;
                    uri = null;
                }
                if (rVarA.B()) {
                    try {
                        try {
                            if (!rVarA.E()) {
                                throw new NullPointerException("Received scheme is empty");
                            }
                            str = string;
                            try {
                                intent = new Intent(context, (Class<?>) BatchActionActivity.class);
                                intent.addFlags(268435456);
                                bitmap = bitmap;
                                intent.putExtra(BatchActionActivity.EXTRA_DEEPLINK_KEY, rVarA.v());
                                intent.setAction("batch_" + Long.toString(System.currentTimeMillis()));
                                r19 = str;
                            } catch (Exception e5) {
                                e = e5;
                                r18 = str;
                                t.a(f23055a, "Error while parsing deeplink", e);
                                r110 = r18;
                                intent = null;
                                r19 = r110;
                            }
                            if (intent == null) {
                                intent = com.batch.android.e.f.a(context);
                                if (intent == null) {
                                    t.a(f23055a, "Batch could not detect the launch intent for the current package. Not displaying notification.");
                                    return;
                                } else {
                                    numJ = y.a().j();
                                    if (numJ != null) {
                                        intent.addFlags(numJ.intValue() | 67108864);
                                    }
                                }
                            }
                            h.a(bundle, rVarA, intent);
                            PushAutoTrackHelper.hookIntentGetActivity(context, 0, intent, 201326592);
                            PendingIntent activity = PendingIntent.getActivity(context, 0, intent, 201326592);
                            PushAutoTrackHelper.hookPendingIntentGetActivity(activity, context, 0, intent, 201326592);
                            iRandom = (int) (Math.random() * 2.147483647E9d);
                            if (batchNotificationInterceptor != null) {
                                iRandom = batchNotificationInterceptor.getPushNotificationId(context, iRandom, bundle2);
                            }
                            Intent intent2 = new Intent(context, (Class<?>) BatchPushMessageDismissReceiver.class);
                            h.a(bundle, rVarA, intent2);
                            Context applicationContext = context.getApplicationContext();
                            PushAutoTrackHelper.hookIntentGetBroadcast(applicationContext, iRandom, intent2, 67108864);
                            PendingIntent broadcast = PendingIntent.getBroadcast(applicationContext, iRandom, intent2, 67108864);
                            PushAutoTrackHelper.hookPendingIntentGetBroadcast(broadcast, applicationContext, iRandom, intent2, 67108864);
                            notificationCompat$Builder = new NotificationCompat$Builder(context);
                            notificationCompat$Builder.f(i7);
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            notification = notificationCompat$Builder.Q;
                            notification.when = jCurrentTimeMillis;
                            notification.tickerText = NotificationCompat$Builder.e(r19);
                            notificationCompat$Builder.f11910e = NotificationCompat$Builder.e(str2);
                            notificationCompat$Builder.f11911f = NotificationCompat$Builder.e(r19);
                            notification.icon = iM;
                            notificationCompat$Builder.f11912h = activity;
                            notification.deleteIntent = broadcast;
                            notificationCompat$Builder.g(8, true);
                            notificationCompat$Builder.g(16, true);
                            notificationCompat$Builder.E = rVarA.x();
                            if (uri != null) {
                                notification.sound = uri;
                                notification.audioStreamType = -1;
                                notification.audioAttributes = new AudioAttributes.Builder().setContentType(4).setUsage(5).build();
                            }
                            notificationCompat$Builder.n = true;
                            notificationCompat$Builder.I = strA3;
                            if (i6 != -1) {
                                notificationCompat$Builder.D = i6;
                            }
                            if (rVarA.m() == r.b.APEN) {
                                r10 = r19;
                                bitmap3 = bitmap;
                                dVar = new com.batch.android.e1.a(str2, r10, bitmap3, bitmap2);
                                t.c(f23055a, "Using APEN (ex-news) format");
                                if (!f0.a(notificationCompat$Builder)) {
                                    bitmap2 = bitmapB2;
                                    r9 = r10;
                                    t.c(f23055a, "Cannot opt out of Smart Reply");
                                    r9 = r10;
                                }
                            } else {
                                bitmap2 = bitmapB2;
                                r9 = r19;
                                bitmap3 = bitmap;
                                dVar = null;
                            }
                            if (dVar == null) {
                                dVar = new com.batch.android.e1.d(str2, r9, bitmap3, bitmap2, rVarA.G());
                            }
                            dVar.a(rVarA.n());
                            a(context, dVar, notificationCompat$Builder);
                            actions = batchPushPayload.getActions();
                            if (actions != null || actions.size() <= 0) {
                                batchPushPayload2 = batchPushPayload;
                            } else {
                                batchPushPayload2 = batchPushPayload;
                                Iterator<NotificationCompat$Action> it = BatchNotificationAction.getSupportActions(context, actions, batchPushPayload2, Integer.valueOf(iRandom)).iterator();
                                while (it.hasNext()) {
                                    notificationCompat$Builder.b(it.next());
                                }
                            }
                            cVarQ = rVarA.q();
                            if (cVarQ != null && cVarQ != r.c.UNDEFINED) {
                                notificationCompat$Builder.m = cVarQ.b();
                            }
                            strI = rVarA.i();
                            if (strI != null) {
                                notificationCompat$Builder.v = strI;
                                notificationCompat$Builder.w = rVarA.C();
                            }
                            if (batchNotificationInterceptor != null) {
                                t.b(f23055a, "Calling developer's Notification Interceptor implementation");
                                try {
                                    notificationCompat$Builder = batchNotificationInterceptor.getPushNotificationCompatBuilder(context, notificationCompat$Builder, bundle2, iRandom);
                                    if (notificationCompat$Builder == null) {
                                        t.b(f23055a, "Aborting notification display: The push interceptor returned a null builder");
                                        return;
                                    }
                                } catch (RuntimeException e6) {
                                    t.a(f23055a, "Interceptor has thrown a runtime exception. Aborting notification display by rethrowing", e6);
                                    throw new j(e6);
                                }
                            }
                            notificationC = notificationCompat$Builder.c();
                            new NotificationManagerCompat(context).a(iRandom, notificationC);
                            if (w.a(context, notificationC.getChannelId())) {
                                t.b("Batch.Push: notification can't be displayed, skipping event dispatcher...");
                            } else {
                                com.batch.android.n.i.a().b(context);
                                com.batch.android.n.i.a().a(Batch.EventDispatcher.Type.NOTIFICATION_DISPLAY, new com.batch.android.p.c(batchPushPayload2));
                            }
                        } catch (Exception e7) {
                            e = e7;
                            r18 = i5;
                            t.a(f23055a, "Error while parsing deeplink", e);
                            r110 = r18;
                            intent = null;
                            r19 = r110;
                        }
                    } catch (Exception e8) {
                        e = e8;
                        str = string;
                    }
                } else {
                    r110 = string;
                }
                intent = null;
                r19 = r110;
                if (intent == null) {
                    intent = com.batch.android.e.f.a(context);
                    if (intent == null) {
                        t.a(f23055a, "Batch could not detect the launch intent for the current package. Not displaying notification.");
                        return;
                    } else {
                        numJ = y.a().j();
                        if (numJ != null) {
                            intent.addFlags(numJ.intValue() | 67108864);
                        }
                    }
                }
                h.a(bundle, rVarA, intent);
                PushAutoTrackHelper.hookIntentGetActivity(context, 0, intent, 201326592);
                PendingIntent activity2 = PendingIntent.getActivity(context, 0, intent, 201326592);
                PushAutoTrackHelper.hookPendingIntentGetActivity(activity2, context, 0, intent, 201326592);
                iRandom = (int) (Math.random() * 2.147483647E9d);
                if (batchNotificationInterceptor != null) {
                    iRandom = batchNotificationInterceptor.getPushNotificationId(context, iRandom, bundle2);
                }
                Intent intent3 = new Intent(context, (Class<?>) BatchPushMessageDismissReceiver.class);
                h.a(bundle, rVarA, intent3);
                Context applicationContext2 = context.getApplicationContext();
                PushAutoTrackHelper.hookIntentGetBroadcast(applicationContext2, iRandom, intent3, 67108864);
                PendingIntent broadcast2 = PendingIntent.getBroadcast(applicationContext2, iRandom, intent3, 67108864);
                PushAutoTrackHelper.hookPendingIntentGetBroadcast(broadcast2, applicationContext2, iRandom, intent3, 67108864);
                notificationCompat$Builder = new NotificationCompat$Builder(context);
                notificationCompat$Builder.f(i7);
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                notification = notificationCompat$Builder.Q;
                notification.when = jCurrentTimeMillis2;
                notification.tickerText = NotificationCompat$Builder.e(r19);
                notificationCompat$Builder.f11910e = NotificationCompat$Builder.e(str2);
                notificationCompat$Builder.f11911f = NotificationCompat$Builder.e(r19);
                notification.icon = iM;
                notificationCompat$Builder.f11912h = activity2;
                notification.deleteIntent = broadcast2;
                notificationCompat$Builder.g(8, true);
                notificationCompat$Builder.g(16, true);
                notificationCompat$Builder.E = rVarA.x();
                if (uri != null) {
                    notification.sound = uri;
                    notification.audioStreamType = -1;
                    notification.audioAttributes = new AudioAttributes.Builder().setContentType(4).setUsage(5).build();
                }
                notificationCompat$Builder.n = true;
                notificationCompat$Builder.I = strA3;
                if (i6 != -1) {
                    notificationCompat$Builder.D = i6;
                }
                if (rVarA.m() == r.b.APEN) {
                    r10 = r19;
                    bitmap3 = bitmap;
                    dVar = new com.batch.android.e1.a(str2, r10, bitmap3, bitmap2);
                    t.c(f23055a, "Using APEN (ex-news) format");
                    if (!f0.a(notificationCompat$Builder)) {
                        bitmap2 = bitmapB2;
                        r9 = r10;
                        t.c(f23055a, "Cannot opt out of Smart Reply");
                        r9 = r10;
                    }
                } else {
                    bitmap2 = bitmapB2;
                    r9 = r19;
                    bitmap3 = bitmap;
                    dVar = null;
                }
                if (dVar == null) {
                    dVar = new com.batch.android.e1.d(str2, r9, bitmap3, bitmap2, rVarA.G());
                }
                dVar.a(rVarA.n());
                a(context, dVar, notificationCompat$Builder);
                actions = batchPushPayload.getActions();
                if (actions != null) {
                    batchPushPayload2 = batchPushPayload;
                } else {
                    batchPushPayload2 = batchPushPayload;
                }
                cVarQ = rVarA.q();
                if (cVarQ != null) {
                    notificationCompat$Builder.m = cVarQ.b();
                }
                strI = rVarA.i();
                if (strI != null) {
                    notificationCompat$Builder.v = strI;
                    notificationCompat$Builder.w = rVarA.C();
                }
                if (batchNotificationInterceptor != null) {
                    t.b(f23055a, "Calling developer's Notification Interceptor implementation");
                    notificationCompat$Builder = batchNotificationInterceptor.getPushNotificationCompatBuilder(context, notificationCompat$Builder, bundle2, iRandom);
                    if (notificationCompat$Builder == null) {
                        t.b(f23055a, "Aborting notification display: The push interceptor returned a null builder");
                        return;
                    }
                }
                notificationC = notificationCompat$Builder.c();
                new NotificationManagerCompat(context).a(iRandom, notificationC);
                if (w.a(context, notificationC.getChannelId())) {
                    t.b("Batch.Push: notification can't be displayed, skipping event dispatcher...");
                } else {
                    com.batch.android.n.i.a().b(context);
                    com.batch.android.n.i.a().a(Batch.EventDispatcher.Type.NOTIFICATION_DISPLAY, new com.batch.android.p.c(batchPushPayload2));
                }
            }
            iIntValue = numD.intValue();
            iM = iIntValue;
            if (iM == 0) {
                t.a(f23055a, "Unable to find icon of the application. Did you correctly set your application icon in the manifest?");
                return;
            }
            bitmapL = y.a().l();
            if (rVarA.y()) {
                strA = d0.a(rVarA.e());
                bitmapB = d0.b(context, strA);
                if (bitmapB == null) {
                    i4 = iB;
                    bitmapG = new f(context, rVarA.e(), rVarA.d()).G();
                    i3 = i4;
                    if (bitmapG != null) {
                        d0.a(context, strA, bitmapG);
                    }
                } else {
                    i3 = iB;
                    bitmapG = bitmapB;
                }
                if (bitmapG != null) {
                    i3 = i4;
                    bitmapL = a(context, bitmapG);
                    i5 = i3;
                } else {
                    i3 = i4;
                    t.a(f23055a, "Unable to download large icon image sent via payload, fallback on default");
                    i5 = i3;
                }
            } else {
                i5 = iB;
            }
            bitmap = bitmapL;
            if (rVarA.z()) {
                bitmapB2 = null;
            } else {
                strA2 = d0.a(rVarA.g());
                bitmapB2 = d0.b(context, strA2);
                if (bitmapB2 == null) {
                    d0.a(context, strA2, bitmapB2);
                }
                if (bitmapB2 != null) {
                    t.a(f23055a, "Unable to download large big picture image sent via payload, fallback on default");
                    bitmapB2 = null;
                }
            }
            numC = c(context);
            if (numC != null) {
                iN = numC.intValue();
            } else {
                iN = y.a().n();
            }
            if (iN == -1) {
                iN = a(context);
            }
            i6 = iN;
            uriR = y.a().r();
            if (uriR != null) {
                uri = uriR;
                i7 = i5;
            } else if ((i5 & 1) != 0) {
                uri = uriR;
                i7 = i5 & (-2);
            } else {
                i7 = i5;
                uri = null;
            }
            if (rVarA.B()) {
                if (!rVarA.E()) {
                    throw new NullPointerException("Received scheme is empty");
                }
                str = string;
                intent = new Intent(context, (Class<?>) BatchActionActivity.class);
                intent.addFlags(268435456);
                bitmap = bitmap;
                intent.putExtra(BatchActionActivity.EXTRA_DEEPLINK_KEY, rVarA.v());
                intent.setAction("batch_" + Long.toString(System.currentTimeMillis()));
                r19 = str;
                if (intent == null) {
                    intent = com.batch.android.e.f.a(context);
                    if (intent == null) {
                        t.a(f23055a, "Batch could not detect the launch intent for the current package. Not displaying notification.");
                        return;
                    } else {
                        numJ = y.a().j();
                        if (numJ != null) {
                            intent.addFlags(numJ.intValue() | 67108864);
                        }
                    }
                }
                h.a(bundle, rVarA, intent);
                PushAutoTrackHelper.hookIntentGetActivity(context, 0, intent, 201326592);
                PendingIntent activity3 = PendingIntent.getActivity(context, 0, intent, 201326592);
                PushAutoTrackHelper.hookPendingIntentGetActivity(activity3, context, 0, intent, 201326592);
                iRandom = (int) (Math.random() * 2.147483647E9d);
                if (batchNotificationInterceptor != null) {
                    iRandom = batchNotificationInterceptor.getPushNotificationId(context, iRandom, bundle2);
                }
                Intent intent4 = new Intent(context, (Class<?>) BatchPushMessageDismissReceiver.class);
                h.a(bundle, rVarA, intent4);
                Context applicationContext3 = context.getApplicationContext();
                PushAutoTrackHelper.hookIntentGetBroadcast(applicationContext3, iRandom, intent4, 67108864);
                PendingIntent broadcast3 = PendingIntent.getBroadcast(applicationContext3, iRandom, intent4, 67108864);
                PushAutoTrackHelper.hookPendingIntentGetBroadcast(broadcast3, applicationContext3, iRandom, intent4, 67108864);
                notificationCompat$Builder = new NotificationCompat$Builder(context);
                notificationCompat$Builder.f(i7);
                long jCurrentTimeMillis3 = System.currentTimeMillis();
                notification = notificationCompat$Builder.Q;
                notification.when = jCurrentTimeMillis3;
                notification.tickerText = NotificationCompat$Builder.e(r19);
                notificationCompat$Builder.f11910e = NotificationCompat$Builder.e(str2);
                notificationCompat$Builder.f11911f = NotificationCompat$Builder.e(r19);
                notification.icon = iM;
                notificationCompat$Builder.f11912h = activity3;
                notification.deleteIntent = broadcast3;
                notificationCompat$Builder.g(8, true);
                notificationCompat$Builder.g(16, true);
                notificationCompat$Builder.E = rVarA.x();
                if (uri != null) {
                    notification.sound = uri;
                    notification.audioStreamType = -1;
                    notification.audioAttributes = new AudioAttributes.Builder().setContentType(4).setUsage(5).build();
                }
                notificationCompat$Builder.n = true;
                notificationCompat$Builder.I = strA3;
                if (i6 != -1) {
                    notificationCompat$Builder.D = i6;
                }
                if (rVarA.m() == r.b.APEN) {
                    r10 = r19;
                    bitmap3 = bitmap;
                    dVar = new com.batch.android.e1.a(str2, r10, bitmap3, bitmap2);
                    t.c(f23055a, "Using APEN (ex-news) format");
                    if (!f0.a(notificationCompat$Builder)) {
                        bitmap2 = bitmapB2;
                        r9 = r10;
                        t.c(f23055a, "Cannot opt out of Smart Reply");
                        r9 = r10;
                    }
                } else {
                    bitmap2 = bitmapB2;
                    r9 = r19;
                    bitmap3 = bitmap;
                    dVar = null;
                }
                if (dVar == null) {
                    dVar = new com.batch.android.e1.d(str2, r9, bitmap3, bitmap2, rVarA.G());
                }
                dVar.a(rVarA.n());
                a(context, dVar, notificationCompat$Builder);
                actions = batchPushPayload.getActions();
                if (actions != null) {
                    batchPushPayload2 = batchPushPayload;
                } else {
                    batchPushPayload2 = batchPushPayload;
                }
                cVarQ = rVarA.q();
                if (cVarQ != null) {
                    notificationCompat$Builder.m = cVarQ.b();
                }
                strI = rVarA.i();
                if (strI != null) {
                    notificationCompat$Builder.v = strI;
                    notificationCompat$Builder.w = rVarA.C();
                }
                if (batchNotificationInterceptor != null) {
                    t.b(f23055a, "Calling developer's Notification Interceptor implementation");
                    notificationCompat$Builder = batchNotificationInterceptor.getPushNotificationCompatBuilder(context, notificationCompat$Builder, bundle2, iRandom);
                    if (notificationCompat$Builder == null) {
                        t.b(f23055a, "Aborting notification display: The push interceptor returned a null builder");
                        return;
                    }
                }
                notificationC = notificationCompat$Builder.c();
                new NotificationManagerCompat(context).a(iRandom, notificationC);
                if (w.a(context, notificationC.getChannelId())) {
                    t.b("Batch.Push: notification can't be displayed, skipping event dispatcher...");
                } else {
                    com.batch.android.n.i.a().b(context);
                    com.batch.android.n.i.a().a(Batch.EventDispatcher.Type.NOTIFICATION_DISPLAY, new com.batch.android.p.c(batchPushPayload2));
                }
                r18 = str;
                t.a(f23055a, "Error while parsing deeplink", e);
                r110 = r18;
            } else {
                r110 = string;
            }
            intent = null;
            r19 = r110;
            if (intent == null) {
                intent = com.batch.android.e.f.a(context);
                if (intent == null) {
                    t.a(f23055a, "Batch could not detect the launch intent for the current package. Not displaying notification.");
                    return;
                } else {
                    numJ = y.a().j();
                    if (numJ != null) {
                        intent.addFlags(numJ.intValue() | 67108864);
                    }
                }
            }
            h.a(bundle, rVarA, intent);
            PushAutoTrackHelper.hookIntentGetActivity(context, 0, intent, 201326592);
            PendingIntent activity4 = PendingIntent.getActivity(context, 0, intent, 201326592);
            PushAutoTrackHelper.hookPendingIntentGetActivity(activity4, context, 0, intent, 201326592);
            iRandom = (int) (Math.random() * 2.147483647E9d);
            if (batchNotificationInterceptor != null) {
                iRandom = batchNotificationInterceptor.getPushNotificationId(context, iRandom, bundle2);
            }
            Intent intent5 = new Intent(context, (Class<?>) BatchPushMessageDismissReceiver.class);
            h.a(bundle, rVarA, intent5);
            Context applicationContext4 = context.getApplicationContext();
            PushAutoTrackHelper.hookIntentGetBroadcast(applicationContext4, iRandom, intent5, 67108864);
            PendingIntent broadcast4 = PendingIntent.getBroadcast(applicationContext4, iRandom, intent5, 67108864);
            PushAutoTrackHelper.hookPendingIntentGetBroadcast(broadcast4, applicationContext4, iRandom, intent5, 67108864);
            notificationCompat$Builder = new NotificationCompat$Builder(context);
            notificationCompat$Builder.f(i7);
            long jCurrentTimeMillis4 = System.currentTimeMillis();
            notification = notificationCompat$Builder.Q;
            notification.when = jCurrentTimeMillis4;
            notification.tickerText = NotificationCompat$Builder.e(r19);
            notificationCompat$Builder.f11910e = NotificationCompat$Builder.e(str2);
            notificationCompat$Builder.f11911f = NotificationCompat$Builder.e(r19);
            notification.icon = iM;
            notificationCompat$Builder.f11912h = activity4;
            notification.deleteIntent = broadcast4;
            notificationCompat$Builder.g(8, true);
            notificationCompat$Builder.g(16, true);
            notificationCompat$Builder.E = rVarA.x();
            if (uri != null) {
                notification.sound = uri;
                notification.audioStreamType = -1;
                notification.audioAttributes = new AudioAttributes.Builder().setContentType(4).setUsage(5).build();
            }
            notificationCompat$Builder.n = true;
            notificationCompat$Builder.I = strA3;
            if (i6 != -1) {
                notificationCompat$Builder.D = i6;
            }
            if (rVarA.m() == r.b.APEN) {
                r10 = r19;
                bitmap3 = bitmap;
                dVar = new com.batch.android.e1.a(str2, r10, bitmap3, bitmap2);
                t.c(f23055a, "Using APEN (ex-news) format");
                if (!f0.a(notificationCompat$Builder)) {
                    bitmap2 = bitmapB2;
                    r9 = r10;
                    t.c(f23055a, "Cannot opt out of Smart Reply");
                    r9 = r10;
                }
            } else {
                bitmap2 = bitmapB2;
                r9 = r19;
                bitmap3 = bitmap;
                dVar = null;
            }
            if (dVar == null) {
                dVar = new com.batch.android.e1.d(str2, r9, bitmap3, bitmap2, rVarA.G());
            }
            dVar.a(rVarA.n());
            a(context, dVar, notificationCompat$Builder);
            actions = batchPushPayload.getActions();
            if (actions != null) {
                batchPushPayload2 = batchPushPayload;
            } else {
                batchPushPayload2 = batchPushPayload;
            }
            cVarQ = rVarA.q();
            if (cVarQ != null) {
                notificationCompat$Builder.m = cVarQ.b();
            }
            strI = rVarA.i();
            if (strI != null) {
                notificationCompat$Builder.v = strI;
                notificationCompat$Builder.w = rVarA.C();
            }
            if (batchNotificationInterceptor != null) {
                t.b(f23055a, "Calling developer's Notification Interceptor implementation");
                notificationCompat$Builder = batchNotificationInterceptor.getPushNotificationCompatBuilder(context, notificationCompat$Builder, bundle2, iRandom);
                if (notificationCompat$Builder == null) {
                    t.b(f23055a, "Aborting notification display: The push interceptor returned a null builder");
                    return;
                }
            }
            notificationC = notificationCompat$Builder.c();
            new NotificationManagerCompat(context).a(iRandom, notificationC);
            if (w.a(context, notificationC.getChannelId())) {
                t.b("Batch.Push: notification can't be displayed, skipping event dispatcher...");
            } else {
                com.batch.android.n.i.a().b(context);
                com.batch.android.n.i.a().a(Batch.EventDispatcher.Type.NOTIFICATION_DISPLAY, new com.batch.android.p.c(batchPushPayload2));
            }
        }
    }

    private static int b(Context context) {
        String strA = com.batch.android.n.w.a(context).a(z.i1);
        if (strA != null) {
            try {
                EnumSet<e0> enumSetA = e0.a(Integer.parseInt(strA));
                if (enumSetA.size() == 1 && enumSetA.contains(e0.NONE)) {
                    return -100;
                }
                if (!enumSetA.contains(e0.ALERT)) {
                    return -100;
                }
                int i2 = enumSetA.contains(e0.VIBRATE) ? 2 : 0;
                if (enumSetA.contains(e0.SOUND)) {
                    i2 |= 1;
                }
                return enumSetA.contains(e0.LIGHTS) ? i2 | 4 : i2;
            } catch (Exception e2) {
                t.c(f23055a, "Error while reading notification types. Fallback on ALL", e2);
            }
        }
        return -1;
    }

    private static Integer c(Context context) {
        int i2;
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            if (bundle == null || (i2 = bundle.getInt(d)) == 0) {
                return null;
            }
            return Integer.valueOf(i2);
        } catch (PackageManager.NameNotFoundException unused) {
        } catch (Exception e2) {
            t.a(f23055a, "Error while parsing small icon meta data", e2);
        }
        return null;
    }

    private static Integer d(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            Bundle bundle = applicationInfo.metaData;
            if (bundle != null) {
                int i2 = bundle.getInt(f23056b);
                if (i2 != 0) {
                    return Integer.valueOf(i2);
                }
                int i3 = applicationInfo.metaData.getInt(f23057c);
                if (i3 != 0) {
                    return Integer.valueOf(i3);
                }
                return null;
            }
        } catch (PackageManager.NameNotFoundException unused) {
        } catch (Exception e2) {
            t.a(f23055a, "Error while parsing small icon meta data", e2);
        }
        return null;
    }

    public static void a(Context context, Bundle bundle) throws j {
        if (bundle == null || bundle.isEmpty()) {
            return;
        }
        try {
            BatchPushPayload batchPushPayloadPayloadFromReceiverExtras = BatchPushPayload.payloadFromReceiverExtras(bundle);
            if (batchPushPayloadPayloadFromReceiverExtras == null) {
                return;
            }
            t.b(f23055a, "Batch push received with google message_id: " + bundle.getString(f23059f));
            if (batchPushPayloadPayloadFromReceiverExtras.a() == null) {
                return;
            }
            com.batch.android.v0.j jVarA = y.a();
            if (v.a().c(context)) {
                t.b(f23055a, "Ignoring push as Batch has been Opted Out from");
            } else if (jVarA.t()) {
                t.c(f23055a, "Ignoring push cause manual display is activated");
            } else {
                a(context, bundle, batchPushPayloadPayloadFromReceiverExtras, jVarA.o());
            }
        } catch (BatchPushPayload.ParsingException | IllegalArgumentException unused) {
        }
    }

    private static boolean a(Context context, Bundle bundle, r rVar) {
        if (!com.batch.android.n.t.a().p() || !com.batch.android.n.t.a().a(true) || !com.batch.android.n.t.a().m()) {
            return false;
        }
        if (!com.batch.android.n.z.a().h()) {
            t.c(f23055a, "Application is in background, not sending landing");
            return false;
        }
        if (rVar.k() == null) {
            return false;
        }
        try {
            if (com.batch.android.i0.b.e(rVar.p()).a() && (context = com.batch.android.n.z.a().b()) == null) {
                return false;
            }
            com.batch.android.n.t.a().a(context, (BatchMessage) new BatchLandingMessage(bundle, rVar.k()), false);
            return true;
        } catch (com.batch.android.i0.c e2) {
            t.c(f23055a, "Error while parsing the messaging payload. Not forwarding to foreground.", e2);
            return false;
        }
    }

    private static Bitmap a(Context context, Bitmap bitmap) {
        Resources resources = context.getResources();
        return Bitmap.createScaledBitmap(bitmap, (int) resources.getDimension(android.R.dimen.notification_large_icon_width), (int) resources.getDimension(android.R.dimen.notification_large_icon_height), false);
    }

    private static int a(Context context) {
        TypedValue typedValue = new TypedValue();
        Resources.Theme theme = new ContextThemeWrapper(context, context.getApplicationInfo().theme).getTheme();
        if (theme == null || !theme.resolveAttribute(android.R.attr.colorPrimary, typedValue, true)) {
            return -1;
        }
        return typedValue.data;
    }

    private static void a(Context context, com.batch.android.e1.c cVar, NotificationCompat$Builder notificationCompat$Builder) {
        String packageName = context.getPackageName();
        try {
            RemoteViews remoteViewsB = cVar.b(packageName);
            if (remoteViewsB != null) {
                notificationCompat$Builder.G = remoteViewsB;
            }
            RemoteViews remoteViewsA = cVar.a(packageName);
            if (remoteViewsA != null) {
                notificationCompat$Builder.H = remoteViewsA;
            }
        } catch (Exception e2) {
            t.c(f23055a, "Tried to instantiate remote views for format, but failed", e2);
        }
        NotificationCompat$Style notificationCompat$StyleA = cVar.a();
        if (notificationCompat$StyleA != null) {
            notificationCompat$Builder.i(notificationCompat$StyleA);
        }
        cVar.a(notificationCompat$Builder);
    }
}
