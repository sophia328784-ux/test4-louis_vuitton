package com.google.firebase;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.Trace;
import androidx.collection.ArrayMap;
import androidx.core.os.UserManagerCompat;
import com.google.android.gms.common.api.internal.BackgroundDetector;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.ProcessUtils;
import com.google.firebase.FirebaseApp;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentDiscovery;
import com.google.firebase.components.ComponentDiscoveryService;
import com.google.firebase.components.ComponentRuntime;
import com.google.firebase.components.Lazy;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import com.google.firebase.concurrent.UiExecutor;
import com.google.firebase.events.Publisher;
import com.google.firebase.heartbeatinfo.DefaultHeartBeatController;
import com.google.firebase.inject.Provider;
import com.google.firebase.internal.DataCollectionConfigStorage;
import com.google.firebase.provider.FirebaseInitProvider;
import com.google.firebase.tracing.ComponentMonitor;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import defpackage.gn;
import defpackage.kn;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public class FirebaseApp {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Object f34329k = new Object();
    public static final ArrayMap l = new ArrayMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f34330a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f34331b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FirebaseOptions f34332c;
    public final ComponentRuntime d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AtomicBoolean f34333e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicBoolean f34334f;
    public final Lazy g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Provider f34335h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CopyOnWriteArrayList f34336i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final CopyOnWriteArrayList f34337j;

    public interface BackgroundStateChangeListener {
        void a(boolean z);
    }

    public static class GlobalBackgroundStateListener implements BackgroundDetector.BackgroundStateChangeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final AtomicReference f34338a = new AtomicReference();

        @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
        public final void a(boolean z) {
            synchronized (FirebaseApp.f34329k) {
                try {
                    for (FirebaseApp firebaseApp : new ArrayList(FirebaseApp.l.values())) {
                        if (firebaseApp.f34333e.get()) {
                            Iterator it = firebaseApp.f34336i.iterator();
                            while (it.hasNext()) {
                                ((BackgroundStateChangeListener) it.next()).a(z);
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static class UserUnlockReceiver extends BroadcastReceiver {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final AtomicReference f34339b = new AtomicReference();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f34340a;

        public UserUnlockReceiver(Context context) {
            this.f34340a = context;
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
            synchronized (FirebaseApp.f34329k) {
                try {
                    Iterator it = FirebaseApp.l.values().iterator();
                    while (it.hasNext()) {
                        ((FirebaseApp) it.next()).f();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.f34340a.unregisterReceiver(this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v11, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.util.List] */
    public FirebaseApp(final Context context, String str, FirebaseOptions firebaseOptions) {
        ?? arrayList;
        int i2 = 0;
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        this.f34333e = atomicBoolean;
        this.f34334f = new AtomicBoolean();
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        this.f34336i = copyOnWriteArrayList;
        this.f34337j = new CopyOnWriteArrayList();
        this.f34330a = context;
        Preconditions.e(str);
        this.f34331b = str;
        this.f34332c = firebaseOptions;
        StartupTime startupTime = FirebaseInitProvider.f35368b;
        Trace.beginSection("Firebase");
        Trace.beginSection("ComponentDiscovery");
        ComponentDiscovery componentDiscoveryA = ComponentDiscovery.a(context);
        ArrayList arrayList2 = new ArrayList();
        Context context2 = componentDiscoveryA.f34388a;
        Bundle bundle = null;
        try {
            PackageManager packageManager = context2.getPackageManager();
            if (packageManager != null) {
                ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context2, (Class<?>) ComponentDiscoveryService.class), 128);
                if (serviceInfo == null) {
                    Objects.toString(ComponentDiscoveryService.class);
                } else {
                    bundle = serviceInfo.metaData;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        if (bundle == null) {
            arrayList = Collections.EMPTY_LIST;
        } else {
            arrayList = new ArrayList();
            for (String str2 : bundle.keySet()) {
                if ("com.google.firebase.components.ComponentRegistrar".equals(bundle.get(str2)) && str2.startsWith("com.google.firebase.components:")) {
                    arrayList.add(str2.substring(31));
                }
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(new gn((String) it.next(), i2));
        }
        Trace.endSection();
        Trace.beginSection("Runtime");
        ComponentRuntime.Builder builder = new ComponentRuntime.Builder(UiExecutor.INSTANCE);
        ArrayList arrayList3 = builder.f34396b;
        arrayList3.addAll(arrayList2);
        arrayList3.add(new kn(new FirebaseCommonRegistrar(), 1));
        arrayList3.add(new kn(new ExecutorsRegistrar(), 1));
        Component componentC = Component.c(context, Context.class, new Class[0]);
        ArrayList arrayList4 = builder.f34397c;
        arrayList4.add(componentC);
        arrayList4.add(Component.c(this, FirebaseApp.class, new Class[0]));
        arrayList4.add(Component.c(firebaseOptions, FirebaseOptions.class, new Class[0]));
        builder.d = new ComponentMonitor();
        if (UserManagerCompat.a(context) && FirebaseInitProvider.f35369c.get()) {
            arrayList4.add(Component.c(startupTime, StartupTime.class, new Class[0]));
        }
        ComponentRuntime componentRuntime = new ComponentRuntime(builder.f34395a, arrayList3, arrayList4, builder.d);
        this.d = componentRuntime;
        Trace.endSection();
        this.g = new Lazy(new Provider() { // from class: yy
            @Override // com.google.firebase.inject.Provider
            public final Object get() {
                Object obj = FirebaseApp.f34329k;
                FirebaseApp firebaseApp = this.f81464a;
                return new DataCollectionConfigStorage(context, firebaseApp.e(), (Publisher) firebaseApp.d.a(Publisher.class));
            }
        });
        this.f34335h = componentRuntime.g(DefaultHeartBeatController.class);
        BackgroundStateChangeListener backgroundStateChangeListener = new BackgroundStateChangeListener() { // from class: zy
            @Override // com.google.firebase.FirebaseApp.BackgroundStateChangeListener
            public final void a(boolean z) {
                if (z) {
                    Object obj = FirebaseApp.f34329k;
                } else {
                    ((DefaultHeartBeatController) this.f81747a.f34335h.get()).c();
                }
            }
        };
        a();
        if (atomicBoolean.get() && BackgroundDetector.f29015f.f29016b.get()) {
            backgroundStateChangeListener.a(true);
        }
        copyOnWriteArrayList.add(backgroundStateChangeListener);
        Trace.endSection();
    }

    public static ArrayList c() {
        ArrayList arrayList;
        synchronized (f34329k) {
            arrayList = new ArrayList(l.values());
        }
        return arrayList;
    }

    public static FirebaseApp d() {
        FirebaseApp firebaseApp;
        synchronized (f34329k) {
            try {
                firebaseApp = (FirebaseApp) l.get("[DEFAULT]");
                if (firebaseApp == null) {
                    StringBuilder sb = new StringBuilder("Default FirebaseApp is not initialized in this process ");
                    if (ProcessUtils.f29343a == null) {
                        ProcessUtils.f29343a = Application.getProcessName();
                    }
                    sb.append(ProcessUtils.f29343a);
                    sb.append(". Make sure to call FirebaseApp.initializeApp(Context) first.");
                    throw new IllegalStateException(sb.toString());
                }
                ((DefaultHeartBeatController) firebaseApp.f34335h.get()).c();
            } catch (Throwable th) {
                throw th;
            }
        }
        return firebaseApp;
    }

    public static FirebaseApp g(Context context, FirebaseOptions firebaseOptions) {
        FirebaseApp firebaseApp;
        AtomicReference atomicReference = GlobalBackgroundStateListener.f34338a;
        if (context.getApplicationContext() instanceof Application) {
            Application application = (Application) context.getApplicationContext();
            AtomicReference atomicReference2 = GlobalBackgroundStateListener.f34338a;
            if (atomicReference2.get() == null) {
                GlobalBackgroundStateListener globalBackgroundStateListener = new GlobalBackgroundStateListener();
                do {
                    if (atomicReference2.compareAndSet(null, globalBackgroundStateListener)) {
                        BackgroundDetector.a(application);
                        BackgroundDetector backgroundDetector = BackgroundDetector.f29015f;
                        backgroundDetector.getClass();
                        synchronized (backgroundDetector) {
                            backgroundDetector.d.add(globalBackgroundStateListener);
                        }
                        break;
                    }
                } while (atomicReference2.get() == null);
            }
        }
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (f34329k) {
            ArrayMap arrayMap = l;
            Preconditions.j("FirebaseApp name [DEFAULT] already exists!", !arrayMap.containsKey("[DEFAULT]"));
            Preconditions.i(context, "Application context cannot be null.");
            firebaseApp = new FirebaseApp(context, "[DEFAULT]", firebaseOptions);
            arrayMap.put("[DEFAULT]", firebaseApp);
        }
        firebaseApp.f();
        return firebaseApp;
    }

    public static void h(Context context) {
        synchronized (f34329k) {
            try {
                if (l.containsKey("[DEFAULT]")) {
                    d();
                    return;
                }
                FirebaseOptions firebaseOptionsA = FirebaseOptions.a(context);
                if (firebaseOptionsA == null) {
                    return;
                }
                g(context, firebaseOptionsA);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a() {
        Preconditions.j("FirebaseApp was deleted", !this.f34334f.get());
    }

    public final Object b(Class cls) {
        a();
        return this.d.a(cls);
    }

    public final String e() {
        StringBuilder sb = new StringBuilder();
        a();
        sb.append(Base64Utils.b(this.f34331b.getBytes(Charset.defaultCharset())));
        sb.append("+");
        a();
        sb.append(Base64Utils.b(this.f34332c.f34346b.getBytes(Charset.defaultCharset())));
        return sb.toString();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof FirebaseApp)) {
            return false;
        }
        FirebaseApp firebaseApp = (FirebaseApp) obj;
        firebaseApp.a();
        return this.f34331b.equals(firebaseApp.f34331b);
    }

    public final void f() {
        HashMap map;
        if (!UserManagerCompat.a(this.f34330a)) {
            a();
            Context context = this.f34330a;
            AtomicReference atomicReference = UserUnlockReceiver.f34339b;
            if (atomicReference.get() == null) {
                UserUnlockReceiver userUnlockReceiver = new UserUnlockReceiver(context);
                while (!atomicReference.compareAndSet(null, userUnlockReceiver)) {
                    if (atomicReference.get() != null) {
                        return;
                    }
                }
                context.registerReceiver(userUnlockReceiver, new IntentFilter("android.intent.action.USER_UNLOCKED"));
                return;
            }
            return;
        }
        a();
        ComponentRuntime componentRuntime = this.d;
        a();
        boolean zEquals = "[DEFAULT]".equals(this.f34331b);
        AtomicReference atomicReference2 = componentRuntime.f34394f;
        Boolean boolValueOf = Boolean.valueOf(zEquals);
        while (!atomicReference2.compareAndSet(null, boolValueOf)) {
            if (atomicReference2.get() != null) {
                ((DefaultHeartBeatController) this.f34335h.get()).c();
            }
        }
        synchronized (componentRuntime) {
            map = new HashMap(componentRuntime.f34390a);
        }
        componentRuntime.j(map, zEquals);
        ((DefaultHeartBeatController) this.f34335h.get()).c();
    }

    public final int hashCode() {
        return this.f34331b.hashCode();
    }

    public final boolean i() {
        boolean z;
        a();
        DataCollectionConfigStorage dataCollectionConfigStorage = (DataCollectionConfigStorage) this.g.get();
        synchronized (dataCollectionConfigStorage) {
            z = dataCollectionConfigStorage.f35215b;
        }
        return z;
    }

    public final String toString() {
        com.google.android.gms.common.internal.Objects.ToStringHelper toStringHelper = new com.google.android.gms.common.internal.Objects.ToStringHelper(this);
        toStringHelper.a(this.f34331b, "name");
        toStringHelper.a(this.f34332c, "options");
        return toStringHelper.toString();
    }
}
