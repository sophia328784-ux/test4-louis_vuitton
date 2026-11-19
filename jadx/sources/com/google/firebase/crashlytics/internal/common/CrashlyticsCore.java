package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.text.TextUtils;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent;
import com.google.firebase.crashlytics.internal.CrashlyticsRemoteConfigListener;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.RemoteConfigDeferredProxy;
import com.google.firebase.crashlytics.internal.analytics.AnalyticsEventLogger;
import com.google.firebase.crashlytics.internal.breadcrumbs.BreadcrumbHandler;
import com.google.firebase.crashlytics.internal.breadcrumbs.BreadcrumbSource;
import com.google.firebase.crashlytics.internal.common.CrashlyticsCore;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import com.google.firebase.crashlytics.internal.metadata.EventMetadata;
import com.google.firebase.crashlytics.internal.metadata.LogFileManager;
import com.google.firebase.crashlytics.internal.metadata.UserMetadata;
import com.google.firebase.crashlytics.internal.persistence.CrashlyticsReportPersistence;
import com.google.firebase.crashlytics.internal.persistence.FileStore;
import com.google.firebase.crashlytics.internal.send.DataTransportCrashlyticsReportSender;
import com.google.firebase.crashlytics.internal.settings.Settings;
import com.google.firebase.crashlytics.internal.settings.SettingsController;
import com.google.firebase.crashlytics.internal.settings.SettingsProvider;
import com.google.firebase.crashlytics.internal.stacktrace.MiddleOutFallbackStrategy;
import com.google.firebase.crashlytics.internal.stacktrace.RemoveRepeatsStrategy;
import com.google.firebase.sessions.FirebaseSessionsComponent;
import com.google.firebase.sessions.SharedSessionRepository;
import com.google.firebase.sessions.api.CrashEventReceiver;
import defpackage.md;
import defpackage.no0;
import defpackage.uq;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public class CrashlyticsCore {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f34533a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DataCollectionArbiter f34534b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final OnDemandCounter f34535c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CrashlyticsFileMarker f34536e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public CrashlyticsFileMarker f34537f;
    public CrashlyticsController g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final IdManager f34538h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final FileStore f34539i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final BreadcrumbSource f34540j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AnalyticsEventLogger f34541k;
    public final CrashlyticsAppQualitySessionsSubscriber l;
    public final CrashlyticsNativeComponent m;
    public final RemoteConfigDeferredProxy n;
    public final CrashlyticsWorkers o;

    public CrashlyticsCore(FirebaseApp firebaseApp, IdManager idManager, CrashlyticsNativeComponent crashlyticsNativeComponent, DataCollectionArbiter dataCollectionArbiter, BreadcrumbSource breadcrumbSource, AnalyticsEventLogger analyticsEventLogger, FileStore fileStore, CrashlyticsAppQualitySessionsSubscriber crashlyticsAppQualitySessionsSubscriber, RemoteConfigDeferredProxy remoteConfigDeferredProxy, CrashlyticsWorkers crashlyticsWorkers) {
        this.f34534b = dataCollectionArbiter;
        firebaseApp.a();
        this.f34533a = firebaseApp.f34330a;
        this.f34538h = idManager;
        this.m = crashlyticsNativeComponent;
        this.f34540j = breadcrumbSource;
        this.f34541k = analyticsEventLogger;
        this.f34539i = fileStore;
        this.l = crashlyticsAppQualitySessionsSubscriber;
        this.n = remoteConfigDeferredProxy;
        this.o = crashlyticsWorkers;
        this.d = System.currentTimeMillis();
        this.f34535c = new OnDemandCounter();
    }

    public final void a(SettingsController settingsController) {
        CrashlyticsWorkers.a();
        CrashlyticsWorkers.a();
        this.f34536e.a();
        Logger logger = Logger.f34483b;
        logger.a(2);
        try {
            try {
                this.f34540j.a(new BreadcrumbHandler() { // from class: wq
                    @Override // com.google.firebase.crashlytics.internal.breadcrumbs.BreadcrumbHandler
                    public final void a(String str) {
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        CrashlyticsCore crashlyticsCore = this.f80926a;
                        crashlyticsCore.o.f34590a.b(new vq(crashlyticsCore, jCurrentTimeMillis - crashlyticsCore.d, str));
                    }
                });
                this.g.i();
                if (!settingsController.b().f35037b.f35041a) {
                    logger.a(3);
                    throw new RuntimeException("Collection of crash reports disabled in Crashlytics settings.");
                }
                if (!this.g.f(settingsController)) {
                    logger.a(5);
                }
                this.g.j(settingsController.a());
                c();
            } catch (Exception unused) {
                Logger.f34483b.b();
                c();
            }
        } catch (Throwable th) {
            c();
            throw th;
        }
    }

    public final void b(SettingsController settingsController) {
        Future<?> futureSubmit = this.o.f34590a.f34588b.submit(new uq(this, settingsController, 1));
        Logger.f34483b.a(3);
        try {
            futureSubmit.get(3L, TimeUnit.SECONDS);
        } catch (InterruptedException unused) {
            Logger.f34483b.b();
            Thread.currentThread().interrupt();
        } catch (ExecutionException unused2) {
            Logger.f34483b.b();
        } catch (TimeoutException unused3) {
            Logger.f34483b.b();
        }
    }

    public final void c() {
        CrashlyticsWorkers.a();
        try {
            CrashlyticsFileMarker crashlyticsFileMarker = this.f34536e;
            FileStore fileStore = crashlyticsFileMarker.f34543b;
            String str = crashlyticsFileMarker.f34542a;
            fileStore.getClass();
            if (new File(fileStore.f35010c, str).delete()) {
                return;
            }
            Logger.f34483b.a(5);
        } catch (Exception unused) {
            Logger.f34483b.b();
        }
    }

    public final boolean d(AppData appData, SettingsController settingsController) {
        NetworkInfo activeNetworkInfo;
        CrashlyticsWorkers crashlyticsWorkers = this.o;
        FileStore fileStore = this.f34539i;
        Context context = this.f34533a;
        boolean zC = CommonUtils.c(context, "com.google.firebase.crashlytics.RequireBuildId", CommonUtils.c(context, "com.crashlytics.RequireBuildId", true));
        String str = appData.f34494b;
        if (!zC) {
            Logger.f34483b.a(2);
        } else if (TextUtils.isEmpty(str)) {
            md.k("The Crashlytics build ID is missing. This occurs when the Crashlytics Gradle plugin is missing from your app's build configuration. Please review the Firebase Crashlytics onboarding instructions at https://firebase.google.com/docs/crashlytics/get-started?platform=android#add-plugin");
            return false;
        }
        final String str2 = new CLSUUID().f34510a;
        try {
            this.f34537f = new CrashlyticsFileMarker("crash_marker", fileStore);
            this.f34536e = new CrashlyticsFileMarker("initialization_marker", fileStore);
            UserMetadata userMetadata = new UserMetadata(str2, fileStore, crashlyticsWorkers);
            LogFileManager logFileManager = new LogFileManager(fileStore);
            MiddleOutFallbackStrategy middleOutFallbackStrategy = new MiddleOutFallbackStrategy(1024, new RemoveRepeatsStrategy(10));
            RemoteConfigDeferredProxy remoteConfigDeferredProxy = this.n;
            remoteConfigDeferredProxy.getClass();
            remoteConfigDeferredProxy.f34486a.a(new no0(new CrashlyticsRemoteConfigListener(userMetadata), 29));
            Context context2 = this.f34533a;
            IdManager idManager = this.f34538h;
            this.g = new CrashlyticsController(this.f34533a, this.f34538h, this.f34534b, this.f34539i, this.f34537f, appData, userMetadata, logFileManager, new SessionReportingCoordinator(new CrashlyticsReportDataCapture(context2, idManager, appData, middleOutFallbackStrategy, settingsController), new CrashlyticsReportPersistence(fileStore, settingsController, this.l), DataTransportCrashlyticsReportSender.a(context2, settingsController, this.f34535c), logFileManager, userMetadata, idManager, this.o), this.m, this.f34541k, this.l, this.o);
            CrashlyticsFileMarker crashlyticsFileMarker = this.f34536e;
            FileStore fileStore2 = crashlyticsFileMarker.f34543b;
            String str3 = crashlyticsFileMarker.f34542a;
            fileStore2.getClass();
            boolean zExists = new File(fileStore2.f35010c, str3).exists();
            try {
                Boolean.TRUE.equals((Boolean) crashlyticsWorkers.f34590a.f34588b.submit(new Callable() { // from class: com.google.firebase.crashlytics.internal.common.g
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        CrashlyticsController crashlyticsController = this.f34584b.g;
                        crashlyticsController.getClass();
                        CrashlyticsWorkers.a();
                        CrashlyticsFileMarker crashlyticsFileMarker2 = crashlyticsController.f34520c;
                        FileStore fileStore3 = crashlyticsFileMarker2.f34543b;
                        String str4 = crashlyticsFileMarker2.f34542a;
                        fileStore3.getClass();
                        boolean z = true;
                        if (new File(fileStore3.f35010c, str4).exists()) {
                            Logger.f34483b.a(2);
                            FileStore fileStore4 = crashlyticsFileMarker2.f34543b;
                            fileStore4.getClass();
                            new File(fileStore4.f35010c, str4).delete();
                        } else {
                            String strG = crashlyticsController.g();
                            if (strG == null || !crashlyticsController.f34525j.d(strG)) {
                                z = false;
                            }
                        }
                        return Boolean.valueOf(z);
                    }
                }).get(3L, TimeUnit.SECONDS));
            } catch (Exception unused) {
            }
            final CrashlyticsController crashlyticsController = this.g;
            Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
            crashlyticsController.getClass();
            crashlyticsController.f34521e.f34590a.a(new Runnable() { // from class: com.google.firebase.crashlytics.internal.common.b
                @Override // java.lang.Runnable
                public final void run() {
                    c cVar = CrashlyticsController.r;
                    crashlyticsController.d(str2, Boolean.FALSE);
                }
            });
            CrashlyticsUncaughtExceptionHandler crashlyticsUncaughtExceptionHandler = new CrashlyticsUncaughtExceptionHandler(new CrashlyticsUncaughtExceptionHandler.CrashListener() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.1
                public AnonymousClass1() {
                }

                @Override // com.google.firebase.crashlytics.internal.common.CrashlyticsUncaughtExceptionHandler.CrashListener
                public final void a(SettingsProvider settingsProvider, Thread thread, Throwable th) {
                    CrashlyticsController crashlyticsController2 = CrashlyticsController.this;
                    synchronized (crashlyticsController2) {
                        Logger logger = Logger.f34483b;
                        Objects.toString(th);
                        thread.getName();
                        logger.a(3);
                        try {
                            if (CrashEventReceiver.f35543a == null) {
                                SharedSessionRepository sharedSessionRepositoryA = ((FirebaseSessionsComponent) FirebaseApp.d().b(FirebaseSessionsComponent.class)).a();
                                sharedSessionRepositoryA.getClass();
                                CrashEventReceiver.f35543a = sharedSessionRepositoryA;
                            }
                            SharedSessionRepository sharedSessionRepository = CrashEventReceiver.f35543a;
                            if (sharedSessionRepository == null) {
                                Intrinsics.h("sharedSessionRepository");
                                throw null;
                            }
                            if (sharedSessionRepository.getF35510i()) {
                                SharedSessionRepository sharedSessionRepository2 = CrashEventReceiver.f35543a;
                                if (sharedSessionRepository2 == null) {
                                    Intrinsics.h("sharedSessionRepository");
                                    throw null;
                                }
                                sharedSessionRepository2.b();
                            }
                            try {
                                try {
                                    Utils.a(crashlyticsController2.f34521e.f34590a.b(new Callable<Task<Void>>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.2
                                        final /* synthetic */ Throwable val$ex;
                                        final /* synthetic */ boolean val$isOnDemand;
                                        final /* synthetic */ SettingsProvider val$settingsProvider;
                                        final /* synthetic */ Thread val$thread;
                                        final /* synthetic */ long val$timestampMillis;

                                        /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.common.CrashlyticsController$2$1 */
                                        public class AnonymousClass1 implements SuccessContinuation<Settings, Void> {

                                            /* JADX INFO: renamed from: a */
                                            public final /* synthetic */ String f34528a;

                                            public AnonymousClass1() {
                                                str = str;
                                            }

                                            @Override // com.google.android.gms.tasks.SuccessContinuation
                                            public final Task a(Object obj) {
                                                if (((Settings) obj) == null) {
                                                    Logger.f34483b.a(5);
                                                    return Tasks.f(null);
                                                }
                                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                                Task taskB = CrashlyticsController.b(CrashlyticsController.this);
                                                CrashlyticsController crashlyticsController = CrashlyticsController.this;
                                                return Tasks.g(Arrays.asList(taskB, crashlyticsController.m.g(z ? str : null, crashlyticsController.f34521e.f34590a)));
                                            }
                                        }

                                        public AnonymousClass2() {
                                            j = j;
                                            th = th;
                                            thread = thread;
                                            settingsProvider = settingsProvider;
                                            z = z;
                                        }

                                        @Override // java.util.concurrent.Callable
                                        public Task<Void> call() throws Exception {
                                            long j2 = j;
                                            c cVar = CrashlyticsController.r;
                                            long j3 = j2 / 1000;
                                            String strG = CrashlyticsController.this.g();
                                            if (strG == null) {
                                                Logger.f34483b.b();
                                                return Tasks.f(null);
                                            }
                                            CrashlyticsController.this.f34520c.a();
                                            SessionReportingCoordinator sessionReportingCoordinator = CrashlyticsController.this.m;
                                            Throwable th2 = th;
                                            Thread thread2 = thread;
                                            sessionReportingCoordinator.getClass();
                                            Logger.f34483b.a(2);
                                            sessionReportingCoordinator.f(th2, thread2, "crash", new EventMetadata(strG, j3), true);
                                            CrashlyticsController crashlyticsController3 = CrashlyticsController.this;
                                            long j4 = j;
                                            crashlyticsController3.getClass();
                                            try {
                                                FileStore fileStore3 = crashlyticsController3.g;
                                                String str4 = ".ae" + j4;
                                                fileStore3.getClass();
                                                if (!new File(fileStore3.f35010c, str4).createNewFile()) {
                                                    throw new IOException("Create new file failed.");
                                                }
                                            } catch (IOException unused2) {
                                                Logger.f34483b.a(5);
                                            }
                                            CrashlyticsController.this.c(false, settingsProvider, false);
                                            CrashlyticsController.this.d(new CLSUUID().f34510a, Boolean.valueOf(z));
                                            return !CrashlyticsController.this.f34519b.a() ? Tasks.f(null) : settingsProvider.a().m(CrashlyticsController.this.f34521e.f34590a, new SuccessContinuation<Settings, Void>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.2.1

                                                /* JADX INFO: renamed from: a */
                                                public final /* synthetic */ String f34528a;

                                                public AnonymousClass1() {
                                                    str = strG;
                                                }

                                                @Override // com.google.android.gms.tasks.SuccessContinuation
                                                public final Task a(Object obj) {
                                                    if (((Settings) obj) == null) {
                                                        Logger.f34483b.a(5);
                                                        return Tasks.f(null);
                                                    }
                                                    AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                                    Task taskB = CrashlyticsController.b(CrashlyticsController.this);
                                                    CrashlyticsController crashlyticsController4 = CrashlyticsController.this;
                                                    return Tasks.g(Arrays.asList(taskB, crashlyticsController4.m.g(z ? str : null, crashlyticsController4.f34521e.f34590a)));
                                                }
                                            });
                                        }
                                    }));
                                } catch (TimeoutException unused2) {
                                    Logger.f34483b.b();
                                }
                            } catch (Exception unused3) {
                                Logger.f34483b.b();
                            }
                        } catch (Exception unused4) {
                        }
                    }
                }
            }, settingsController, defaultUncaughtExceptionHandler, crashlyticsController.f34525j);
            crashlyticsController.n = crashlyticsUncaughtExceptionHandler;
            Thread.setDefaultUncaughtExceptionHandler(crashlyticsUncaughtExceptionHandler);
            if (Build.VERSION.SDK_INT >= 37) {
                this.g.e(str2);
            }
            if (!zExists || (context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0 && ((activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo()) == null || !activeNetworkInfo.isConnectedOrConnecting()))) {
                Logger.f34483b.a(3);
                return true;
            }
            Logger.f34483b.a(3);
            b(settingsController);
            return false;
        } catch (Exception unused2) {
            Logger.f34483b.b();
            this.g = null;
            return false;
        }
    }
}
