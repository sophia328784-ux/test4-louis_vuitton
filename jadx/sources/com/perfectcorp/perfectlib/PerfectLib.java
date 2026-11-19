package com.perfectcorp.perfectlib;

import android.app.ActivityManager;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.PfCommonsJni;
import com.perfectcorp.common.concurrent.CallingThread;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.guava.DefaultFutureCallback;
import com.perfectcorp.common.guava.FluentFuture;
import com.perfectcorp.common.guava.MoreFutures;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.common.reflect.Proxies;
import com.perfectcorp.common.rx.Singles;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.Configuration;
import com.perfectcorp.perfectlib.Functionality;
import com.perfectcorp.perfectlib.PerfectLib;
import com.perfectcorp.perfectlib.core.ApplyEffectParams;
import com.perfectcorp.perfectlib.internal.ModuleConfig;
import com.perfectcorp.perfectlib.m3;
import com.perfectcorp.perfectlib.ymk.Globals;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.NetworkManager;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.task.InitResponse;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.NetworkTaskManagerHolder;
import com.perfectcorp.perfectlib.ymk.kernelctrl.preference.QuickLaunchPreferenceHelper;
import com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a;
import com.perfectcorp.thirdparty.com.google.common.base.MoreObjects;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.Futures;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.SettableFuture;
import com.perfectcorp.thirdparty.com.google.gson.Gson;
import com.perfectcorp.thirdparty.io.reactivex.android.schedulers.AndroidSchedulers;
import com.perfectcorp.thirdparty.io.reactivex.disposables.CompositeDisposable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Action;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.CallbackCompletableObserver;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.ConsumerSingleObserver;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.e;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.i;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.k;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.o;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.b;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.d8;
import defpackage.e5;
import defpackage.gn0;
import defpackage.hn0;
import defpackage.jn0;
import defpackage.md;
import defpackage.n7;
import defpackage.na0;
import defpackage.tg0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public final class PerfectLib {
    public static volatile Set d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static volatile Set f39741e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static volatile Set f39742f;
    public static volatile Configuration g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static volatile DownloadCacheStrategy f39743h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static volatile CompositeDisposable f39744i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static volatile State f39745j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static boolean f39746k;
    public static ListenableFuture l;
    public static ListenableFuture m;
    public static ListenableFuture n;
    public static final com.perfectcorp.perfectlib.internal.c o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile ApplyEffectParams f39738a = new ApplyEffectParams();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile ApplyEffectParams f39739b = new ApplyEffectParams();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile HandFunctionalities f39740c = new HandFunctionalities();
    public static volatile AccessoryFunctionalities accessoryFunctionalities = new AccessoryFunctionalities();

    public interface InitialCallback {
        void onFailure(Throwable th, Map<String, Throwable> map);

        void onInitialized(Set<Functionality> set, Map<String, Throwable> map);
    }

    public static class InitialCallbackWrapper {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final InitialCallback f39753a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ConcurrentHashMap f39754b = new ConcurrentHashMap();

        public InitialCallbackWrapper(InitialCallback initialCallback) {
            Objects.requireNonNull(initialCallback, "initialCallback can't be null!");
            this.f39753a = (InitialCallback) Proxies.a(InitialCallback.class, initialCallback);
        }

        public final void a(String str, Throwable th) {
            ConcurrentHashMap concurrentHashMap = this.f39754b;
            if (concurrentHashMap.containsKey(str)) {
                return;
            }
            concurrentHashMap.put(str, th);
        }
    }

    public static final class ModelPath {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f39755a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f39756b;

        public ModelPath(boolean z, String str) {
            this.f39755a = z;
            Objects.requireNonNull(str);
            this.f39756b = IO.d(str);
        }

        public static ModelPath assets(String str) {
            Objects.requireNonNull(str, "path can't be null");
            return new ModelPath(true, str);
        }

        public static ModelPath file(String str) {
            return new ModelPath(false, str);
        }

        public final String toString() {
            MoreObjects.ToStringHelper toStringHelper = new MoreObjects.ToStringHelper("ModelPath");
            toStringHelper.c("isAssets", this.f39755a);
            toStringHelper.b("path", this.f39756b);
            return toStringHelper.toString();
        }
    }

    public interface ReleaseCallback {
        void onReleased();
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class State {
        public static final State INITIALIZED;
        public static final State INITIALIZING;
        public static final State RELEASED;
        public static final State RELEASING;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final /* synthetic */ State[] f39757a;

        static {
            State state = new State("INITIALIZED", 0);
            INITIALIZED = state;
            State state2 = new State("INITIALIZING", 1);
            INITIALIZING = state2;
            State state3 = new State("RELEASED", 2);
            RELEASED = state3;
            State state4 = new State("RELEASING", 3);
            RELEASING = state4;
            f39757a = new State[]{state, state2, state3, state4};
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) f39757a.clone();
        }
    }

    static {
        Set set = Collections.EMPTY_SET;
        d = set;
        f39741e = set;
        f39742f = set;
        g = Configuration.m;
        f39743h = DownloadCacheStrategy.CACHE_FIRST;
        f39744i = new CompositeDisposable();
        f39745j = State.RELEASED;
        l = Futures.g(set);
        m = Futures.g("PerfectLib");
        n = Futures.g("PerfectLib");
        o = com.perfectcorp.perfectlib.internal.c.a();
    }

    public static com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.p a() {
        com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.a aVarB = NetworkTaskManagerHolder.b();
        Objects.requireNonNull(aVarB);
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.j jVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.j(new hn0(aVarB, 1));
        com.perfectcorp.thirdparty.io.reactivex.b aVar = com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g.f42660b;
        if (ModuleConfig.t) {
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.i iVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.i(new n7(19));
            aVar.getClass();
            com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.o oVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.o(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.o(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(aVar, iVar), new tg0(24)), new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.i(new n7(20))), new tg0(25));
            if (ModuleConfig.w) {
                oVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.o(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(oVar, new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.i(new n7(21))), new tg0(26));
            }
            SettableFuture settableFuture = new SettableFuture();
            n = settableFuture;
            aVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(oVar, new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.o(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.e(new i(settableFuture, 6)), new tg0(27)));
        }
        CompositeDisposable compositeDisposable = f39744i;
        Objects.requireNonNull(compositeDisposable);
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.j jVar2 = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.j(new hn0(compositeDisposable, 3));
        aVar.getClass();
        com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a aVar2 = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(jVar, new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.o(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(aVar, jVar2), new tg0(23)));
        com.perfectcorp.perfectlib.internal.c cVar = o;
        Objects.requireNonNull(cVar);
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(aVar2, new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.j(new hn0(cVar, 2))), new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.j(new e5(7))).i(Schedulers.f43170c);
    }

    /*  JADX ERROR: ConcurrentModificationException in pass: ConstructorVisitor
        java.util.ConcurrentModificationException
        	at java.base/java.util.ArrayList$Itr.checkForComodification(ArrayList.java:1043)
        	at java.base/java.util.ArrayList$Itr.next(ArrayList.java:997)
        	at jadx.core.dex.visitors.ConstructorVisitor.insertPhiInsn(ConstructorVisitor.java:139)
        	at jadx.core.dex.visitors.ConstructorVisitor.processInvoke(ConstructorVisitor.java:91)
        	at jadx.core.dex.visitors.ConstructorVisitor.replaceInvoke(ConstructorVisitor.java:56)
        	at jadx.core.dex.visitors.ConstructorVisitor.visit(ConstructorVisitor.java:42)
        */
    public static void b(
    /*  JADX ERROR: ConcurrentModificationException in pass: ConstructorVisitor
        java.util.ConcurrentModificationException
        	at java.base/java.util.ArrayList$Itr.checkForComodification(ArrayList.java:1043)
        	at java.base/java.util.ArrayList$Itr.next(ArrayList.java:997)
        	at jadx.core.dex.visitors.ConstructorVisitor.insertPhiInsn(ConstructorVisitor.java:139)
        	at jadx.core.dex.visitors.ConstructorVisitor.processInvoke(ConstructorVisitor.java:91)
        	at jadx.core.dex.visitors.ConstructorVisitor.replaceInvoke(ConstructorVisitor.java:56)
        */
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r6v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:215)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:150)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:415)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
        */

    public static void c() {
        if (d()) {
            return;
        }
        md.k("Use SDK without initialized.");
    }

    public static boolean d() {
        return f39745j == State.INITIALIZED;
    }

    public static String getCountryCode() {
        c();
        return QuickLaunchPreferenceHelper.a();
    }

    public static DownloadCacheStrategy getDownloadCacheStrategy() {
        return f39743h;
    }

    public static String getLocaleCode() {
        c();
        return QuickLaunchPreferenceHelper.b();
    }

    public static int getMaxCacheSize() {
        c();
        return com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.r().getInt("MAX_CACHE_SIZE_IN_MB", Integer.MAX_VALUE);
    }

    public static String getSkinCareFeatureList() {
        String string = com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.r().getString("1ca08893-9d9a-49f8-b149-fb85b947ba00", null);
        if (string == null) {
            string = "";
        }
        return com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.s(string);
    }

    public static State getState() {
        return f39745j;
    }

    public static String getVersion() {
        return "5.27.2.111031404";
    }

    public static void init(Context context, final Configuration configuration, InitialCallback initialCallback) {
        ListenableFuture listenableFuture;
        DefaultFutureCallback<Set<Functionality>> defaultFutureCallback;
        final InitialCallbackWrapper initialCallbackWrapper = new InitialCallbackWrapper(initialCallback);
        Threads.a();
        Objects.requireNonNull(context, "applicationContext can't be null");
        Objects.requireNonNull(configuration, "configuration can't be null");
        Log.g(3, "PerfectLib", "SDK start init. configuration=" + configuration);
        if (f39745j == State.INITIALIZED) {
            Log.g(3, "PerfectLib", "SDK already initialized.");
            listenableFuture = l;
            defaultFutureCallback = new DefaultFutureCallback<Set<Functionality>>() { // from class: com.perfectcorp.perfectlib.PerfectLib.2
                @Override // com.perfectcorp.common.guava.DefaultFutureCallback, com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
                public final void onFailure(Throwable th) {
                    StringBuilder sb = new StringBuilder("[onFailure] preloadError=");
                    InitialCallbackWrapper initialCallbackWrapper2 = initialCallbackWrapper;
                    ConcurrentHashMap concurrentHashMap = initialCallbackWrapper2.f39754b;
                    sb.append(concurrentHashMap);
                    Log.d("InitialCallbackWrapper", sb.toString());
                    initialCallbackWrapper2.f39753a.onFailure(th, concurrentHashMap);
                }

                @Override // com.perfectcorp.common.guava.DefaultFutureCallback, com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
                public final void onSuccess(Object obj) {
                    StringBuilder sb = new StringBuilder("[onInitialized] preloadError=");
                    InitialCallbackWrapper initialCallbackWrapper2 = initialCallbackWrapper;
                    ConcurrentHashMap concurrentHashMap = initialCallbackWrapper2.f39754b;
                    sb.append(concurrentHashMap);
                    Log.g(3, "InitialCallbackWrapper", sb.toString());
                    initialCallbackWrapper2.f39753a.onInitialized((Set) obj, concurrentHashMap);
                }
            };
        } else {
            State state = f39745j;
            State state2 = State.INITIALIZING;
            if (state == state2) {
                Log.g(3, "PerfectLib", "SDK is initializing.");
                listenableFuture = l;
                defaultFutureCallback = new DefaultFutureCallback<Set<Functionality>>() { // from class: com.perfectcorp.perfectlib.PerfectLib.2
                    @Override // com.perfectcorp.common.guava.DefaultFutureCallback, com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
                    public final void onFailure(Throwable th) {
                        StringBuilder sb = new StringBuilder("[onFailure] preloadError=");
                        InitialCallbackWrapper initialCallbackWrapper2 = initialCallbackWrapper;
                        ConcurrentHashMap concurrentHashMap = initialCallbackWrapper2.f39754b;
                        sb.append(concurrentHashMap);
                        Log.d("InitialCallbackWrapper", sb.toString());
                        initialCallbackWrapper2.f39753a.onFailure(th, concurrentHashMap);
                    }

                    @Override // com.perfectcorp.common.guava.DefaultFutureCallback, com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
                    public final void onSuccess(Object obj) {
                        StringBuilder sb = new StringBuilder("[onInitialized] preloadError=");
                        InitialCallbackWrapper initialCallbackWrapper2 = initialCallbackWrapper;
                        ConcurrentHashMap concurrentHashMap = initialCallbackWrapper2.f39754b;
                        sb.append(concurrentHashMap);
                        Log.g(3, "InitialCallbackWrapper", sb.toString());
                        initialCallbackWrapper2.f39753a.onInitialized((Set) obj, concurrentHashMap);
                    }
                };
            } else {
                Log.g(3, "PerfectLib", "SDK start initializing.");
                f39745j = state2;
                if (!f39746k) {
                    Globals globals = new Globals(context.getApplicationContext());
                    List list = Globals.f41933b;
                    Handler handler = PfCommons.f39153a;
                    PfCommons.f39155c = globals.getApplicationContext();
                    PfCommons.d = (PfCommons.f39155c.getApplicationInfo().flags & 2) != 0;
                    PfCommonsJni.f39156a = Collections.unmodifiableList(new ArrayList(list));
                    Globals.f41932a = globals;
                    Log.g(3, "PerfectSdkGlobals", "Application onCreate");
                    ActivityManager activityManager = (ActivityManager) globals.getSystemService(ActionFloatingViewItem.f37018a);
                    Log.g(3, "PerfectSdkGlobals", "maxMemory=" + Runtime.getRuntime().maxMemory() + ", MemoryClass=" + activityManager.getMemoryClass() + ", LargeMemoryClass=" + activityManager.getLargeMemoryClass());
                    StringBuilder sb = new StringBuilder("MANUFACTURER=");
                    sb.append(Build.MANUFACTURER);
                    sb.append(", MODEL=");
                    sb.append(Build.MODEL);
                    Log.g(3, "PerfectSdkGlobals", sb.toString());
                    Log.g(3, "PerfectLib", "isDebug=" + PfCommons.d);
                    com.perfectcorp.thirdparty.io.reactivex.plugins.a.f43167a = new com.perfectcorp.common.rx.c();
                    f39746k = true;
                }
                n.cancel(false);
                final SettableFuture settableFuture = new SettableFuture();
                l = settableFuture;
                MoreFutures.a(m, new DefaultFutureCallback<Object>() { // from class: com.perfectcorp.perfectlib.PerfectLib.1
                    @Override // com.perfectcorp.common.guava.DefaultFutureCallback, com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
                    public final void onFailure(Throwable th) {
                        Log.e("PerfectLib", "Init task waits for release task but release task failed. This should not happen!!", th);
                        settableFuture.setException(th);
                    }

                    @Override // com.perfectcorp.common.guava.DefaultFutureCallback, com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
                    public final void onSuccess(Object obj) {
                        SettableFuture settableFuture2 = settableFuture;
                        final Configuration configuration2 = configuration;
                        InitialCallbackWrapper initialCallbackWrapper2 = initialCallbackWrapper;
                        ApplyEffectParams applyEffectParams = PerfectLib.f39738a;
                        final int i2 = 2;
                        final int i3 = 0;
                        com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.n nVarE = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.i(new n7(18)).i(Schedulers.f43170c), new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.o(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.i(new n7(22)), new tg0(28))).e(new gn0(configuration2, i2)), new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.e(new Callable() { // from class: fn0
                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                int i4 = i2;
                                final int i5 = 1;
                                final int i6 = 0;
                                Configuration configuration3 = configuration2;
                                switch (i4) {
                                    case 0:
                                        ApplyEffectParams applyEffectParams2 = PerfectLib.f39738a;
                                        final boolean z = configuration3.f39520i;
                                        Log.g(3, "PerfectLib", "setPreviewMode start. isEnable=" + z);
                                        if (a.r().getBoolean("ENABLE_PREVIEW_MODE", false) != z) {
                                            return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(new o(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(new o(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(new o(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(new o(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(new o(new e(new a8(8)), new tg0(15)), new e(new a8(9))), new tg0(16)), new e(new m3(i6))), new tg0(17)), new e(new m3(i5))), new tg0(18)), new e(new a8(10))), new tg0(19)), new i(new Action() { // from class: in0
                                                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Action
                                                public final void run() {
                                                    a aVarR;
                                                    String str;
                                                    int i7 = i6;
                                                    boolean z2 = z;
                                                    switch (i7) {
                                                        case 0:
                                                            ApplyEffectParams applyEffectParams3 = PerfectLib.f39738a;
                                                            Log.g(3, "PerfectLib", "clear tutorial finish");
                                                            Object obj2 = com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.a.f42002c;
                                                            Log.g(3, "SDKInitHandler", "[updateDomain] start");
                                                            synchronized (com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.a.f42002c) {
                                                                try {
                                                                    Log.g(3, "SDKInitHandler", "[updateDomain] enter critical section");
                                                                    a aVarR2 = a.r();
                                                                    aVarR2.getClass();
                                                                    if (!aVarR2.n.contains("ENABLE_PREVIEW_MODE") || aVarR2.getBoolean("ENABLE_PREVIEW_MODE", false) != z2) {
                                                                        aVarR2.edit().putBoolean("ENABLE_PREVIEW_MODE", z2).apply();
                                                                    }
                                                                    if (z2) {
                                                                        aVarR = a.r();
                                                                        str = "TESTBED_DOMAIN";
                                                                    } else {
                                                                        aVarR = a.r();
                                                                        str = "PRODUCTION_DOMAIN";
                                                                    }
                                                                    NetworkManager.f41984a = aVarR.getString(str, null);
                                                                    Log.g(3, "SDKInitHandler", "[updateDomain] Update domain finished. current domain=" + NetworkManager.f41984a);
                                                                    Log.g(3, "SDKInitHandler", "[updateDomain] exit critical section");
                                                                } catch (Throwable th) {
                                                                    throw th;
                                                                }
                                                                break;
                                                            }
                                                            Log.g(3, "SDKInitHandler", "[updateDomain] end");
                                                            return;
                                                        default:
                                                            ApplyEffectParams applyEffectParams4 = PerfectLib.f39738a;
                                                            Log.g(3, "PerfectLib", "setPreviewMode end. isEnable=" + z2);
                                                            return;
                                                    }
                                                }
                                            })).h(new Action() { // from class: in0
                                                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Action
                                                public final void run() {
                                                    a aVarR;
                                                    String str;
                                                    int i7 = i5;
                                                    boolean z2 = z;
                                                    switch (i7) {
                                                        case 0:
                                                            ApplyEffectParams applyEffectParams3 = PerfectLib.f39738a;
                                                            Log.g(3, "PerfectLib", "clear tutorial finish");
                                                            Object obj2 = com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.a.f42002c;
                                                            Log.g(3, "SDKInitHandler", "[updateDomain] start");
                                                            synchronized (com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.a.f42002c) {
                                                                try {
                                                                    Log.g(3, "SDKInitHandler", "[updateDomain] enter critical section");
                                                                    a aVarR2 = a.r();
                                                                    aVarR2.getClass();
                                                                    if (!aVarR2.n.contains("ENABLE_PREVIEW_MODE") || aVarR2.getBoolean("ENABLE_PREVIEW_MODE", false) != z2) {
                                                                        aVarR2.edit().putBoolean("ENABLE_PREVIEW_MODE", z2).apply();
                                                                    }
                                                                    if (z2) {
                                                                        aVarR = a.r();
                                                                        str = "TESTBED_DOMAIN";
                                                                    } else {
                                                                        aVarR = a.r();
                                                                        str = "PRODUCTION_DOMAIN";
                                                                    }
                                                                    NetworkManager.f41984a = aVarR.getString(str, null);
                                                                    Log.g(3, "SDKInitHandler", "[updateDomain] Update domain finished. current domain=" + NetworkManager.f41984a);
                                                                    Log.g(3, "SDKInitHandler", "[updateDomain] exit critical section");
                                                                } catch (Throwable th) {
                                                                    throw th;
                                                                }
                                                                break;
                                                            }
                                                            Log.g(3, "SDKInitHandler", "[updateDomain] end");
                                                            return;
                                                        default:
                                                            ApplyEffectParams applyEffectParams4 = PerfectLib.f39738a;
                                                            Log.g(3, "PerfectLib", "setPreviewMode end. isEnable=" + z2);
                                                            return;
                                                    }
                                                }
                                            });
                                        }
                                        Log.g(3, "PerfectLib", "setPreviewMode (unchanged) end. isEnable=" + z);
                                        return g.f42660b;
                                    case 1:
                                        ApplyEffectParams applyEffectParams3 = PerfectLib.f39738a;
                                        String string = a.r().getString("2b1dd7b5-41ce-401a-a3d9-d594271817cf", null);
                                        Gson gson = GsonBaseResponse.f41999a;
                                        if (string == null) {
                                            string = "";
                                        }
                                        InitResponse.b bVar = (InitResponse.b) gson.i(a.s(string), InitResponse.b.class);
                                        if (bVar == null) {
                                            EnumSet enumSetNoneOf = EnumSet.noneOf(Functionality.class);
                                            if (ModuleConfig.r) {
                                                enumSetNoneOf.add(Functionality.SHADE_FINDER);
                                            }
                                            if (ModuleConfig.s) {
                                                enumSetNoneOf.add(Functionality.SKIN_CARE);
                                                enumSetNoneOf.add(Functionality.SKIN_CARE_HD);
                                            }
                                            if (ModuleConfig.q) {
                                                if (PerfectLib.f39738a.f40070i || PerfectLib.f39739b.f40070i) {
                                                    enumSetNoneOf.add(Functionality.MAKEUP);
                                                } else if (enumSetNoneOf.contains(Functionality.SHADE_FINDER)) {
                                                    Log.g(3, "PerfectLib", "Add makeup functionality for shade finder. Only foundation can be used.");
                                                    enumSetNoneOf.add(Functionality.MAKEUP);
                                                    PerfectLib.f39738a.f40072k = true;
                                                    PerfectLib.f39739b.f40072k = true;
                                                }
                                                if (PerfectLib.f39738a.f40071j || PerfectLib.f39739b.f40071j) {
                                                    enumSetNoneOf.add(Functionality.HAIR_COLOR);
                                                }
                                            }
                                            return ImmutableSet.q(enumSetNoneOf);
                                        }
                                        boolean z2 = configuration3.g;
                                        EnumSet enumSetNoneOf2 = EnumSet.noneOf(Functionality.class);
                                        if (ModuleConfig.r) {
                                            PerfectLib.b(bVar.shadeFinder, enumSetNoneOf2, Functionality.SHADE_FINDER, z2);
                                        }
                                        if (ModuleConfig.s) {
                                            PerfectLib.b(bVar.skincare, enumSetNoneOf2, Functionality.SKIN_CARE, z2);
                                            PerfectLib.b(bVar.skincareHD, enumSetNoneOf2, Functionality.SKIN_CARE_HD, z2);
                                        }
                                        if (ModuleConfig.q) {
                                            if (PerfectLib.f39738a.f40070i || PerfectLib.f39739b.f40070i) {
                                                PerfectLib.b(bVar.makeup, enumSetNoneOf2, Functionality.MAKEUP, z2);
                                            }
                                            Functionality functionality = Functionality.MAKEUP;
                                            if (!enumSetNoneOf2.contains(functionality)) {
                                                PerfectLib.f39738a.g = false;
                                                PerfectLib.f39738a.f40069h = false;
                                                PerfectLib.f39738a.r = false;
                                                PerfectLib.f39738a.f40070i = false;
                                                PerfectLib.f39739b.g = false;
                                                PerfectLib.f39739b.f40069h = false;
                                                PerfectLib.f39739b.r = false;
                                                PerfectLib.f39739b.f40070i = false;
                                                if (enumSetNoneOf2.contains(Functionality.SHADE_FINDER)) {
                                                    Log.g(3, "PerfectLib", "Add makeup functionality for shade finder. Only foundation can be used.");
                                                    enumSetNoneOf2.add(functionality);
                                                    PerfectLib.f39738a.f40072k = true;
                                                    PerfectLib.f39739b.f40072k = true;
                                                }
                                            }
                                            if (PerfectLib.f39738a.f40071j || PerfectLib.f39739b.f40071j) {
                                                PerfectLib.b(bVar.hairColor, enumSetNoneOf2, Functionality.HAIR_COLOR, z2);
                                            }
                                            if (!enumSetNoneOf2.contains(Functionality.HAIR_COLOR)) {
                                                PerfectLib.f39738a.f40071j = false;
                                                PerfectLib.f39739b.f40071j = false;
                                            }
                                            if (PerfectLib.f39738a.l) {
                                                PerfectLib.b(bVar.funSticker, enumSetNoneOf2, Functionality.FUN_STICKER, z2);
                                            }
                                            if (!enumSetNoneOf2.contains(Functionality.FUN_STICKER)) {
                                                PerfectLib.f39738a.l = false;
                                            }
                                            if (PerfectLib.f39738a.m) {
                                                PerfectLib.b(bVar.reshape, enumSetNoneOf2, Functionality.RESHAPE, z2);
                                            }
                                            if (!enumSetNoneOf2.contains(Functionality.RESHAPE)) {
                                                PerfectLib.f39738a.m = false;
                                                PerfectLib.f39739b.m = false;
                                            }
                                            if (PerfectLib.f39738a.n) {
                                                PerfectLib.b(bVar.eyewear, enumSetNoneOf2, Functionality.EYEWEAR, z2);
                                            }
                                            if (!enumSetNoneOf2.contains(Functionality.EYEWEAR)) {
                                                PerfectLib.f39738a.n = false;
                                                PerfectLib.f39739b.n = false;
                                            }
                                            if (PerfectLib.f39738a.o) {
                                                PerfectLib.b(bVar.eyewear3D, enumSetNoneOf2, Functionality.EYEWEAR_3D, z2);
                                            }
                                            if (!enumSetNoneOf2.contains(Functionality.EYEWEAR_3D)) {
                                                PerfectLib.f39738a.o = false;
                                                PerfectLib.f39739b.o = false;
                                            }
                                            if (PerfectLib.f39738a.p) {
                                                PerfectLib.b(bVar.earring, enumSetNoneOf2, Functionality.EARRINGS, z2);
                                            }
                                            if (!enumSetNoneOf2.contains(Functionality.EARRINGS)) {
                                                PerfectLib.f39738a.p = false;
                                                PerfectLib.f39739b.p = false;
                                            }
                                            if (PerfectLib.f39738a.q) {
                                                PerfectLib.b(bVar.background, enumSetNoneOf2, Functionality.BACKGROUND, z2);
                                            }
                                            if (!enumSetNoneOf2.contains(Functionality.BACKGROUND)) {
                                                PerfectLib.f39738a.q = false;
                                                PerfectLib.f39739b.q = false;
                                            }
                                        }
                                        if (ModuleConfig.y) {
                                            PerfectLib.b(bVar.necklace, enumSetNoneOf2, Functionality.NECKLACE, z2);
                                        }
                                        if (ModuleConfig.u) {
                                            PerfectLib.b(bVar.aiFaceAnalyzer, enumSetNoneOf2, Functionality.FACE_ATTRIBUTE, z2);
                                        }
                                        if (ModuleConfig.v) {
                                            PerfectLib.b(bVar.nail, enumSetNoneOf2, Functionality.NAIL, z2);
                                            PerfectLib.b(bVar.ring, enumSetNoneOf2, Functionality.RING, z2);
                                            PerfectLib.b(bVar.watch, enumSetNoneOf2, Functionality.WATCH, z2);
                                            PerfectLib.b(bVar.bracelet, enumSetNoneOf2, Functionality.BRACELET, z2);
                                            PerfectLib.b(bVar.stacking, enumSetNoneOf2, Functionality.JEWELRY, z2);
                                        }
                                        if (ModuleConfig.x) {
                                            PerfectLib.b(bVar.hairStyle, enumSetNoneOf2, Functionality.HAIR_STYLIST, z2);
                                        }
                                        if (ModuleConfig.w) {
                                            PerfectLib.b(bVar.tutorial, enumSetNoneOf2, Functionality.TUTORIAL, z2);
                                        }
                                        Log.g(3, "PerfectLib", "[getAvailableFunctionalities] effectParams=" + PerfectLib.f39738a);
                                        Log.g(3, "PerfectLib", "[getAvailableFunctionalities] photoMakeupParams=" + PerfectLib.f39739b);
                                        return ImmutableSet.q(enumSetNoneOf2);
                                    default:
                                        ApplyEffectParams applyEffectParams4 = PerfectLib.f39738a;
                                        NetworkTaskManagerHolder.b().f42003a = configuration3.g;
                                        NetworkTaskManager networkTaskManagerA = NetworkTaskManagerHolder.a();
                                        b bVarA = Singles.a(FluentFuture.a(networkTaskManagerA.f39341b.a(networkTaskManagerA.f39342c)), CallingThread.ANY);
                                        a aVarR = a.r();
                                        Objects.requireNonNull(aVarR);
                                        return new o(new k(bVarA.f(new o2(aVarR, 13))), new tg0(14));
                                }
                            }
                        })).e(new v(configuration2, 3)), new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.e(new Callable() { // from class: fn0
                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                int i4 = i3;
                                final int i5 = 1;
                                final int i6 = 0;
                                Configuration configuration3 = configuration2;
                                switch (i4) {
                                    case 0:
                                        ApplyEffectParams applyEffectParams2 = PerfectLib.f39738a;
                                        final boolean z = configuration3.f39520i;
                                        Log.g(3, "PerfectLib", "setPreviewMode start. isEnable=" + z);
                                        if (a.r().getBoolean("ENABLE_PREVIEW_MODE", false) != z) {
                                            return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(new o(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(new o(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(new o(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(new o(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(new o(new e(new a8(8)), new tg0(15)), new e(new a8(9))), new tg0(16)), new e(new m3(i6))), new tg0(17)), new e(new m3(i5))), new tg0(18)), new e(new a8(10))), new tg0(19)), new i(new Action() { // from class: in0
                                                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Action
                                                public final void run() {
                                                    a aVarR;
                                                    String str;
                                                    int i7 = i6;
                                                    boolean z2 = z;
                                                    switch (i7) {
                                                        case 0:
                                                            ApplyEffectParams applyEffectParams3 = PerfectLib.f39738a;
                                                            Log.g(3, "PerfectLib", "clear tutorial finish");
                                                            Object obj2 = com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.a.f42002c;
                                                            Log.g(3, "SDKInitHandler", "[updateDomain] start");
                                                            synchronized (com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.a.f42002c) {
                                                                try {
                                                                    Log.g(3, "SDKInitHandler", "[updateDomain] enter critical section");
                                                                    a aVarR2 = a.r();
                                                                    aVarR2.getClass();
                                                                    if (!aVarR2.n.contains("ENABLE_PREVIEW_MODE") || aVarR2.getBoolean("ENABLE_PREVIEW_MODE", false) != z2) {
                                                                        aVarR2.edit().putBoolean("ENABLE_PREVIEW_MODE", z2).apply();
                                                                    }
                                                                    if (z2) {
                                                                        aVarR = a.r();
                                                                        str = "TESTBED_DOMAIN";
                                                                    } else {
                                                                        aVarR = a.r();
                                                                        str = "PRODUCTION_DOMAIN";
                                                                    }
                                                                    NetworkManager.f41984a = aVarR.getString(str, null);
                                                                    Log.g(3, "SDKInitHandler", "[updateDomain] Update domain finished. current domain=" + NetworkManager.f41984a);
                                                                    Log.g(3, "SDKInitHandler", "[updateDomain] exit critical section");
                                                                } catch (Throwable th) {
                                                                    throw th;
                                                                }
                                                                break;
                                                            }
                                                            Log.g(3, "SDKInitHandler", "[updateDomain] end");
                                                            return;
                                                        default:
                                                            ApplyEffectParams applyEffectParams4 = PerfectLib.f39738a;
                                                            Log.g(3, "PerfectLib", "setPreviewMode end. isEnable=" + z2);
                                                            return;
                                                    }
                                                }
                                            })).h(new Action() { // from class: in0
                                                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Action
                                                public final void run() {
                                                    a aVarR;
                                                    String str;
                                                    int i7 = i5;
                                                    boolean z2 = z;
                                                    switch (i7) {
                                                        case 0:
                                                            ApplyEffectParams applyEffectParams3 = PerfectLib.f39738a;
                                                            Log.g(3, "PerfectLib", "clear tutorial finish");
                                                            Object obj2 = com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.a.f42002c;
                                                            Log.g(3, "SDKInitHandler", "[updateDomain] start");
                                                            synchronized (com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.a.f42002c) {
                                                                try {
                                                                    Log.g(3, "SDKInitHandler", "[updateDomain] enter critical section");
                                                                    a aVarR2 = a.r();
                                                                    aVarR2.getClass();
                                                                    if (!aVarR2.n.contains("ENABLE_PREVIEW_MODE") || aVarR2.getBoolean("ENABLE_PREVIEW_MODE", false) != z2) {
                                                                        aVarR2.edit().putBoolean("ENABLE_PREVIEW_MODE", z2).apply();
                                                                    }
                                                                    if (z2) {
                                                                        aVarR = a.r();
                                                                        str = "TESTBED_DOMAIN";
                                                                    } else {
                                                                        aVarR = a.r();
                                                                        str = "PRODUCTION_DOMAIN";
                                                                    }
                                                                    NetworkManager.f41984a = aVarR.getString(str, null);
                                                                    Log.g(3, "SDKInitHandler", "[updateDomain] Update domain finished. current domain=" + NetworkManager.f41984a);
                                                                    Log.g(3, "SDKInitHandler", "[updateDomain] exit critical section");
                                                                } catch (Throwable th) {
                                                                    throw th;
                                                                }
                                                                break;
                                                            }
                                                            Log.g(3, "SDKInitHandler", "[updateDomain] end");
                                                            return;
                                                        default:
                                                            ApplyEffectParams applyEffectParams4 = PerfectLib.f39738a;
                                                            Log.g(3, "PerfectLib", "setPreviewMode end. isEnable=" + z2);
                                                            return;
                                                    }
                                                }
                                            });
                                        }
                                        Log.g(3, "PerfectLib", "setPreviewMode (unchanged) end. isEnable=" + z);
                                        return g.f42660b;
                                    case 1:
                                        ApplyEffectParams applyEffectParams3 = PerfectLib.f39738a;
                                        String string = a.r().getString("2b1dd7b5-41ce-401a-a3d9-d594271817cf", null);
                                        Gson gson = GsonBaseResponse.f41999a;
                                        if (string == null) {
                                            string = "";
                                        }
                                        InitResponse.b bVar = (InitResponse.b) gson.i(a.s(string), InitResponse.b.class);
                                        if (bVar == null) {
                                            EnumSet enumSetNoneOf = EnumSet.noneOf(Functionality.class);
                                            if (ModuleConfig.r) {
                                                enumSetNoneOf.add(Functionality.SHADE_FINDER);
                                            }
                                            if (ModuleConfig.s) {
                                                enumSetNoneOf.add(Functionality.SKIN_CARE);
                                                enumSetNoneOf.add(Functionality.SKIN_CARE_HD);
                                            }
                                            if (ModuleConfig.q) {
                                                if (PerfectLib.f39738a.f40070i || PerfectLib.f39739b.f40070i) {
                                                    enumSetNoneOf.add(Functionality.MAKEUP);
                                                } else if (enumSetNoneOf.contains(Functionality.SHADE_FINDER)) {
                                                    Log.g(3, "PerfectLib", "Add makeup functionality for shade finder. Only foundation can be used.");
                                                    enumSetNoneOf.add(Functionality.MAKEUP);
                                                    PerfectLib.f39738a.f40072k = true;
                                                    PerfectLib.f39739b.f40072k = true;
                                                }
                                                if (PerfectLib.f39738a.f40071j || PerfectLib.f39739b.f40071j) {
                                                    enumSetNoneOf.add(Functionality.HAIR_COLOR);
                                                }
                                            }
                                            return ImmutableSet.q(enumSetNoneOf);
                                        }
                                        boolean z2 = configuration3.g;
                                        EnumSet enumSetNoneOf2 = EnumSet.noneOf(Functionality.class);
                                        if (ModuleConfig.r) {
                                            PerfectLib.b(bVar.shadeFinder, enumSetNoneOf2, Functionality.SHADE_FINDER, z2);
                                        }
                                        if (ModuleConfig.s) {
                                            PerfectLib.b(bVar.skincare, enumSetNoneOf2, Functionality.SKIN_CARE, z2);
                                            PerfectLib.b(bVar.skincareHD, enumSetNoneOf2, Functionality.SKIN_CARE_HD, z2);
                                        }
                                        if (ModuleConfig.q) {
                                            if (PerfectLib.f39738a.f40070i || PerfectLib.f39739b.f40070i) {
                                                PerfectLib.b(bVar.makeup, enumSetNoneOf2, Functionality.MAKEUP, z2);
                                            }
                                            Functionality functionality = Functionality.MAKEUP;
                                            if (!enumSetNoneOf2.contains(functionality)) {
                                                PerfectLib.f39738a.g = false;
                                                PerfectLib.f39738a.f40069h = false;
                                                PerfectLib.f39738a.r = false;
                                                PerfectLib.f39738a.f40070i = false;
                                                PerfectLib.f39739b.g = false;
                                                PerfectLib.f39739b.f40069h = false;
                                                PerfectLib.f39739b.r = false;
                                                PerfectLib.f39739b.f40070i = false;
                                                if (enumSetNoneOf2.contains(Functionality.SHADE_FINDER)) {
                                                    Log.g(3, "PerfectLib", "Add makeup functionality for shade finder. Only foundation can be used.");
                                                    enumSetNoneOf2.add(functionality);
                                                    PerfectLib.f39738a.f40072k = true;
                                                    PerfectLib.f39739b.f40072k = true;
                                                }
                                            }
                                            if (PerfectLib.f39738a.f40071j || PerfectLib.f39739b.f40071j) {
                                                PerfectLib.b(bVar.hairColor, enumSetNoneOf2, Functionality.HAIR_COLOR, z2);
                                            }
                                            if (!enumSetNoneOf2.contains(Functionality.HAIR_COLOR)) {
                                                PerfectLib.f39738a.f40071j = false;
                                                PerfectLib.f39739b.f40071j = false;
                                            }
                                            if (PerfectLib.f39738a.l) {
                                                PerfectLib.b(bVar.funSticker, enumSetNoneOf2, Functionality.FUN_STICKER, z2);
                                            }
                                            if (!enumSetNoneOf2.contains(Functionality.FUN_STICKER)) {
                                                PerfectLib.f39738a.l = false;
                                            }
                                            if (PerfectLib.f39738a.m) {
                                                PerfectLib.b(bVar.reshape, enumSetNoneOf2, Functionality.RESHAPE, z2);
                                            }
                                            if (!enumSetNoneOf2.contains(Functionality.RESHAPE)) {
                                                PerfectLib.f39738a.m = false;
                                                PerfectLib.f39739b.m = false;
                                            }
                                            if (PerfectLib.f39738a.n) {
                                                PerfectLib.b(bVar.eyewear, enumSetNoneOf2, Functionality.EYEWEAR, z2);
                                            }
                                            if (!enumSetNoneOf2.contains(Functionality.EYEWEAR)) {
                                                PerfectLib.f39738a.n = false;
                                                PerfectLib.f39739b.n = false;
                                            }
                                            if (PerfectLib.f39738a.o) {
                                                PerfectLib.b(bVar.eyewear3D, enumSetNoneOf2, Functionality.EYEWEAR_3D, z2);
                                            }
                                            if (!enumSetNoneOf2.contains(Functionality.EYEWEAR_3D)) {
                                                PerfectLib.f39738a.o = false;
                                                PerfectLib.f39739b.o = false;
                                            }
                                            if (PerfectLib.f39738a.p) {
                                                PerfectLib.b(bVar.earring, enumSetNoneOf2, Functionality.EARRINGS, z2);
                                            }
                                            if (!enumSetNoneOf2.contains(Functionality.EARRINGS)) {
                                                PerfectLib.f39738a.p = false;
                                                PerfectLib.f39739b.p = false;
                                            }
                                            if (PerfectLib.f39738a.q) {
                                                PerfectLib.b(bVar.background, enumSetNoneOf2, Functionality.BACKGROUND, z2);
                                            }
                                            if (!enumSetNoneOf2.contains(Functionality.BACKGROUND)) {
                                                PerfectLib.f39738a.q = false;
                                                PerfectLib.f39739b.q = false;
                                            }
                                        }
                                        if (ModuleConfig.y) {
                                            PerfectLib.b(bVar.necklace, enumSetNoneOf2, Functionality.NECKLACE, z2);
                                        }
                                        if (ModuleConfig.u) {
                                            PerfectLib.b(bVar.aiFaceAnalyzer, enumSetNoneOf2, Functionality.FACE_ATTRIBUTE, z2);
                                        }
                                        if (ModuleConfig.v) {
                                            PerfectLib.b(bVar.nail, enumSetNoneOf2, Functionality.NAIL, z2);
                                            PerfectLib.b(bVar.ring, enumSetNoneOf2, Functionality.RING, z2);
                                            PerfectLib.b(bVar.watch, enumSetNoneOf2, Functionality.WATCH, z2);
                                            PerfectLib.b(bVar.bracelet, enumSetNoneOf2, Functionality.BRACELET, z2);
                                            PerfectLib.b(bVar.stacking, enumSetNoneOf2, Functionality.JEWELRY, z2);
                                        }
                                        if (ModuleConfig.x) {
                                            PerfectLib.b(bVar.hairStyle, enumSetNoneOf2, Functionality.HAIR_STYLIST, z2);
                                        }
                                        if (ModuleConfig.w) {
                                            PerfectLib.b(bVar.tutorial, enumSetNoneOf2, Functionality.TUTORIAL, z2);
                                        }
                                        Log.g(3, "PerfectLib", "[getAvailableFunctionalities] effectParams=" + PerfectLib.f39738a);
                                        Log.g(3, "PerfectLib", "[getAvailableFunctionalities] photoMakeupParams=" + PerfectLib.f39739b);
                                        return ImmutableSet.q(enumSetNoneOf2);
                                    default:
                                        ApplyEffectParams applyEffectParams4 = PerfectLib.f39738a;
                                        NetworkTaskManagerHolder.b().f42003a = configuration3.g;
                                        NetworkTaskManager networkTaskManagerA = NetworkTaskManagerHolder.a();
                                        b bVarA = Singles.a(FluentFuture.a(networkTaskManagerA.f39341b.a(networkTaskManagerA.f39342c)), CallingThread.ANY);
                                        a aVarR = a.r();
                                        Objects.requireNonNull(aVarR);
                                        return new o(new k(bVarA.f(new o2(aVarR, 13))), new tg0(14));
                                }
                            }
                        })), new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.e(new l3(configuration2, initialCallbackWrapper2, i3))).e(new gn0(configuration2, i3));
                        final int i4 = 1;
                        new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.w(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.d(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p(new Callable() { // from class: fn0
                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                int i5 = i4;
                                final int i6 = 1;
                                final int i7 = 0;
                                Configuration configuration3 = configuration2;
                                switch (i5) {
                                    case 0:
                                        ApplyEffectParams applyEffectParams2 = PerfectLib.f39738a;
                                        final boolean z = configuration3.f39520i;
                                        Log.g(3, "PerfectLib", "setPreviewMode start. isEnable=" + z);
                                        if (a.r().getBoolean("ENABLE_PREVIEW_MODE", false) != z) {
                                            return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(new o(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(new o(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(new o(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(new o(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(new o(new e(new a8(8)), new tg0(15)), new e(new a8(9))), new tg0(16)), new e(new m3(i7))), new tg0(17)), new e(new m3(i6))), new tg0(18)), new e(new a8(10))), new tg0(19)), new i(new Action() { // from class: in0
                                                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Action
                                                public final void run() {
                                                    a aVarR;
                                                    String str;
                                                    int i8 = i7;
                                                    boolean z2 = z;
                                                    switch (i8) {
                                                        case 0:
                                                            ApplyEffectParams applyEffectParams3 = PerfectLib.f39738a;
                                                            Log.g(3, "PerfectLib", "clear tutorial finish");
                                                            Object obj2 = com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.a.f42002c;
                                                            Log.g(3, "SDKInitHandler", "[updateDomain] start");
                                                            synchronized (com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.a.f42002c) {
                                                                try {
                                                                    Log.g(3, "SDKInitHandler", "[updateDomain] enter critical section");
                                                                    a aVarR2 = a.r();
                                                                    aVarR2.getClass();
                                                                    if (!aVarR2.n.contains("ENABLE_PREVIEW_MODE") || aVarR2.getBoolean("ENABLE_PREVIEW_MODE", false) != z2) {
                                                                        aVarR2.edit().putBoolean("ENABLE_PREVIEW_MODE", z2).apply();
                                                                    }
                                                                    if (z2) {
                                                                        aVarR = a.r();
                                                                        str = "TESTBED_DOMAIN";
                                                                    } else {
                                                                        aVarR = a.r();
                                                                        str = "PRODUCTION_DOMAIN";
                                                                    }
                                                                    NetworkManager.f41984a = aVarR.getString(str, null);
                                                                    Log.g(3, "SDKInitHandler", "[updateDomain] Update domain finished. current domain=" + NetworkManager.f41984a);
                                                                    Log.g(3, "SDKInitHandler", "[updateDomain] exit critical section");
                                                                } catch (Throwable th) {
                                                                    throw th;
                                                                }
                                                                break;
                                                            }
                                                            Log.g(3, "SDKInitHandler", "[updateDomain] end");
                                                            return;
                                                        default:
                                                            ApplyEffectParams applyEffectParams4 = PerfectLib.f39738a;
                                                            Log.g(3, "PerfectLib", "setPreviewMode end. isEnable=" + z2);
                                                            return;
                                                    }
                                                }
                                            })).h(new Action() { // from class: in0
                                                @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Action
                                                public final void run() {
                                                    a aVarR;
                                                    String str;
                                                    int i8 = i6;
                                                    boolean z2 = z;
                                                    switch (i8) {
                                                        case 0:
                                                            ApplyEffectParams applyEffectParams3 = PerfectLib.f39738a;
                                                            Log.g(3, "PerfectLib", "clear tutorial finish");
                                                            Object obj2 = com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.a.f42002c;
                                                            Log.g(3, "SDKInitHandler", "[updateDomain] start");
                                                            synchronized (com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.a.f42002c) {
                                                                try {
                                                                    Log.g(3, "SDKInitHandler", "[updateDomain] enter critical section");
                                                                    a aVarR2 = a.r();
                                                                    aVarR2.getClass();
                                                                    if (!aVarR2.n.contains("ENABLE_PREVIEW_MODE") || aVarR2.getBoolean("ENABLE_PREVIEW_MODE", false) != z2) {
                                                                        aVarR2.edit().putBoolean("ENABLE_PREVIEW_MODE", z2).apply();
                                                                    }
                                                                    if (z2) {
                                                                        aVarR = a.r();
                                                                        str = "TESTBED_DOMAIN";
                                                                    } else {
                                                                        aVarR = a.r();
                                                                        str = "PRODUCTION_DOMAIN";
                                                                    }
                                                                    NetworkManager.f41984a = aVarR.getString(str, null);
                                                                    Log.g(3, "SDKInitHandler", "[updateDomain] Update domain finished. current domain=" + NetworkManager.f41984a);
                                                                    Log.g(3, "SDKInitHandler", "[updateDomain] exit critical section");
                                                                } catch (Throwable th) {
                                                                    throw th;
                                                                }
                                                                break;
                                                            }
                                                            Log.g(3, "SDKInitHandler", "[updateDomain] end");
                                                            return;
                                                        default:
                                                            ApplyEffectParams applyEffectParams4 = PerfectLib.f39738a;
                                                            Log.g(3, "PerfectLib", "setPreviewMode end. isEnable=" + z2);
                                                            return;
                                                    }
                                                }
                                            });
                                        }
                                        Log.g(3, "PerfectLib", "setPreviewMode (unchanged) end. isEnable=" + z);
                                        return g.f42660b;
                                    case 1:
                                        ApplyEffectParams applyEffectParams3 = PerfectLib.f39738a;
                                        String string = a.r().getString("2b1dd7b5-41ce-401a-a3d9-d594271817cf", null);
                                        Gson gson = GsonBaseResponse.f41999a;
                                        if (string == null) {
                                            string = "";
                                        }
                                        InitResponse.b bVar = (InitResponse.b) gson.i(a.s(string), InitResponse.b.class);
                                        if (bVar == null) {
                                            EnumSet enumSetNoneOf = EnumSet.noneOf(Functionality.class);
                                            if (ModuleConfig.r) {
                                                enumSetNoneOf.add(Functionality.SHADE_FINDER);
                                            }
                                            if (ModuleConfig.s) {
                                                enumSetNoneOf.add(Functionality.SKIN_CARE);
                                                enumSetNoneOf.add(Functionality.SKIN_CARE_HD);
                                            }
                                            if (ModuleConfig.q) {
                                                if (PerfectLib.f39738a.f40070i || PerfectLib.f39739b.f40070i) {
                                                    enumSetNoneOf.add(Functionality.MAKEUP);
                                                } else if (enumSetNoneOf.contains(Functionality.SHADE_FINDER)) {
                                                    Log.g(3, "PerfectLib", "Add makeup functionality for shade finder. Only foundation can be used.");
                                                    enumSetNoneOf.add(Functionality.MAKEUP);
                                                    PerfectLib.f39738a.f40072k = true;
                                                    PerfectLib.f39739b.f40072k = true;
                                                }
                                                if (PerfectLib.f39738a.f40071j || PerfectLib.f39739b.f40071j) {
                                                    enumSetNoneOf.add(Functionality.HAIR_COLOR);
                                                }
                                            }
                                            return ImmutableSet.q(enumSetNoneOf);
                                        }
                                        boolean z2 = configuration3.g;
                                        EnumSet enumSetNoneOf2 = EnumSet.noneOf(Functionality.class);
                                        if (ModuleConfig.r) {
                                            PerfectLib.b(bVar.shadeFinder, enumSetNoneOf2, Functionality.SHADE_FINDER, z2);
                                        }
                                        if (ModuleConfig.s) {
                                            PerfectLib.b(bVar.skincare, enumSetNoneOf2, Functionality.SKIN_CARE, z2);
                                            PerfectLib.b(bVar.skincareHD, enumSetNoneOf2, Functionality.SKIN_CARE_HD, z2);
                                        }
                                        if (ModuleConfig.q) {
                                            if (PerfectLib.f39738a.f40070i || PerfectLib.f39739b.f40070i) {
                                                PerfectLib.b(bVar.makeup, enumSetNoneOf2, Functionality.MAKEUP, z2);
                                            }
                                            Functionality functionality = Functionality.MAKEUP;
                                            if (!enumSetNoneOf2.contains(functionality)) {
                                                PerfectLib.f39738a.g = false;
                                                PerfectLib.f39738a.f40069h = false;
                                                PerfectLib.f39738a.r = false;
                                                PerfectLib.f39738a.f40070i = false;
                                                PerfectLib.f39739b.g = false;
                                                PerfectLib.f39739b.f40069h = false;
                                                PerfectLib.f39739b.r = false;
                                                PerfectLib.f39739b.f40070i = false;
                                                if (enumSetNoneOf2.contains(Functionality.SHADE_FINDER)) {
                                                    Log.g(3, "PerfectLib", "Add makeup functionality for shade finder. Only foundation can be used.");
                                                    enumSetNoneOf2.add(functionality);
                                                    PerfectLib.f39738a.f40072k = true;
                                                    PerfectLib.f39739b.f40072k = true;
                                                }
                                            }
                                            if (PerfectLib.f39738a.f40071j || PerfectLib.f39739b.f40071j) {
                                                PerfectLib.b(bVar.hairColor, enumSetNoneOf2, Functionality.HAIR_COLOR, z2);
                                            }
                                            if (!enumSetNoneOf2.contains(Functionality.HAIR_COLOR)) {
                                                PerfectLib.f39738a.f40071j = false;
                                                PerfectLib.f39739b.f40071j = false;
                                            }
                                            if (PerfectLib.f39738a.l) {
                                                PerfectLib.b(bVar.funSticker, enumSetNoneOf2, Functionality.FUN_STICKER, z2);
                                            }
                                            if (!enumSetNoneOf2.contains(Functionality.FUN_STICKER)) {
                                                PerfectLib.f39738a.l = false;
                                            }
                                            if (PerfectLib.f39738a.m) {
                                                PerfectLib.b(bVar.reshape, enumSetNoneOf2, Functionality.RESHAPE, z2);
                                            }
                                            if (!enumSetNoneOf2.contains(Functionality.RESHAPE)) {
                                                PerfectLib.f39738a.m = false;
                                                PerfectLib.f39739b.m = false;
                                            }
                                            if (PerfectLib.f39738a.n) {
                                                PerfectLib.b(bVar.eyewear, enumSetNoneOf2, Functionality.EYEWEAR, z2);
                                            }
                                            if (!enumSetNoneOf2.contains(Functionality.EYEWEAR)) {
                                                PerfectLib.f39738a.n = false;
                                                PerfectLib.f39739b.n = false;
                                            }
                                            if (PerfectLib.f39738a.o) {
                                                PerfectLib.b(bVar.eyewear3D, enumSetNoneOf2, Functionality.EYEWEAR_3D, z2);
                                            }
                                            if (!enumSetNoneOf2.contains(Functionality.EYEWEAR_3D)) {
                                                PerfectLib.f39738a.o = false;
                                                PerfectLib.f39739b.o = false;
                                            }
                                            if (PerfectLib.f39738a.p) {
                                                PerfectLib.b(bVar.earring, enumSetNoneOf2, Functionality.EARRINGS, z2);
                                            }
                                            if (!enumSetNoneOf2.contains(Functionality.EARRINGS)) {
                                                PerfectLib.f39738a.p = false;
                                                PerfectLib.f39739b.p = false;
                                            }
                                            if (PerfectLib.f39738a.q) {
                                                PerfectLib.b(bVar.background, enumSetNoneOf2, Functionality.BACKGROUND, z2);
                                            }
                                            if (!enumSetNoneOf2.contains(Functionality.BACKGROUND)) {
                                                PerfectLib.f39738a.q = false;
                                                PerfectLib.f39739b.q = false;
                                            }
                                        }
                                        if (ModuleConfig.y) {
                                            PerfectLib.b(bVar.necklace, enumSetNoneOf2, Functionality.NECKLACE, z2);
                                        }
                                        if (ModuleConfig.u) {
                                            PerfectLib.b(bVar.aiFaceAnalyzer, enumSetNoneOf2, Functionality.FACE_ATTRIBUTE, z2);
                                        }
                                        if (ModuleConfig.v) {
                                            PerfectLib.b(bVar.nail, enumSetNoneOf2, Functionality.NAIL, z2);
                                            PerfectLib.b(bVar.ring, enumSetNoneOf2, Functionality.RING, z2);
                                            PerfectLib.b(bVar.watch, enumSetNoneOf2, Functionality.WATCH, z2);
                                            PerfectLib.b(bVar.bracelet, enumSetNoneOf2, Functionality.BRACELET, z2);
                                            PerfectLib.b(bVar.stacking, enumSetNoneOf2, Functionality.JEWELRY, z2);
                                        }
                                        if (ModuleConfig.x) {
                                            PerfectLib.b(bVar.hairStyle, enumSetNoneOf2, Functionality.HAIR_STYLIST, z2);
                                        }
                                        if (ModuleConfig.w) {
                                            PerfectLib.b(bVar.tutorial, enumSetNoneOf2, Functionality.TUTORIAL, z2);
                                        }
                                        Log.g(3, "PerfectLib", "[getAvailableFunctionalities] effectParams=" + PerfectLib.f39738a);
                                        Log.g(3, "PerfectLib", "[getAvailableFunctionalities] photoMakeupParams=" + PerfectLib.f39739b);
                                        return ImmutableSet.q(enumSetNoneOf2);
                                    default:
                                        ApplyEffectParams applyEffectParams4 = PerfectLib.f39738a;
                                        NetworkTaskManagerHolder.b().f42003a = configuration3.g;
                                        NetworkTaskManager networkTaskManagerA = NetworkTaskManagerHolder.a();
                                        b bVarA = Singles.a(FluentFuture.a(networkTaskManagerA.f39341b.a(networkTaskManagerA.f39342c)), CallingThread.ANY);
                                        a aVarR = a.r();
                                        Objects.requireNonNull(aVarR);
                                        return new o(new k(bVarA.f(new o2(aVarR, 13))), new tg0(14));
                                }
                            }
                        }), nVarE).f(new d8(13)), new tg0(20)).i(AndroidSchedulers.a()).a(new ConsumerSingleObserver(new na0(configuration2, settableFuture2, i2), new jn0(settableFuture2, i3)));
                    }
                }, AsyncTask.THREAD_POOL_EXECUTOR);
                listenableFuture = l;
                defaultFutureCallback = new DefaultFutureCallback<Set<Functionality>>() { // from class: com.perfectcorp.perfectlib.PerfectLib.2
                    @Override // com.perfectcorp.common.guava.DefaultFutureCallback, com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
                    public final void onFailure(Throwable th) {
                        StringBuilder sb2 = new StringBuilder("[onFailure] preloadError=");
                        InitialCallbackWrapper initialCallbackWrapper2 = initialCallbackWrapper;
                        ConcurrentHashMap concurrentHashMap = initialCallbackWrapper2.f39754b;
                        sb2.append(concurrentHashMap);
                        Log.d("InitialCallbackWrapper", sb2.toString());
                        initialCallbackWrapper2.f39753a.onFailure(th, concurrentHashMap);
                    }

                    @Override // com.perfectcorp.common.guava.DefaultFutureCallback, com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
                    public final void onSuccess(Object obj) {
                        StringBuilder sb2 = new StringBuilder("[onInitialized] preloadError=");
                        InitialCallbackWrapper initialCallbackWrapper2 = initialCallbackWrapper;
                        ConcurrentHashMap concurrentHashMap = initialCallbackWrapper2.f39754b;
                        sb2.append(concurrentHashMap);
                        Log.g(3, "InitialCallbackWrapper", sb2.toString());
                        initialCallbackWrapper2.f39753a.onInitialized((Set) obj, concurrentHashMap);
                    }
                };
            }
        }
        MoreFutures.a(listenableFuture, defaultFutureCallback, CallingThread.MAIN);
    }

    public static void release(ReleaseCallback releaseCallback) {
        Threads.a();
        Objects.requireNonNull(releaseCallback, "releaseCallback can't be null");
        final ReleaseCallback releaseCallback2 = (ReleaseCallback) Proxies.a(ReleaseCallback.class, releaseCallback);
        if (f39745j == State.RELEASED) {
            Log.g(3, "PerfectLib", "SDK already released.");
            Objects.requireNonNull(releaseCallback2);
            PfCommons.c(new hn0(releaseCallback2, 0));
            return;
        }
        State state = f39745j;
        State state2 = State.RELEASING;
        if (state == state2) {
            Log.g(3, "PerfectLib", "SDK is releasing.");
            MoreFutures.a(m, new DefaultFutureCallback<Object>() { // from class: com.perfectcorp.perfectlib.PerfectLib.4
                @Override // com.perfectcorp.common.guava.DefaultFutureCallback, com.perfectcorp.common.guava.b
                public final void a() {
                    releaseCallback2.onReleased();
                }

                @Override // com.perfectcorp.common.guava.DefaultFutureCallback, com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
                public final void onFailure(Throwable th) {
                }

                @Override // com.perfectcorp.common.guava.DefaultFutureCallback, com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
                public final void onSuccess(Object obj) {
                }
            }, CallingThread.MAIN);
            return;
        }
        Log.g(3, "PerfectLib", "SDK start releasing.");
        f39745j = state2;
        final SettableFuture settableFuture = new SettableFuture();
        m = settableFuture;
        MoreFutures.a(l, new DefaultFutureCallback<Object>() { // from class: com.perfectcorp.perfectlib.PerfectLib.3
            @Override // com.perfectcorp.common.guava.DefaultFutureCallback, com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
            public final void onFailure(Throwable th) {
                int i2 = Log.f39427a;
                Log.g(4, "PerfectLib", "Release task waits for init task but init task failed. So, it already released SDK\n" + Log.f(th));
                settableFuture.set("PerfectLib");
            }

            @Override // com.perfectcorp.common.guava.DefaultFutureCallback, com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
            public final void onSuccess(Object obj) {
                com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.m mVar = new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.m(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a(PerfectLib.a(), new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.o(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.j(new e5(6)), new tg0(21))), AndroidSchedulers.a());
                SettableFuture settableFuture2 = settableFuture;
                mVar.a(new CallbackCompletableObserver(new c(settableFuture2, 4), new v(settableFuture2, 2)));
            }
        }, AsyncTask.THREAD_POOL_EXECUTOR);
        MoreFutures.a(m, new DefaultFutureCallback<Object>() { // from class: com.perfectcorp.perfectlib.PerfectLib.4
            @Override // com.perfectcorp.common.guava.DefaultFutureCallback, com.perfectcorp.common.guava.b
            public final void a() {
                releaseCallback2.onReleased();
            }

            @Override // com.perfectcorp.common.guava.DefaultFutureCallback, com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
            public final void onFailure(Throwable th) {
            }

            @Override // com.perfectcorp.common.guava.DefaultFutureCallback, com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
            public final void onSuccess(Object obj) {
            }
        }, CallingThread.MAIN);
    }

    public static boolean setCountryCode(String str) {
        String str2;
        c();
        if (TextUtils.isEmpty(str)) {
            str2 = "countryCode is empty string or null.";
        } else {
            if (Pattern.compile("^[a-zA-Z]{2}$").matcher(str).matches()) {
                Log.g(4, "PerfectLib", "Set countryCode=\"" + str + "\" to SDK.");
                QuickLaunchPreferenceHelper.f42021a.o("SETTING_COUNTRY_CODE", str);
                return true;
            }
            str2 = "countryCode doesn't match the pattern /^[a-zA-Z]{2}$/.";
        }
        Log.d("PerfectLib", str2);
        return false;
    }

    public static void setDebugMode(DebugMode debugMode) {
        Objects.requireNonNull(debugMode, "debugMode can't be null");
        Log.g(3, "PerfectLib", "[setDebugMode] debugMode=" + debugMode);
        if (com.perfectcorp.perfectlib.internal.a.f40371a.logcat) {
            Log.g(3, "PerfectLib", "[setDebugMode] logcat debug flag on, skip config");
        } else if (debugMode.f39542a) {
            com.perfectcorp.common.logger.j.c(true);
            int i2 = debugMode.f39543b;
            if (i2 == 2 || i2 == 3 || i2 == 4 || i2 == 5 || i2 == 6) {
                Log.f39427a = i2;
            }
        } else {
            com.perfectcorp.common.logger.j.c(false);
        }
        if (com.perfectcorp.perfectlib.internal.a.f40371a.file) {
            Log.g(3, "PerfectLib", "[setDebugMode] file logger debug flag on, skip config");
            return;
        }
        if (!debugMode.f39544c) {
            com.perfectcorp.common.logger.j.a();
            return;
        }
        com.perfectcorp.common.logger.j.b(debugMode.d);
        int i3 = debugMode.f39545e;
        com.perfectcorp.common.logger.a aVar = (com.perfectcorp.common.logger.a) com.perfectcorp.common.logger.j.f39297a.get();
        if (aVar != null) {
            if (i3 == 2 || i3 == 3 || i3 == 4 || i3 == 5 || i3 == 6) {
                aVar.f39271b = i3;
            }
        }
    }

    public static void setDownloadCacheStrategy(DownloadCacheStrategy downloadCacheStrategy) {
        Objects.requireNonNull(downloadCacheStrategy, "downloadCacheStrategy can't be null");
        f39743h = downloadCacheStrategy;
    }

    public static boolean setLocaleCode(String str) {
        String str2;
        c();
        if (TextUtils.isEmpty(str)) {
            str2 = "localeCode is empty string or null.";
        } else {
            if (Pattern.compile("^[a-zA-Z]{2}_[a-zA-Z]{2}$").matcher(str).matches()) {
                Log.g(4, "PerfectLib", "Set localeCode=\"" + str + "\" to SDK.");
                QuickLaunchPreferenceHelper.f42021a.o("SETTING_LANGUAGE_LOCALE_CODE", str);
                return true;
            }
            str2 = "localeCode doesn't match the pattern /^[a-zA-Z]{2}_[a-zA-Z]{2}$.";
        }
        Log.d("PerfectLib", str2);
        return false;
    }

    public static void setMaxCacheSize(int i2) {
        c();
        if (i2 < 0) {
            md.n("maxCacheSizeInMb can't less than zero.");
            return;
        }
        com.perfectcorp.perfectlib.ymk.kernelctrl.preference.a.r().n(i2, "MAX_CACHE_SIZE_IN_MB");
        Log.g(3, "PerfectLib", "setMaxCacheSize=" + i2);
    }
}
