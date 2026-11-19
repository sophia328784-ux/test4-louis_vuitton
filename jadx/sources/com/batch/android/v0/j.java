package com.batch.android.v0;

import android.app.ActivityManager;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.batch.android.Batch;
import com.batch.android.BatchActionActivity;
import com.batch.android.BatchNotificationInterceptor;
import com.batch.android.BatchPermissionListener;
import com.batch.android.BatchPushPayload;
import com.batch.android.BatchPushRegistration;
import com.batch.android.BatchPushService;
import com.batch.android.PushRegistrationProvider;
import com.batch.android.PushRegistrationProviderAvailabilityException;
import com.batch.android.a.m;
import com.batch.android.e.a0;
import com.batch.android.e.e0;
import com.batch.android.e.l0;
import com.batch.android.e.r;
import com.batch.android.e.t;
import com.batch.android.e.x;
import com.batch.android.e.z;
import com.batch.android.n.d0;
import com.batch.android.n.w;
import com.google.firebase.messaging.RemoteMessage;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import defpackage.gy0;
import defpackage.hw0;
import defpackage.md;
import defpackage.r81;
import defpackage.u81;
import defpackage.y81;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public class j extends b {
    public static final String m = "Push";
    public static final int n = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Bitmap f24124c;
    private String d;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private EnumSet<e0> f24127h;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private PushRegistrationProvider f24130k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f24122a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f24123b = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f24125e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Uri f24126f = null;
    private boolean g = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Integer f24128i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private BatchNotificationInterceptor f24129j = null;
    private boolean l = false;

    public class a implements l0 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PushRegistrationProvider f24131b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Context f24132c;

        public a(PushRegistrationProvider pushRegistrationProvider, Context context) {
            this.f24131b = pushRegistrationProvider;
            this.f24132c = context;
        }

        @Override // com.batch.android.e.l0
        public String a() {
            return "push_registration";
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f24131b.checkLibraryAvailability();
                String registration = this.f24131b.getRegistration();
                if (registration == null || registration.isEmpty()) {
                    t.a(j.m, "\"" + this.f24131b.getShortname() + "\" did not return a registration.");
                    return;
                }
                int length = registration.length();
                PushRegistrationProvider pushRegistrationProvider = this.f24131b;
                if (length <= 4096) {
                    j.this.a(this.f24132c, new BatchPushRegistration(pushRegistrationProvider.getShortname(), registration, this.f24131b.getSenderID(), this.f24131b.getGCPProjectID()));
                } else {
                    t.a(j.m, "\"" + pushRegistrationProvider.getShortname() + "\" did return a Registration ID/Push token longer than 4096, ignoring it.");
                }
            } catch (PushRegistrationProviderAvailabilityException e2) {
                t.a(j.m, "Provider \"" + this.f24131b.getShortname() + "\" could not register for push: " + e2.getMessage());
            }
        }
    }

    private j() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(BatchPushRegistration batchPushRegistration, Context context, com.batch.android.j1.g gVar) {
        if (gVar != com.batch.android.j1.g.OFF) {
            a(batchPushRegistration);
            a0 a0VarA = w.a(context);
            if (a0VarA == null) {
                t.c(m, "Could not save push token in parameters.");
                return;
            }
            String strA = a0VarA.a(z.d1);
            String strA2 = a0VarA.a(z.e1);
            String strA3 = a0VarA.a(z.f1);
            String strA4 = a0VarA.a(z.g1);
            a0VarA.a(z.h1, k(), true);
            a0VarA.a(z.e1, batchPushRegistration.getProvider(), true);
            a0VarA.a(z.d1, batchPushRegistration.getToken(), true);
            if (batchPushRegistration.getSenderID() != null) {
                a0VarA.a(z.f1, batchPushRegistration.getSenderID(), true);
            } else {
                a0VarA.b(z.f1);
            }
            if (batchPushRegistration.getGcpProjectID() != null) {
                a0VarA.a(z.g1, batchPushRegistration.getGcpProjectID(), true);
            } else {
                a0VarA.b(z.g1);
            }
            if (batchPushRegistration.getToken().equals(strA) && batchPushRegistration.getProvider().equals(strA2) && TextUtils.equals(batchPushRegistration.getSenderID(), strA3) && TextUtils.equals(batchPushRegistration.getGcpProjectID(), strA4)) {
                return;
            }
            m.a(com.batch.android.n.z.a(), batchPushRegistration);
        }
    }

    public static boolean c(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService(ActionFloatingViewItem.f37018a);
        if (activityManager != null) {
            return activityManager.isBackgroundRestricted();
        }
        return false;
    }

    private String k() {
        try {
            return String.valueOf(com.batch.android.n.z.a().c().getPackageManager().getPackageInfo(com.batch.android.n.z.a().c().getPackageName(), 0).versionCode);
        } catch (Exception e2) {
            t.c(m, "Error while getting app version", e2);
            return "";
        }
    }

    private synchronized PushRegistrationProvider q() {
        try {
            if (!this.l) {
                Context contextC = com.batch.android.n.z.a().c();
                if (contextC != null) {
                    this.l = true;
                    PushRegistrationProvider pushRegistrationProviderB = new com.batch.android.d1.c(contextC).b();
                    this.f24130k = pushRegistrationProviderB;
                    if (pushRegistrationProviderB == null) {
                        t.a(m, "Could not register for notifications.");
                    }
                } else {
                    t.c(m, "No context set, cannot try to instantiate a registration provider. Will retry.");
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f24130k;
    }

    public static boolean s() {
        try {
            return com.batch.android.n.z.a().c().getPackageManager().queryIntentServices(new Intent(com.batch.android.n.z.a().c(), (Class<?>) BatchPushService.class), 65536).size() > 0;
        } catch (Exception e2) {
            t.c(m, "Error while retrieving Push service", e2);
            return false;
        }
    }

    public static j u() {
        return new j();
    }

    public void b(boolean z) {
        try {
            EnumSet<e0> enumSetOf = z ? EnumSet.of(e0.ALERT) : EnumSet.of(e0.NONE);
            AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            int iA = e0.a(enumSetOf);
            t.c(m, "Setting notification type to " + iA);
            com.batch.android.n.z.a().a(new hw0(iA, atomicBoolean, 2));
            if (atomicBoolean.get()) {
                return;
            }
            this.f24127h = enumSetOf;
        } catch (Exception e2) {
            t.c(m, "Error while storing notification types", e2);
        }
    }

    public boolean d(Context context) {
        EnumSet<e0> enumSet = this.f24127h;
        String string = enumSet != null ? Integer.toString(e0.a(enumSet)) : w.a(context).a(z.i1);
        if (TextUtils.isEmpty(string)) {
            return true;
        }
        try {
            return e0.a(Integer.parseInt(string)).contains(e0.ALERT);
        } catch (Exception e2) {
            t.c(m, "Error while reading notification type", e2);
            return true;
        }
    }

    @Override // com.batch.android.v0.b
    public void e() {
        if (this.f24127h != null) {
            com.batch.android.n.z.a().a(new u81(this, 1));
        }
        if (this.f24122a) {
            this.f24122a = false;
            PushRegistrationProvider pushRegistrationProviderQ = q();
            if (pushRegistrationProviderQ != null) {
                a(pushRegistrationProviderQ);
            }
        }
    }

    @Override // com.batch.android.v0.b
    public String g() {
        return "push";
    }

    @Override // com.batch.android.v0.b
    public int h() {
        return this.d != null ? 1 : 2;
    }

    public void i() {
        com.batch.android.n.z.a().a(new r81(22));
    }

    public int n() {
        return this.f24125e;
    }

    public BatchNotificationInterceptor o() {
        return this.f24129j;
    }

    public BatchPushRegistration p() {
        AtomicReference atomicReference = new AtomicReference();
        com.batch.android.n.z.a().a((com.batch.android.j1.h) new gy0(this, atomicReference, 14));
        return (BatchPushRegistration) atomicReference.get();
    }

    public Uri r() {
        return this.f24126f;
    }

    public boolean t() {
        return this.g;
    }

    public void v() {
        PushRegistrationProvider pushRegistrationProviderQ = q();
        if (pushRegistrationProviderQ != null) {
            a(pushRegistrationProviderQ);
        }
    }

    public Integer j() {
        return this.f24128i;
    }

    public Bitmap l() {
        return this.f24124c;
    }

    public int m() {
        return this.f24123b;
    }

    public BatchPushRegistration b(Context context) {
        try {
            a0 a0VarA = w.a(context);
            String strA = a0VarA.a(z.d1);
            if (strA == null) {
                return null;
            }
            String strA2 = a0VarA.a(z.e1);
            if (TextUtils.isEmpty(strA2)) {
                strA2 = "UNKNOWN";
            }
            return new BatchPushRegistration(strA2, strA, a0VarA.a(z.f1), a0VarA.a(z.g1));
        } catch (Exception e2) {
            t.c(m, "Error while retrieving registration id", e2);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(com.batch.android.j1.g gVar) {
        if (gVar == com.batch.android.j1.g.OFF) {
            t.e(m, "Call to dismissBatchNotifications made while SDK is not started, please call this method only after Batch.onStart.");
            return;
        }
        try {
            ((NotificationManager) com.batch.android.n.z.a().c().getSystemService("notification")).cancelAll();
        } catch (Exception e2) {
            t.a(m, "Error while dismissing notifications", e2);
        }
    }

    public void b(int i2) {
        this.f24125e = i2;
    }

    public boolean b(Context context, Intent intent) {
        try {
            return t() && a(intent);
        } catch (Exception e2) {
            t.c(m, "Error while evaluating if should display push", e2);
            return true;
        }
    }

    public boolean b(Context context, RemoteMessage remoteMessage) {
        try {
            return t() && a(remoteMessage);
        } catch (Exception e2) {
            t.c(m, "Error while evaluating if should display push", e2);
            return true;
        }
    }

    public void a(Context context, RemoteMessage remoteMessage) {
    }

    public void a(int i2) {
        this.f24123b = i2;
    }

    public void a(Integer num) {
        this.f24128i = num;
    }

    public void a(Bitmap bitmap) {
        this.f24124c = bitmap;
    }

    public void a(String str) {
        this.d = str;
        this.f24122a = true;
    }

    public void a(BatchNotificationInterceptor batchNotificationInterceptor) {
        this.f24129j = batchNotificationInterceptor;
    }

    public boolean a(Intent intent) {
        return (intent == null || intent.getExtras() == null || intent.getExtras().getString(r.z) == null) ? false : true;
    }

    public boolean a(RemoteMessage remoteMessage) {
        if (remoteMessage == null) {
            return false;
        }
        HashMap mapW1 = remoteMessage.W1();
        return (mapW1.size() == 0 || mapW1.get(r.z) == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(AtomicReference atomicReference, com.batch.android.j1.g gVar) {
        Context contextC;
        if (gVar == com.batch.android.j1.g.OFF || (contextC = com.batch.android.n.z.a().c()) == null) {
            return;
        }
        atomicReference.set(b(contextC));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(int i2, AtomicBoolean atomicBoolean, com.batch.android.j1.g gVar) {
        if (gVar != com.batch.android.j1.g.OFF) {
            w.a(com.batch.android.n.z.a().c()).a(z.i1, Integer.toString(i2), true);
            atomicBoolean.set(true);
        }
    }

    public void a(Uri uri) {
        this.f24126f = uri;
    }

    public void a(boolean z) {
        this.g = z;
    }

    public void a(Intent intent, Intent intent2) {
        try {
            a(intent.getExtras(), intent2);
        } catch (Exception e2) {
            t.c(m, "Error while appending batch data to intent", e2);
            t.a(m, "Error while appending Batch data to open intent : " + e2.getLocalizedMessage());
        }
    }

    public void a(Bundle bundle, Intent intent) {
        try {
            r rVarA = r.a(bundle);
            if (rVarA == null) {
                t.a(m, "Error while appending Batch data to open intent : the pushIntentExtras seems to not be a Batch Push intent extras. Aborting");
            } else {
                com.batch.android.h.a(bundle, rVarA, intent);
            }
        } catch (Exception e2) {
            t.c(m, "Error while appending batch data to intent", e2);
            t.a(m, "Error while appending Batch data to open intent : " + e2.getLocalizedMessage());
        }
    }

    public void a(RemoteMessage remoteMessage, Intent intent) {
        Bundle bundleA = com.batch.android.d.a(remoteMessage);
        if (bundleA == null) {
            t.a(m, "Could not read data from Firebase message");
        } else {
            a(bundleA, intent);
        }
    }

    public PendingIntent a(Context context, Intent intent, Bundle bundle) {
        Intent intent2 = new Intent(intent);
        intent2.setAction("batch_" + Long.toString(System.currentTimeMillis()));
        Batch.Push.appendBatchData(bundle, intent2);
        PushAutoTrackHelper.hookIntentGetActivity(context, 0, intent2, 201326592);
        PendingIntent activity = PendingIntent.getActivity(context, 0, intent2, 201326592);
        PushAutoTrackHelper.hookPendingIntentGetActivity(activity, context, 0, intent2, 201326592);
        return activity;
    }

    public PendingIntent a(Context context, Intent intent, RemoteMessage remoteMessage) {
        Bundle bundleA = com.batch.android.d.a(remoteMessage);
        if (bundleA == null) {
            bundleA = new Bundle();
        }
        return a(context, intent, bundleA);
    }

    public PendingIntent a(Context context, String str, Bundle bundle) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Intent intent = new Intent(context, (Class<?>) BatchActionActivity.class);
        intent.addFlags(268435456);
        intent.putExtra(BatchActionActivity.EXTRA_DEEPLINK_KEY, str);
        intent.setAction("batch_" + Long.toString(System.currentTimeMillis()));
        return a(context, intent, bundle);
    }

    public PendingIntent a(Context context, String str, RemoteMessage remoteMessage) {
        Bundle bundleA = com.batch.android.d.a(remoteMessage);
        if (bundleA == null) {
            bundleA = new Bundle();
        }
        return a(context, str, bundleA);
    }

    public void a(Context context, Intent intent, BatchNotificationInterceptor batchNotificationInterceptor, boolean z) {
        if (!z) {
            try {
                if (!b(context, intent)) {
                    return;
                }
            } catch (Exception e2) {
                t.c(m, "An error occured while handling push notification", e2);
                t.a(m, "An error occured during display : " + e2.getLocalizedMessage());
                return;
            }
        }
        if (batchNotificationInterceptor == null) {
            batchNotificationInterceptor = o();
        }
        com.batch.android.e.a(context, intent.getExtras(), BatchPushPayload.payloadFromReceiverIntent(intent), batchNotificationInterceptor);
    }

    /* JADX WARN: Failed to analyze thrown exceptions
    java.util.ConcurrentModificationException
    	at java.base/java.util.ArrayList$Itr.checkForComodification(ArrayList.java:1043)
    	at java.base/java.util.ArrayList$Itr.next(ArrayList.java:997)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:130)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:178)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:131)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
     */
    public void a(Context context, RemoteMessage remoteMessage, BatchNotificationInterceptor batchNotificationInterceptor) {
        try {
            if (b(context, remoteMessage)) {
                if (batchNotificationInterceptor == null) {
                    batchNotificationInterceptor = o();
                }
                Bundle bundleA = com.batch.android.d.a(remoteMessage);
                if (bundleA == null) {
                    bundleA = new Bundle();
                }
                com.batch.android.e.a(context, bundleA, BatchPushPayload.payloadFromReceiverExtras(bundleA), batchNotificationInterceptor);
            }
        } catch (Exception e2) {
            t.c("An error occured while handling push notification", e2);
            t.a(m, "An error occurred during display : " + e2.getLocalizedMessage());
        }
    }

    private void a(PushRegistrationProvider pushRegistrationProvider) {
        Context contextC = com.batch.android.n.z.a().c();
        d0.a(contextC).a(new a(pushRegistrationProvider, contextC));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, BatchPushRegistration batchPushRegistration) {
        Context applicationContext = context.getApplicationContext();
        Intent intent = new Intent(Batch.ACTION_REGISTRATION_IDENTIFIER_OBTAINED);
        intent.putExtra(Batch.EXTRA_REGISTRATION_PROVIDER_NAME, batchPushRegistration.getProvider());
        intent.putExtra(Batch.EXTRA_REGISTRATION_IDENTIFIER, batchPushRegistration.getToken());
        intent.putExtra(Batch.EXTRA_REGISTRATION_SENDER_ID, batchPushRegistration.getSenderID());
        intent.setPackage(applicationContext.getPackageName());
        applicationContext.sendBroadcast(intent, Batch.getBroadcastPermissionName(applicationContext));
        com.batch.android.n.z.a().a(new y81(this, batchPushRegistration, applicationContext, 20));
    }

    public void a(Context context, Intent intent) {
    }

    private void a(BatchPushRegistration batchPushRegistration) {
        t.b(m, "Registration ID/Push Token (" + batchPushRegistration.getProvider() + "): " + batchPushRegistration.getToken());
    }

    public void a(Context context, BatchPermissionListener batchPermissionListener) {
        if (context != null) {
            new x(batchPermissionListener).a(context, false, null);
        } else {
            md.n("Context can't be null");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.batch.android.j1.g gVar) {
        try {
            w.a(com.batch.android.n.z.a().c()).a(z.i1, Integer.toString(e0.a(this.f24127h)), true);
            this.f24127h = null;
        } catch (Exception e2) {
            t.c(m, "Error while saving temp notif type", e2);
        }
    }
}
