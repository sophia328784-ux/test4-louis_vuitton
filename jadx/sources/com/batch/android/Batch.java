package com.batch.android;

import android.app.Activity;
import android.app.Application;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.location.Location;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import com.batch.android.Batch;
import com.batch.android.debug.BatchDebugActivity;
import com.batch.android.e.c0;
import com.batch.android.e.k0;
import com.batch.android.e.r;
import com.batch.android.e.w;
import com.batch.android.e.z;
import com.batch.android.j1.b;
import com.batch.android.j1.g;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import com.batch.android.n.d0;
import com.batch.android.n.e0;
import com.batch.android.n.f0;
import com.batch.android.n.t;
import com.batch.android.n.v;
import com.batch.android.n.x;
import com.batch.android.n.y;
import com.google.firebase.messaging.RemoteMessage;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import defpackage.hd;
import defpackage.ld;
import defpackage.md;
import defpackage.s3;
import defpackage.t7;
import java.util.ArrayList;
import java.util.Date;
import java.util.EnumSet;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class Batch {
    public static final String ACTION_REGISTRATION_IDENTIFIER_OBTAINED = "com.batch.android.intent.action.push.REGISTRATION_IDENTIFIER_OBTAINED";
    public static final String BROADCAST_PERMISSION_SUFFIX = ".batch.permission.INTERNAL_BROADCAST";
    public static final String EXTRA_REGISTRATION_IDENTIFIER = "registration_id";
    public static final String EXTRA_REGISTRATION_PROVIDER_NAME = "provider_name";
    public static final String EXTRA_REGISTRATION_SENDER_ID = "sender_id";
    public static final String NOTIFICATION_TAG = "batch";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static g f22715a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static BroadcastReceiver f22716b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Intent f22717c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f22718e;
    private static final com.batch.android.e.l d = new com.batch.android.e.l();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f22719f = false;
    private static final com.batch.android.v0.b g = com.batch.android.n.c.a();

    public static final class Actions {
        private Actions() {
        }

        public static void addDrawableAlias(String str, int i2) {
            com.batch.android.n.a.a().a(str, i2);
        }

        public static boolean performAction(Context context, String str, JSONObject jSONObject) {
            return com.batch.android.n.a.a().a(context, str, jSONObject);
        }

        public static void register(UserAction userAction) {
            com.batch.android.n.a.a().a(userAction);
        }

        public static void setDeeplinkInterceptor(BatchDeeplinkInterceptor batchDeeplinkInterceptor) {
            com.batch.android.n.a.a().a(batchDeeplinkInterceptor);
        }

        public static void unregister(String str) {
            com.batch.android.n.a.a().b(str);
        }
    }

    public static final class Debug {
        private Debug() {
        }

        public static void startDebugActivity(Context context) {
            context.startActivity(new Intent(context, (Class<?>) BatchDebugActivity.class));
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static final class EventDispatcher {

        /* JADX INFO: loaded from: classes.dex */
        public interface Payload {
            String getCustomValue(String str);

            String getDeeplink();

            BatchMessage getMessagingPayload();

            BatchPushPayload getPushPayload();

            String getTrackingId();

            String getWebViewAnalyticsID();

            boolean isPositiveAction();
        }

        /* JADX INFO: loaded from: classes.dex */
        public enum Type {
            NOTIFICATION_DISPLAY,
            NOTIFICATION_DISMISS,
            NOTIFICATION_OPEN,
            MESSAGING_SHOW,
            MESSAGING_CLOSE,
            MESSAGING_AUTO_CLOSE,
            MESSAGING_CLOSE_ERROR,
            MESSAGING_CLICK,
            MESSAGING_WEBVIEW_CLICK;

            public boolean isMessagingEvent() {
                return !isNotificationEvent();
            }

            public boolean isNotificationEvent() {
                return this == NOTIFICATION_OPEN || this == NOTIFICATION_DISPLAY || this == NOTIFICATION_DISMISS;
            }
        }

        private EventDispatcher() {
        }

        public static void addDispatcher(BatchEventDispatcher batchEventDispatcher) {
            com.batch.android.n.i.a().a(batchEventDispatcher);
        }

        public static boolean removeDispatcher(BatchEventDispatcher batchEventDispatcher) {
            return com.batch.android.n.i.a().b(batchEventDispatcher);
        }
    }

    public static final class Messaging {
        public static final String GLOBAL_TAP_ACTION_INDEX = "mepCtaIndex:-1";

        public static class DisplayHint {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            a f22721a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            View f22722b;

            private DisplayHint(View view, a aVar) {
                this.f22721a = aVar;
                this.f22722b = view;
            }

            public static DisplayHint embed(FrameLayout frameLayout) {
                if (frameLayout != null) {
                    return new DisplayHint(frameLayout, a.EMBED);
                }
                md.n("layout cannot be null");
                return null;
            }

            public static DisplayHint findUsingView(View view) {
                if (view != null) {
                    return new DisplayHint(view, a.TRANSVERSE_HIERARCHY);
                }
                md.n("view cannot be null");
                return null;
            }
        }

        public interface DisplayHintProvider {
            DisplayHint getBatchMessageDisplayHint(BatchMessage batchMessage);
        }

        /* JADX INFO: loaded from: classes2.dex */
        public interface InAppInterceptor {
            boolean onBatchInAppMessageReady(BatchInAppMessage batchInAppMessage);
        }

        /* JADX INFO: loaded from: classes2.dex */
        public interface LifecycleListener {

            /* JADX INFO: loaded from: classes.dex */
            public enum MessagingCloseReason {
                Auto,
                User,
                Action,
                Error
            }

            default void onBatchMessageActionTriggered(String str, String str2, BatchMessageAction batchMessageAction) {
            }

            void onBatchMessageClosed(String str, MessagingCloseReason messagingCloseReason);

            void onBatchMessageShown(String str);
        }

        public enum a {
            TRANSVERSE_HIERARCHY,
            EMBED
        }

        private Messaging() {
        }

        public static boolean hasPendingMessage() {
            return t.a().k();
        }

        public static boolean isDoNotDisturbEnabled() {
            return t.a().l();
        }

        public static BatchMessagingView loadMessagingView(Context context, BatchMessage batchMessage) throws BatchMessagingException {
            try {
                JSONObject jSONObjectC = batchMessage.c();
                com.batch.android.v0.g gVarA = t.a();
                return com.batch.android.i0.b.f(jSONObjectC).a() ? new BatchMessagingView(BatchMessagingView.Kind.View, gVarA.a(context, batchMessage, jSONObjectC)) : new BatchMessagingView(BatchMessagingView.Kind.Fragment, gVarA.b(context, batchMessage, jSONObjectC));
            } catch (com.batch.android.i0.c unused) {
                throw new BatchMessagingException("Could not read base payload from message");
            }
        }

        public static BatchMessage popPendingMessage() {
            return t.a().n();
        }

        public static void setAutomaticMode(boolean z) {
            t.a().b(z);
        }

        public static void setDoNotDisturbEnabled(boolean z) {
            t.a().c(z);
        }

        public static void setInAppInterceptor(InAppInterceptor inAppInterceptor) {
            t.a().a(inAppInterceptor);
        }

        public static void setLifecycleListener(LifecycleListener lifecycleListener) {
            t.a().a(lifecycleListener);
        }

        public static void setShowForegroundLandings(boolean z) {
            t.a().d(z);
        }

        public static void setTypefaceOverride(Typeface typeface, Typeface typeface2) {
            t.a().a(typeface, typeface2);
        }

        public static void show(Context context, BatchMessage batchMessage) {
            if (context == null) {
                md.n("context can't be null");
            } else if (batchMessage != null) {
                t.a().a(context, batchMessage, true);
            } else {
                md.n("message can't be null");
            }
        }
    }

    public static final class User {
        private User() {
        }

        public static void clearInstallationData() {
            f0.a().i();
        }

        public static void fetchAttributes(Context context, BatchAttributesFetchListener batchAttributesFetchListener) {
            l.a(context, batchAttributesFetchListener, true);
        }

        public static void fetchTagCollections(Context context, BatchTagCollectionsFetchListener batchTagCollectionsFetchListener) {
            l.a(context, batchTagCollectionsFetchListener, true);
        }

        public static String getIdentifier(Context context) {
            if (context != null) {
                return f0.a().b(context);
            }
            md.n("Context cannot be null");
            return null;
        }

        public static String getInstallationID() {
            g gVar = Batch.f22715a;
            if (gVar != null) {
                return gVar.b();
            }
            return null;
        }

        public static String getLanguage(Context context) {
            if (context != null) {
                return f0.a().c(context);
            }
            md.n("Context cannot be null");
            return null;
        }

        public static String getRegion(Context context) {
            if (context != null) {
                return f0.a().d(context);
            }
            md.n("Context cannot be null");
            return null;
        }
    }

    public static class b extends BroadcastReceiver {
        private b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action;
            PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
            if (intent == null || (action = intent.getAction()) == null) {
                return;
            }
            if (action.equals(k0.d)) {
                Batch.g();
            } else if (action.equals(com.batch.android.v0.h.d)) {
                Batch.d();
            }
        }
    }

    private Batch() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ com.batch.android.j1.g a(com.batch.android.j1.e eVar, boolean z, Context context, boolean z2, AtomicBoolean atomicBoolean, StringBuilder sb, com.batch.android.j1.g gVar, com.batch.android.j1.b bVar) {
        AtomicBoolean atomicBoolean2;
        h hVar;
        boolean z3;
        JSONObject jSONObject = null;
        Object[] objArr = 0;
        if (bVar == null) {
            com.batch.android.e.t.a("You must set the configuration before starting Batch. Please call setConfig on onCreate of your Application subclass");
            return null;
        }
        Long lK = eVar.k();
        Date dateD = eVar.d();
        boolean z4 = (z && dateD == null) || ((lK == null || lK.longValue() <= new Date().getTime() - 30000) && !(lK == null && gVar == com.batch.android.j1.g.READY && (dateD == null || dateD.getTime() > new Date().getTime() - 82800000)));
        if (lK != null && z4) {
            e0.a().a(com.batch.android.o.g.f23855b, lK.longValue());
        }
        com.batch.android.e.t.c("onStart called on state " + gVar + ", should start : " + z4);
        if (context == null) {
            com.batch.android.e.t.a("Batch start called with null context, aborting start");
            return null;
        }
        if (v.a().c(context)) {
            if (!f22719f) {
                f22719f = true;
                com.batch.android.e.t.a("Batch was opted out from: refusing to start.");
            }
            return null;
        }
        if (z2) {
            eVar.g();
        }
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            if (com.batch.android.e.l.a(activity)) {
                com.batch.android.e.t.c("Started activity has exclusion meta-data, aborting start.");
                return null;
            }
            try {
                if (gVar == com.batch.android.j1.g.OFF || eVar.b() == null) {
                    z3 = true;
                } else if (activity.getWindow().isFloating() || (activity instanceof MessagingActivity)) {
                    z3 = false;
                } else {
                    TypedArray typedArrayObtainStyledAttributes = activity.getTheme().obtainStyledAttributes(new int[]{android.R.attr.windowIsTranslucent});
                    z3 = !typedArrayObtainStyledAttributes.getBoolean(0, false);
                    try {
                        typedArrayObtainStyledAttributes.recycle();
                    } catch (Exception e2) {
                        e = e2;
                        com.batch.android.e.t.c("Error while trying to check if the current activity is transparent/floating. Reverting to default behaviour.", e);
                    }
                }
            } catch (Exception e3) {
                e = e3;
                z3 = true;
            }
            if (z3) {
                eVar.a(activity);
            }
            ArrayList arrayList = new ArrayList();
            hVar = new h(activity);
            if (f22717c != null) {
                com.batch.android.e.t.c("Adding intent from onNewIntent");
                arrayList.add(new h(f22717c));
            }
            arrayList.add(hVar);
            com.batch.android.e.l lVar = d;
            if (lVar.a()) {
                com.batch.android.e.t.c("Adding intent from an activity with exclusion meta-data");
                arrayList.add(new h(lVar.b()));
            }
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                h hVar2 = (h) obj;
                if (hVar2.g()) {
                    hVar = hVar2;
                    break;
                }
            }
            if (hVar.g()) {
                com.batch.android.e.t.c("Activity has a push payload");
            } else {
                com.batch.android.e.t.c("Activity does not have a push payload");
            }
            atomicBoolean2 = atomicBoolean;
            atomicBoolean2.set(hVar.a());
            if (atomicBoolean2.get()) {
                String strE = hVar.e();
                if (strE != null) {
                    sb.append(strE);
                }
                z4 = true;
            }
            if (t.a().m() && hVar.f()) {
                if (hVar.h()) {
                    com.batch.android.e.t.c("Trying to display an already shown landing message");
                } else {
                    BatchMessage batchMessageB = hVar.b();
                    if (batchMessageB != null) {
                        hVar.j();
                        t.a().a(context, batchMessageB, false);
                    }
                }
            }
            w.b(context);
            f22717c = null;
        } else {
            atomicBoolean2 = atomicBoolean;
            hVar = null;
        }
        if (gVar == com.batch.android.j1.g.READY && !z4) {
            return null;
        }
        Context applicationContext = context.getApplicationContext();
        if (gVar == com.batch.android.j1.g.OFF) {
            eVar.a(applicationContext);
            com.batch.android.n.o.a(applicationContext);
            g.a(applicationContext);
            b(applicationContext);
            a(applicationContext);
            if (!com.batch.android.e.o.a("android.permission.INTERNET", applicationContext)) {
                com.batch.android.e.t.a("Batch needs android.permission.INTERNET, please update your manifest, aborting start");
                return null;
            }
            if (bVar.b() == null) {
                com.batch.android.e.t.a("API key provided in Batch.start is null, aborting start");
                return null;
            }
            if (f22715a == null) {
                f22715a = new g(applicationContext);
            }
            f22718e = UUID.randomUUID().toString();
            if (f22716b == null) {
                f22716b = new b();
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction(k0.d);
                intentFilter.addAction(com.batch.android.v0.h.d);
                com.batch.android.n.o.a(applicationContext).a(f22716b, intentFilter);
            }
            v.a().e(context);
        }
        if (applicationContext instanceof Application) {
            Application application = (Application) applicationContext;
            eVar.a(application, true);
            eVar.a(application);
        } else {
            com.batch.android.e.t.a("Context isn't an Application, could not register the session manager.");
        }
        g.e();
        com.batch.android.n.i.a().b(context);
        try {
            JSONObject jSONObject2 = new JSONObject();
            if (z) {
                eVar.n();
            } else {
                jSONObject2.put("silent", true);
            }
            jSONObject2.putOpt("dispatchers", com.batch.android.n.i.a().i());
            if (jSONObject2.length() != 0) {
                jSONObject = jSONObject2;
            }
            e0.a().a(com.batch.android.o.g.f23854a, jSONObject);
        } catch (JSONException e4) {
            com.batch.android.e.t.c("Could not track _START", e4);
        }
        if (hVar != null && atomicBoolean2.get()) {
            if (hVar.i()) {
                com.batch.android.e.t.c("Already tracked open");
            } else {
                r rVarD = hVar.d();
                e0.a().a(com.batch.android.o.g.f23856c, rVarD != null ? new JSONObject(rVarD.h()) : new JSONObject());
                hVar.k();
                try {
                    Bundle bundleC = hVar.c();
                    if (bundleC != null) {
                        com.batch.android.n.i.a().a(EventDispatcher.Type.NOTIFICATION_OPEN, new com.batch.android.p.c(BatchPushPayload.payloadFromReceiverExtras(bundleC), true));
                    } else {
                        com.batch.android.e.t.c("Could not get the push bundle.");
                    }
                } catch (BatchPushPayload.ParsingException | IllegalArgumentException e5) {
                    com.batch.android.e.t.c("Could not dispatch NOTIFICATION_OPEN", e5);
                }
                com.batch.android.e.t.b("Activity was opened from a push");
            }
        }
        return com.batch.android.j1.g.READY;
    }

    private static void b(Context context) {
        try {
            String strA = com.batch.android.n.w.a(context).a(z.o1);
            if (strA == null) {
                com.batch.android.n.w.a(context).a(z.o1, "3.1.1", true);
            } else {
                if (strA.equals("3.1.1")) {
                    return;
                }
                a(context, strA, "3.1.1");
                com.batch.android.n.w.a(context).a(z.o1, "3.1.1", true);
                com.batch.android.n.w.a(context).a(z.p1, strA, true);
            }
        } catch (Exception e2) {
            com.batch.android.e.t.c("Error on updateVersionManagement", e2);
        }
    }

    public static void copyBatchExtras(Intent intent, Intent intent2) {
        h.a(intent, intent2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d() {
        com.batch.android.e.t.c(com.batch.android.v0.h.f24113c, "Clearing cached install data");
        f22715a = null;
    }

    public static void disableMigration(EnumSet<BatchMigration> enumSet) {
        if (enumSet == null) {
            com.batch.android.e.t.a("You cannot use disableMigration with null value.");
        } else {
            com.batch.android.n.z.a().b(new s3(enumSet, 7));
        }
    }

    private static void e() {
        if (com.batch.android.n.z.a().a(com.batch.android.j1.g.FINISHING, new md(1))) {
            g.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void g() {
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        com.batch.android.n.z.a().a(com.batch.android.j1.g.FINISHING, new s3(atomicBoolean, 8));
        com.batch.android.e.t.c("onWebserviceExecutorWorkFinished called, should stop " + atomicBoolean);
        if (atomicBoolean.get()) {
            e();
        }
    }

    public static String getBroadcastPermissionName(Context context) {
        return context.getPackageName() + BROADCAST_PERMISSION_SUFFIX;
    }

    public static String getSessionID() {
        StringBuilder sb = new StringBuilder();
        com.batch.android.n.z.a().a((com.batch.android.j1.h) new s3(sb, 9));
        if (sb.length() > 0) {
            return sb.toString();
        }
        return null;
    }

    public static boolean isOptedOut(Context context) {
        if (context != null) {
            return v.a().c(context);
        }
        md.n("Context can't be null");
        return false;
    }

    public static void onCreate(Activity activity) {
        if (activity != null && com.batch.android.e.l.a(activity)) {
            d.b(activity);
            com.batch.android.e.t.c("Created activity has exclusion meta-data");
        }
    }

    public static void onDestroy(Activity activity) {
        b(activity, false, true);
    }

    public static void onNewIntent(Activity activity, Intent intent) {
        f22717c = intent;
        a((Context) activity, false, true);
    }

    public static void onServiceCreate(Context context, boolean z) {
        a(context, true, z);
    }

    public static void onServiceDestroy(Context context) {
        b(context, true, true);
    }

    public static void onStart(Activity activity) {
        a((Context) activity, false, true);
    }

    public static void onStop(Activity activity) {
        b(activity, false, false);
    }

    public static void optIn(Context context) {
        if (context != null) {
            v.a().d(context);
        } else {
            md.n("Context can't be null");
        }
    }

    public static void optOut(Context context) {
        a(context, false, (BatchOptOutResultListener) null);
    }

    public static void optOutAndWipeData(Context context) {
        a(context, true, (BatchOptOutResultListener) null);
    }

    public static void setFindMyInstallationEnabled(boolean z) {
        com.batch.android.j.a.f23494e = z;
    }

    public static void setLoggerDelegate(LoggerDelegate loggerDelegate) {
        com.batch.android.n.z.a().b(new s3(loggerDelegate, 11));
    }

    public static void setLoggerLevel(LoggerLevel loggerLevel) {
        if (loggerLevel == null) {
            com.batch.android.e.t.a("You cannot setLoggerLevel with null value");
        } else {
            com.batch.android.n.z.a().b(new s3(loggerLevel, 10));
        }
    }

    public static void start(String str) {
        com.batch.android.n.z.a().b(new t7(str, 4));
    }

    public static void updateAutomaticDataCollection(BatchDataCollectionConfig.Editor editor) {
        com.batch.android.n.g.a().a(editor);
    }

    public static void copyBatchExtras(Bundle bundle, Bundle bundle2) {
        h.a(bundle, bundle2);
    }

    public static g f() {
        return f22715a;
    }

    public static void optOut(Context context, BatchOptOutResultListener batchOptOutResultListener) {
        a(context, false, batchOptOutResultListener);
    }

    public static void optOutAndWipeData(Context context, BatchOptOutResultListener batchOptOutResultListener) {
        a(context, true, batchOptOutResultListener);
    }

    public static final class Push {
        public static final String ALERT_KEY = "msg";
        public static final String BODY_KEY = "msg";
        public static final String PAYLOAD_KEY = "batchPushPayload";
        public static final String TITLE_KEY = "title";

        private Push() {
        }

        public static void appendBatchData(Intent intent, Intent intent2) {
            y.a().a(intent, intent2);
        }

        public static void dismissNotifications() {
            y.a().i();
        }

        public static void displayNotification(Context context, Intent intent) {
            y.a().a(context, intent, null, false);
        }

        public static BatchNotificationChannelsManager getChannelsManager() {
            return com.batch.android.n.d.a();
        }

        public static BatchPushRegistration getRegistration() {
            return y.a().p();
        }

        public static boolean isBatchPush(Intent intent) {
            return y.a().a(intent);
        }

        public static boolean isManualDisplayModeActivated() {
            return y.a().t();
        }

        public static PendingIntent makePendingIntent(Context context, Intent intent, Bundle bundle) {
            if (context == null) {
                md.n("Context cannot be null");
                return null;
            }
            if (intent == null) {
                md.n("Intent cannot be null");
                return null;
            }
            if (bundle != null) {
                return y.a().a(context, intent, bundle);
            }
            md.n("PushIntentExtras cannot be null");
            return null;
        }

        public static PendingIntent makePendingIntentForDeeplink(Context context, String str, Bundle bundle) {
            if (context == null) {
                md.n("Context cannot be null");
                return null;
            }
            if (str == null) {
                md.n("Deeplink cannot be null");
                return null;
            }
            if (bundle != null) {
                return y.a().a(context, str, bundle);
            }
            md.n("PushIntentExtras cannot be null");
            return null;
        }

        public static void onNotificationDisplayed(Context context, Intent intent) {
            y.a().a(context, intent);
        }

        public static void refreshRegistration() {
            y.a().v();
        }

        public static void requestNotificationPermission(Context context) {
            y.a().a(context, (BatchPermissionListener) null);
        }

        public static void setAdditionalIntentFlags(Integer num) {
            y.a().a(num);
        }

        public static void setLargeIcon(Bitmap bitmap) {
            y.a().a(bitmap);
        }

        public static void setManualDisplay(boolean z) {
            y.a().a(z);
        }

        public static void setNotificationInterceptor(BatchNotificationInterceptor batchNotificationInterceptor) {
            y.a().a(batchNotificationInterceptor);
        }

        public static void setNotificationsColor(int i2) {
            y.a().b(i2);
        }

        public static void setShowNotifications(boolean z) {
            y.a().b(z);
        }

        public static void setSmallIconResourceId(int i2) {
            y.a().a(i2);
        }

        public static void setSound(Uri uri) {
            y.a().a(uri);
        }

        public static boolean shouldDisplayPush(Context context, Intent intent) {
            return y.a().b(context, intent);
        }

        public static boolean shouldShowNotifications(Context context) {
            if (context != null) {
                return y.a().d(context);
            }
            md.n("Context cannot be null");
            return false;
        }

        public static void appendBatchData(Bundle bundle, Intent intent) {
            y.a().a(bundle, intent);
        }

        public static void onNotificationDisplayed(Context context, RemoteMessage remoteMessage) {
            y.a().a(context, remoteMessage);
        }

        public static void appendBatchData(RemoteMessage remoteMessage, Intent intent) {
            y.a().a(remoteMessage, intent);
        }

        public static boolean isBatchPush(RemoteMessage remoteMessage) {
            return y.a().a(remoteMessage);
        }

        public static void requestNotificationPermission(Context context, BatchPermissionListener batchPermissionListener) {
            y.a().a(context, batchPermissionListener);
        }

        public static boolean shouldDisplayPush(Context context, RemoteMessage remoteMessage) {
            return y.a().b(context, remoteMessage);
        }

        public static void displayNotification(Context context, Intent intent, boolean z) {
            y.a().a(context, intent, null, z);
        }

        public static void displayNotification(Context context, Intent intent, BatchNotificationInterceptor batchNotificationInterceptor) {
            y.a().a(context, intent, batchNotificationInterceptor, false);
        }

        public static void displayNotification(Context context, Intent intent, BatchNotificationInterceptor batchNotificationInterceptor, boolean z) {
            y.a().a(context, intent, batchNotificationInterceptor, z);
        }

        public static void displayNotification(Context context, RemoteMessage remoteMessage) {
            y.a().a(context, remoteMessage, (BatchNotificationInterceptor) null);
        }

        public static void displayNotification(Context context, RemoteMessage remoteMessage, BatchNotificationInterceptor batchNotificationInterceptor) {
            y.a().a(context, remoteMessage, batchNotificationInterceptor);
        }

        public static PendingIntent makePendingIntent(Context context, Intent intent, RemoteMessage remoteMessage) {
            if (context == null) {
                md.n("Context cannot be null");
                return null;
            }
            if (intent == null) {
                md.n("Intent cannot be null");
                return null;
            }
            if (remoteMessage != null) {
                return y.a().a(context, intent, remoteMessage);
            }
            md.n("RemoteMessage cannot be null");
            return null;
        }

        public static PendingIntent makePendingIntentForDeeplink(Context context, String str, RemoteMessage remoteMessage) {
            if (context == null) {
                md.n("Context cannot be null");
                return null;
            }
            if (str == null) {
                md.n("Deeplink cannot be null");
                return null;
            }
            if (remoteMessage != null) {
                return y.a().a(context, str, remoteMessage);
            }
            md.n("RemoteMessage cannot be null");
            return null;
        }
    }

    public static final class Profile {
        private Profile() {
        }

        public static BatchProfileAttributeEditor editor() {
            return new BatchProfileAttributeEditor();
        }

        public static void identify(String str) {
            x.a().a(str);
        }

        public static void trackEvent(String str) {
            x.a().a(str, (BatchEventAttributes) null);
        }

        public static void trackLocation(Location location) {
            f0.a().a(location);
        }

        public static void trackEvent(String str, BatchEventAttributes batchEventAttributes) {
            x.a().a(str, batchEventAttributes);
        }
    }

    public static final class Inbox {
        private Inbox() {
        }

        public static BatchInboxFetcher getFetcher(Context context) {
            if (context != null) {
                return new BatchInboxFetcher(com.batch.android.n.k.a(context, new g(context).b()));
            }
            md.n("Context cannot be null");
            return null;
        }

        public static BatchInboxFetcher getFetcher(Context context, String str, String str2) {
            if (context != null) {
                return new BatchInboxFetcher(com.batch.android.n.k.a(context, str, str2));
            }
            md.n("Context cannot be null");
            return null;
        }
    }

    private static void b(final Context context, final boolean z, final boolean z2) {
        if (com.batch.android.n.z.a().a(com.batch.android.j1.g.READY, new com.batch.android.j1.a() { // from class: jd
            @Override // com.batch.android.j1.a
            public final g a(g gVar, b bVar) {
                return Batch.a(z, context, z2, gVar, bVar);
            }
        })) {
            if (!d0.a(com.batch.android.n.z.a().c()).a()) {
                com.batch.android.e.t.c("onStop, should stop directly : true");
                e();
            } else {
                com.batch.android.e.t.c("onStop, should stop directly : false");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(EnumSet enumSet, com.batch.android.j1.b bVar) {
        bVar.a(Integer.valueOf(BatchMigration.toValue(enumSet)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(StringBuilder sb, com.batch.android.j1.g gVar) {
        String str = f22718e;
        if (str != null) {
            sb.append(str);
        }
    }

    private static void a(Context context, boolean z, final BatchOptOutResultListener batchOptOutResultListener) {
        if (context != null) {
            v.a().a(context, z, batchOptOutResultListener).a(new hd(context, 0)).a(new c0.b() { // from class: id
                @Override // com.batch.android.e.c0.b
                public final void a(Exception exc) {
                    Batch.a(batchOptOutResultListener, exc);
                }
            });
        } else {
            md.n("Context can't be null");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Context context, Void r2) {
        com.batch.android.j1.e eVarA = com.batch.android.n.z.a();
        eVarA.m();
        Context contextB = eVarA.b();
        if (contextB == null) {
            contextB = context.getApplicationContext();
        }
        b(contextB, false, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(BatchOptOutResultListener batchOptOutResultListener, Exception exc) {
        if (batchOptOutResultListener != null) {
            batchOptOutResultListener.onError();
        }
    }

    private static void a(final Context context, final boolean z, final boolean z2) {
        int i2 = 0;
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        final StringBuilder sb = new StringBuilder();
        final com.batch.android.j1.e eVarA = com.batch.android.n.z.a();
        boolean zA = com.batch.android.n.z.a().a(new com.batch.android.j1.a() { // from class: kd
            @Override // com.batch.android.j1.a
            public final g a(g gVar, b bVar) {
                return Batch.a(eVarA, z2, context, z, atomicBoolean, sb, gVar, bVar);
            }
        });
        if (zA) {
            g.b();
        }
        if (zA) {
            eVarA.a(com.batch.android.j1.g.READY, new ld(eVarA, atomicBoolean, sb, z2, 0));
            eVarA.a((com.batch.android.j1.c) new md(i2));
            String installationID = User.getInstallationID();
            if (installationID != null) {
                com.batch.android.e.t.b("Installation ID: ".concat(installationID));
            }
            if (com.batch.android.v0.j.c(context)) {
                com.batch.android.e.t.b("The app is running in restricted backgrounding mode");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(com.batch.android.j1.e eVar, AtomicBoolean atomicBoolean, StringBuilder sb, boolean z, com.batch.android.j1.g gVar) {
        com.batch.android.a.m.a(eVar, atomicBoolean.get(), sb.toString(), z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(com.batch.android.j1.b bVar) {
        if (bVar.b() == null || !bVar.b().toLowerCase(Locale.US).startsWith("dev")) {
            return;
        }
        com.batch.android.e.t.e("Batch (3.1.1) is running in dev mode (your API key is a dev one)");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.batch.android.j1.g a(boolean z, Context context, boolean z2, com.batch.android.j1.g gVar, com.batch.android.j1.b bVar) {
        com.batch.android.e.t.c("onStop called with state " + gVar);
        if (z) {
            com.batch.android.n.z.a().a();
        }
        Activity activityB = com.batch.android.n.z.a().b();
        Activity activity = context instanceof Activity ? (Activity) context : null;
        if (activity != null) {
            if (com.batch.android.e.l.a(activity)) {
                com.batch.android.e.t.c("Closing an excluded activity");
                return null;
            }
            if (activity != activityB) {
                com.batch.android.e.t.c("Closing a sub activity");
                return null;
            }
        }
        if (!z && !z2 && activityB != null && !activityB.isFinishing()) {
            com.batch.android.e.t.c("onStop called but activity is not finishing... saving date");
            com.batch.android.n.z.a().l();
            return null;
        }
        if (!z) {
            com.batch.android.n.z.a().a((Activity) null);
        }
        if (com.batch.android.n.z.a().b() == null && !com.batch.android.n.z.a().j()) {
            g.d();
            return com.batch.android.j1.g.FINISHING;
        }
        com.batch.android.e.t.c("onStop called, but Batch is retained by a Service or Activity");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.batch.android.j1.g a(com.batch.android.j1.g gVar, com.batch.android.j1.b bVar) {
        com.batch.android.e.t.c("doStop, called with state " + gVar);
        g.f();
        e0.a().a(com.batch.android.o.g.f23855b);
        com.batch.android.n.z.a().a((Context) null);
        f22716b = null;
        return com.batch.android.j1.g.OFF;
    }

    private static void a(Context context, String str, String str2) {
        com.batch.android.e.t.c("New version detected : " + str + " -> " + str2);
    }

    private static void a(Context context) {
        if (Boolean.parseBoolean(com.batch.android.n.w.a(context).a(z.q1, "false"))) {
            return;
        }
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        if (jobScheduler == null) {
            com.batch.android.e.t.c("JobScheduler service is unavailable. Skipping job cancellation.");
            return;
        }
        for (JobInfo jobInfo : jobScheduler.getAllPendingJobs()) {
            if (jobInfo.getService().getClassName().equals("com.batch.android.BatchDisplayReceiptJobService")) {
                jobScheduler.cancel(jobInfo.getId());
                com.batch.android.e.t.c("Scheduled display receipt job service with id " + jobInfo.getId() + " was canceled");
            }
        }
        com.batch.android.n.w.a(context).a(z.q1, "true", true);
    }
}
