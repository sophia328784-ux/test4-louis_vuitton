package com.google.firebase.messaging;

import android.app.Application;
import android.app.NotificationManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.cloudmessaging.Rpc;
import com.google.android.gms.cloudmessaging.zzv;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.events.Event;
import com.google.firebase.events.EventHandler;
import com.google.firebase.events.Subscriber;
import com.google.firebase.iid.internal.FirebaseInstanceIdInternal;
import com.google.firebase.inject.Provider;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.installations.internal.FidListener;
import com.google.firebase.messaging.FirebaseMessaging;
import defpackage.jr;
import defpackage.l8;
import defpackage.ln;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class FirebaseMessaging {
    public static Store n;
    public static Provider o = new ln(1);
    public static ScheduledThreadPoolExecutor p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FirebaseApp f35242a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FirebaseInstanceIdInternal f35243b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f35244c;
    public final GmsRpc d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final GmsRegistrationClient f35245e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RequestDeduplicator f35246f;
    public final AutoInit g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ScheduledThreadPoolExecutor f35247h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ThreadPoolExecutor f35248i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Metadata f35249j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final FirebaseInstallationsApi f35250k;
    public boolean l;
    public final Application.ActivityLifecycleCallbacks m;

    public class AutoInit {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Subscriber f35251a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f35252b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public e f35253c;
        public Boolean d;

        public AutoInit(Subscriber subscriber) {
            this.f35251a = subscriber;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v4, types: [com.google.firebase.messaging.e] */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public final synchronized void a() {
            try {
                if (this.f35252b) {
                    return;
                }
                Boolean boolC = c();
                this.d = boolC;
                if (boolC == null) {
                    ?? r0 = new EventHandler() { // from class: com.google.firebase.messaging.e
                        @Override // com.google.firebase.events.EventHandler
                        public final void a(Event event) {
                            FirebaseMessaging.AutoInit autoInit = this.f35324a;
                            if (autoInit.b()) {
                                FirebaseMessaging.this.i();
                            }
                        }
                    };
                    this.f35253c = r0;
                    this.f35251a.b(r0);
                }
                this.f35252b = true;
            } catch (Throwable th) {
                throw th;
            }
        }

        public final synchronized boolean b() {
            Boolean bool;
            try {
                a();
                bool = this.d;
            } catch (Throwable th) {
                throw th;
            }
            return bool != null ? bool.booleanValue() : FirebaseMessaging.this.f35242a.i();
        }

        public final Boolean c() {
            ApplicationInfo applicationInfo;
            Bundle bundle;
            FirebaseApp firebaseApp = FirebaseMessaging.this.f35242a;
            firebaseApp.a();
            Context context = firebaseApp.f34330a;
            SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.firebase.messaging", 0);
            if (sharedPreferences.contains("auto_init")) {
                return Boolean.valueOf(sharedPreferences.getBoolean("auto_init", false));
            }
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("firebase_messaging_auto_init_enabled")) {
                    return null;
                }
                return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_messaging_auto_init_enabled"));
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [cz] */
    public FirebaseMessaging(final FirebaseApp firebaseApp, FirebaseInstanceIdInternal firebaseInstanceIdInternal, Provider provider, Provider provider2, final FirebaseInstallationsApi firebaseInstallationsApi, Provider provider3, Subscriber subscriber) {
        firebaseApp.a();
        Context context = firebaseApp.f34330a;
        final Metadata metadata = new Metadata(context);
        GmsRpc gmsRpc = new GmsRpc(firebaseApp, metadata, provider, provider2, firebaseInstallationsApi);
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor(new NamedThreadFactory("Firebase-Messaging-Task"));
        final int i2 = 1;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, new NamedThreadFactory("Firebase-Messaging-Init"));
        final int i3 = 0;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new NamedThreadFactory("Firebase-Messaging-File-Io"));
        this.l = false;
        o = provider3;
        this.f35242a = firebaseApp;
        this.f35243b = firebaseInstanceIdInternal;
        this.g = new AutoInit(subscriber);
        firebaseApp.a();
        final Context context2 = firebaseApp.f34330a;
        this.f35244c = context2;
        FcmLifecycleCallbacks fcmLifecycleCallbacks = new FcmLifecycleCallbacks();
        this.f35249j = metadata;
        this.d = gmsRpc;
        this.f35250k = firebaseInstallationsApi;
        GmsRegistrationClient gmsRegistrationClient = new GmsRegistrationClient(context2, firebaseApp, firebaseInstallationsApi, gmsRpc, metadata);
        this.f35245e = gmsRegistrationClient;
        this.f35246f = new RequestDeduplicator(executorServiceNewSingleThreadExecutor);
        this.f35247h = scheduledThreadPoolExecutor;
        this.f35248i = threadPoolExecutor;
        firebaseApp.a();
        if (context instanceof Application) {
            ((Application) context).registerActivityLifecycleCallbacks(fcmLifecycleCallbacks);
        } else {
            Objects.toString(context);
        }
        if (firebaseInstanceIdInternal != null && !gmsRegistrationClient.a()) {
            firebaseInstanceIdInternal.a();
        }
        if (gmsRegistrationClient.a()) {
            firebaseInstallationsApi.b(new FidListener() { // from class: cz
                @Override // com.google.firebase.installations.internal.FidListener
                public final void a() {
                    FirebaseMessaging firebaseMessaging = this.f68369a;
                    if (firebaseMessaging.f() == null) {
                        return;
                    }
                    Log.isLoggable("FirebaseMessaging", 3);
                    synchronized (firebaseMessaging) {
                        if (!firebaseMessaging.l) {
                            firebaseMessaging.j(0L);
                        }
                    }
                }
            });
        }
        scheduledThreadPoolExecutor.execute(new Runnable(this) { // from class: com.google.firebase.messaging.b

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ FirebaseMessaging f35318c;

            {
                this.f35318c = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Task taskE;
                int i4 = i3;
                FirebaseMessaging firebaseMessaging = this.f35318c;
                switch (i4) {
                    case 0:
                        if (firebaseMessaging.g.b()) {
                            firebaseMessaging.i();
                        }
                        break;
                    default:
                        final Context context3 = firebaseMessaging.f35244c;
                        ProxyNotificationInitializer.a(context3);
                        GmsRpc gmsRpc2 = firebaseMessaging.d;
                        final boolean zH = firebaseMessaging.h();
                        SharedPreferences sharedPreferencesA = ProxyNotificationPreferences.a(context3);
                        int i5 = 1;
                        if (!sharedPreferencesA.contains("proxy_retention") || sharedPreferencesA.getBoolean("proxy_retention", false) != zH) {
                            Rpc rpc = gmsRpc2.f35261c;
                            if (rpc.f28914c.b() >= 241100000) {
                                Bundle bundle = new Bundle();
                                bundle.putBoolean("proxy_retention", zH);
                                taskE = zzv.a(rpc.f28913b).b(4, bundle);
                            } else {
                                taskE = Tasks.e(new IOException("SERVICE_NOT_AVAILABLE"));
                            }
                            taskE.f(new l8(1), new OnSuccessListener() { // from class: com.google.firebase.messaging.i
                                @Override // com.google.android.gms.tasks.OnSuccessListener
                                public final void onSuccess(Object obj) {
                                    SharedPreferences.Editor editorEdit = ProxyNotificationPreferences.a(context3).edit();
                                    editorEdit.putBoolean("proxy_retention", zH);
                                    editorEdit.apply();
                                }
                            });
                        }
                        if (firebaseMessaging.h()) {
                            gmsRpc2.f35261c.a().f(firebaseMessaging.f35247h, new c(firebaseMessaging, i5));
                        }
                        break;
                }
            }
        });
        final ScheduledThreadPoolExecutor scheduledThreadPoolExecutor2 = new ScheduledThreadPoolExecutor(1, new NamedThreadFactory("Firebase-Messaging-Topics-Io"));
        Tasks.c(new Callable() { // from class: com.google.firebase.messaging.k
            @Override // java.util.concurrent.Callable
            public final Object call() {
                TopicsStore topicsStore;
                Context context3 = context2;
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor3 = scheduledThreadPoolExecutor2;
                Metadata metadata2 = metadata;
                FirebaseApp firebaseApp2 = firebaseApp;
                FirebaseMessaging firebaseMessaging = this;
                FirebaseInstallationsApi firebaseInstallationsApi2 = firebaseInstallationsApi;
                synchronized (TopicsStore.class) {
                    try {
                        WeakReference weakReference = TopicsStore.f35296b;
                        topicsStore = weakReference != null ? (TopicsStore) weakReference.get() : null;
                        if (topicsStore == null) {
                            SharedPreferences sharedPreferences = context3.getSharedPreferences("com.google.android.gms.appid", 0);
                            TopicsStore topicsStore2 = new TopicsStore();
                            synchronized (topicsStore2) {
                                topicsStore2.f35297a = SharedPreferencesQueue.a(sharedPreferences, scheduledThreadPoolExecutor3);
                            }
                            TopicsStore.f35296b = new WeakReference(topicsStore2);
                            topicsStore = topicsStore2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return new TopicsSubscriber(metadata2, topicsStore, new TopicSubscriptionClient(firebaseApp2, firebaseMessaging, firebaseInstallationsApi2), context3, scheduledThreadPoolExecutor3);
            }
        }, scheduledThreadPoolExecutor2).f(scheduledThreadPoolExecutor, new c(this, i3));
        scheduledThreadPoolExecutor.execute(new Runnable(this) { // from class: com.google.firebase.messaging.b

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ FirebaseMessaging f35318c;

            {
                this.f35318c = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Task taskE;
                int i4 = i2;
                FirebaseMessaging firebaseMessaging = this.f35318c;
                switch (i4) {
                    case 0:
                        if (firebaseMessaging.g.b()) {
                            firebaseMessaging.i();
                        }
                        break;
                    default:
                        final Context context3 = firebaseMessaging.f35244c;
                        ProxyNotificationInitializer.a(context3);
                        GmsRpc gmsRpc2 = firebaseMessaging.d;
                        final boolean zH = firebaseMessaging.h();
                        SharedPreferences sharedPreferencesA = ProxyNotificationPreferences.a(context3);
                        int i5 = 1;
                        if (!sharedPreferencesA.contains("proxy_retention") || sharedPreferencesA.getBoolean("proxy_retention", false) != zH) {
                            Rpc rpc = gmsRpc2.f35261c;
                            if (rpc.f28914c.b() >= 241100000) {
                                Bundle bundle = new Bundle();
                                bundle.putBoolean("proxy_retention", zH);
                                taskE = zzv.a(rpc.f28913b).b(4, bundle);
                            } else {
                                taskE = Tasks.e(new IOException("SERVICE_NOT_AVAILABLE"));
                            }
                            taskE.f(new l8(1), new OnSuccessListener() { // from class: com.google.firebase.messaging.i
                                @Override // com.google.android.gms.tasks.OnSuccessListener
                                public final void onSuccess(Object obj) {
                                    SharedPreferences.Editor editorEdit = ProxyNotificationPreferences.a(context3).edit();
                                    editorEdit.putBoolean("proxy_retention", zH);
                                    editorEdit.apply();
                                }
                            });
                        }
                        if (firebaseMessaging.h()) {
                            gmsRpc2.f35261c.a().f(firebaseMessaging.f35247h, new c(firebaseMessaging, i5));
                        }
                        break;
                }
            }
        });
    }

    public static void b(long j2, Runnable runnable) {
        synchronized (FirebaseMessaging.class) {
            try {
                if (p == null) {
                    p = new ScheduledThreadPoolExecutor(1, new NamedThreadFactory("TAG"));
                }
                p.schedule(runnable, j2, TimeUnit.SECONDS);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static synchronized FirebaseMessaging c() {
        return getInstance(FirebaseApp.d());
    }

    public static synchronized Store d(Context context) {
        try {
            if (n == null) {
                n = new Store(context);
            }
        } catch (Throwable th) {
            throw th;
        }
        return n;
    }

    @Deprecated
    public static synchronized FirebaseMessaging getInstance(FirebaseApp firebaseApp) {
        FirebaseMessaging firebaseMessaging;
        firebaseMessaging = (FirebaseMessaging) firebaseApp.b(FirebaseMessaging.class);
        Preconditions.i(firebaseMessaging, "Firebase Messaging component is not present");
        return firebaseMessaging;
    }

    public final String a() throws IOException {
        Task taskH;
        Store.Token tokenF = f();
        if (!k(tokenF)) {
            return tokenF.f35285a;
        }
        String strB = Metadata.b(this.f35242a);
        RequestDeduplicator requestDeduplicator = this.f35246f;
        d dVar = new d(this, strB, tokenF);
        synchronized (requestDeduplicator) {
            taskH = (Task) requestDeduplicator.f35275b.get(strB);
            if (taskH != null) {
                Log.isLoggable("FirebaseMessaging", 3);
            } else {
                Log.isLoggable("FirebaseMessaging", 3);
                taskH = dVar.b().h(requestDeduplicator.f35274a, new f(requestDeduplicator, strB, 2));
                requestDeduplicator.f35275b.put(strB, taskH);
            }
        }
        try {
            return (String) Tasks.a(taskH);
        } catch (InterruptedException | ExecutionException e2) {
            throw new IOException("FCM Registration failed!", e2);
        }
    }

    public Task e() {
        if (this.f35245e.a()) {
            return Tasks.e(new IllegalStateException("API disabled. Please use {@link #register()} instead or enable this API by removing {@code <meta-data android:name=\"firebase_messaging_installation_id_enabled\" android:value=\"true\" />} from your app's manifest."));
        }
        FirebaseInstanceIdInternal firebaseInstanceIdInternal = this.f35243b;
        if (firebaseInstanceIdInternal != null) {
            return firebaseInstanceIdInternal.b();
        }
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f35247h.execute(new jr(this, taskCompletionSource, 17));
        return taskCompletionSource.f32085a;
    }

    public final Store.Token f() {
        Store.Token tokenA;
        Store storeD = d(this.f35244c);
        FirebaseApp firebaseApp = this.f35242a;
        firebaseApp.a();
        String strE = "[DEFAULT]".equals(firebaseApp.f34331b) ? "" : firebaseApp.e();
        String strB = Metadata.b(this.f35242a);
        synchronized (storeD) {
            tokenA = Store.Token.a(storeD.f35284a.getString(strE + "|T|" + strB + "|*", null));
        }
        return tokenA;
    }

    public final void g() {
        AutoInit autoInit = this.g;
        synchronized (autoInit) {
            try {
                autoInit.a();
                e eVar = autoInit.f35253c;
                if (eVar != null) {
                    autoInit.f35251a.a(eVar);
                    autoInit.f35253c = null;
                }
                FirebaseApp firebaseApp = FirebaseMessaging.this.f35242a;
                firebaseApp.a();
                SharedPreferences.Editor editorEdit = firebaseApp.f34330a.getSharedPreferences("com.google.firebase.messaging", 0).edit();
                editorEdit.putBoolean("auto_init", true);
                editorEdit.apply();
                FirebaseMessaging.this.i();
                autoInit.d = Boolean.TRUE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean h() {
        Context context = this.f35244c;
        ProxyNotificationInitializer.a(context);
        if (Binder.getCallingUid() != context.getApplicationInfo().uid) {
            context.getPackageName();
            return false;
        }
        if ("com.google.android.gms".equals(((NotificationManager) context.getSystemService(NotificationManager.class)).getNotificationDelegate())) {
            Log.isLoggable("FirebaseMessaging", 3);
            if (this.f35242a.b(AnalyticsConnector.class) != null) {
                return true;
            }
            if (MessagingAnalytics.a() && o != null) {
                return true;
            }
        }
        return false;
    }

    public final void i() {
        if (k(f())) {
            synchronized (this) {
                if (!this.l) {
                    j(0L);
                }
            }
        }
    }

    public final synchronized void j(long j2) {
        b(j2, new SyncTask(this, Math.min(Math.max(30L, 2 * j2), 28800L)));
        this.l = true;
    }

    public final boolean k(Store.Token token) {
        String str;
        if (token != null) {
            String str2 = token.f35285a;
            String strA = this.f35249j.a();
            if (System.currentTimeMillis() <= token.f35287c + 604800000 && strA.equals(token.f35286b)) {
                if (this.f35245e.a()) {
                    try {
                        str = (String) Tasks.a(this.f35250k.getId());
                    } catch (InterruptedException | ExecutionException unused) {
                        str = null;
                    }
                    return !str2.equalsIgnoreCase(str);
                }
                if (str2.length() > 22) {
                    return false;
                }
            }
        }
        return true;
    }
}
