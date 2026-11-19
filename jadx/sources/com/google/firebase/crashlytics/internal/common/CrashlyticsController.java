package com.google.firebase.crashlytics.internal.common;

import android.app.ActivityManager;
import android.app.ApplicationExitInfo;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.ProfilingManager;
import android.os.ProfilingResult;
import android.os.ProfilingTrigger;
import android.os.StatFs;
import android.system.OsConstants;
import android.text.TextUtils;
import android.util.Base64;
import android.util.JsonReader;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.android.gms.tasks.zzw;
import com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent;
import com.google.firebase.crashlytics.internal.DevelopmentPlatformProvider;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.ProcessDetailsProvider;
import com.google.firebase.crashlytics.internal.analytics.AnalyticsEventLogger;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsTasks;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import com.google.firebase.crashlytics.internal.metadata.LogFileManager;
import com.google.firebase.crashlytics.internal.metadata.UserMetadata;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.model.StaticSessionData;
import com.google.firebase.crashlytics.internal.model.serialization.CrashlyticsReportJsonTransform;
import com.google.firebase.crashlytics.internal.persistence.CrashlyticsReportPersistence;
import com.google.firebase.crashlytics.internal.persistence.FileStore;
import com.google.firebase.crashlytics.internal.settings.Settings;
import com.google.firebase.crashlytics.internal.settings.SettingsController;
import com.google.firebase.crashlytics.internal.settings.SettingsProvider;
import com.linkplay.medialib.ContentTree;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import com.networkbench.nbslens.nbsnativecrashlib.n;
import defpackage.jy;
import defpackage.md;
import defpackage.tq;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.StringReader;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.NavigableSet;
import java.util.Objects;
import java.util.Optional;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
class CrashlyticsController {
    public static final c r = new c(0);
    public static final Charset s = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f34518a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DataCollectionArbiter f34519b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CrashlyticsFileMarker f34520c;
    public final UserMetadata d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CrashlyticsWorkers f34521e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final IdManager f34522f;
    public final FileStore g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppData f34523h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LogFileManager f34524i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final CrashlyticsNativeComponent f34525j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AnalyticsEventLogger f34526k;
    public final CrashlyticsAppQualitySessionsSubscriber l;
    public final SessionReportingCoordinator m;
    public CrashlyticsUncaughtExceptionHandler n;
    public final TaskCompletionSource o = new TaskCompletionSource();
    public final TaskCompletionSource p = new TaskCompletionSource();
    public final TaskCompletionSource q = new TaskCompletionSource();

    /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.common.CrashlyticsController$3, reason: invalid class name */
    class AnonymousClass3 implements SuccessContinuation<Void, Boolean> {
        @Override // com.google.android.gms.tasks.SuccessContinuation
        public final Task a(Object obj) {
            return Tasks.f(Boolean.TRUE);
        }
    }

    public CrashlyticsController(Context context, IdManager idManager, DataCollectionArbiter dataCollectionArbiter, FileStore fileStore, CrashlyticsFileMarker crashlyticsFileMarker, AppData appData, UserMetadata userMetadata, LogFileManager logFileManager, SessionReportingCoordinator sessionReportingCoordinator, CrashlyticsNativeComponent crashlyticsNativeComponent, AnalyticsEventLogger analyticsEventLogger, CrashlyticsAppQualitySessionsSubscriber crashlyticsAppQualitySessionsSubscriber, CrashlyticsWorkers crashlyticsWorkers) {
        new AtomicBoolean(false);
        this.f34518a = context;
        this.f34522f = idManager;
        this.f34519b = dataCollectionArbiter;
        this.g = fileStore;
        this.f34520c = crashlyticsFileMarker;
        this.f34523h = appData;
        this.d = userMetadata;
        this.f34524i = logFileManager;
        this.f34525j = crashlyticsNativeComponent;
        this.f34526k = analyticsEventLogger;
        this.l = crashlyticsAppQualitySessionsSubscriber;
        this.m = sessionReportingCoordinator;
        this.f34521e = crashlyticsWorkers;
    }

    public static void a(CrashlyticsController crashlyticsController, String str, ProfilingResult profilingResult) {
        String str2;
        int triggerType = profilingResult.getTriggerType();
        if (triggerType == 8) {
            str2 = "trigger-type-anomaly";
        } else {
            str2 = triggerType == 7 ? "trigger-type-oom" : "trigger-type-unknown";
        }
        try {
            if (crashlyticsController.g.b(str, str2).createNewFile()) {
                return;
            }
            Logger.f34483b.a(3);
        } catch (IOException unused) {
            Logger logger = Logger.f34483b;
            "Unable to touch trigger file ".concat(str2);
            logger.b();
        }
    }

    public static Task b(CrashlyticsController crashlyticsController) {
        Task taskC;
        crashlyticsController.getClass();
        ArrayList arrayList = new ArrayList();
        FileStore fileStore = crashlyticsController.g;
        for (File file : FileStore.e(fileStore.f35010c.listFiles(r))) {
            try {
                final long j2 = Long.parseLong(file.getName().substring(3));
                try {
                    Class.forName("com.google.firebase.crash.FirebaseCrash");
                    Logger.f34483b.a(5);
                    taskC = Tasks.f(null);
                } catch (ClassNotFoundException unused) {
                    Logger.f34483b.a(3);
                    taskC = Tasks.c(new Callable<Void>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.5
                        @Override // java.util.concurrent.Callable
                        public Void call() throws Exception {
                            Bundle bundle = new Bundle();
                            bundle.putInt("fatal", 1);
                            bundle.putLong("timestamp", j2);
                            CrashlyticsController.this.f34526k.b(bundle);
                            return null;
                        }
                    }, new ScheduledThreadPoolExecutor(1));
                }
                arrayList.add(taskC);
            } catch (NumberFormatException unused2) {
                Logger logger = Logger.f34483b;
                file.getName();
                logger.a(5);
            }
            file.delete();
        }
        return Tasks.g(arrayList);
    }

    /* JADX WARN: Code duplicated, block: B:108:0x0431  */
    /* JADX WARN: Code duplicated, block: B:74:0x0373  */
    /* JADX WARN: Multi-variable type inference failed */
    public final void c(boolean z, SettingsProvider settingsProvider, boolean z2) throws Throwable {
        String str;
        Context context;
        ArrayList arrayList;
        Object obj;
        boolean z3;
        String strSubstring;
        String str2;
        boolean z4;
        final SessionReportingCoordinator sessionReportingCoordinator;
        String strC;
        List listUnmodifiableList;
        String str3 = "report";
        CrashlyticsNativeComponent crashlyticsNativeComponent = this.f34525j;
        Context context2 = this.f34518a;
        FileStore fileStore = this.g;
        CrashlyticsWorkers.a();
        SessionReportingCoordinator sessionReportingCoordinator2 = this.m;
        CrashlyticsReportPersistence crashlyticsReportPersistence = sessionReportingCoordinator2.f34571b;
        CrashlyticsReportPersistence crashlyticsReportPersistence2 = sessionReportingCoordinator2.f34571b;
        ArrayList arrayList2 = new ArrayList(crashlyticsReportPersistence.d());
        int i2 = 2;
        if (arrayList2.size() <= z) {
            Logger.f34483b.a(2);
            return;
        }
        final String str4 = (String) arrayList2.get(z ? 1 : 0);
        final int i3 = 0;
        if (z2 && settingsProvider.b().f35037b.f35042b && Build.VERSION.SDK_INT >= 30) {
            List<ApplicationExitInfo> historicalProcessExitReasons = ((ActivityManager) context2.getSystemService(ActionFloatingViewItem.f37018a)).getHistoricalProcessExitReasons(null, 0, 0);
            if (historicalProcessExitReasons.size() != 0) {
                LogFileManager logFileManager = new LogFileManager(fileStore, str4);
                UserMetadata userMetadataC = UserMetadata.c(str4, fileStore, this.f34521e);
                ApplicationExitInfo applicationExitInfoD = sessionReportingCoordinator2.d(str4, historicalProcessExitReasons, new Predicate() { // from class: fv0
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj2) {
                        ApplicationExitInfo applicationExitInfo = (ApplicationExitInfo) obj2;
                        switch (i3) {
                            case 0:
                                return applicationExitInfo.getReason() == 6;
                            default:
                                return (applicationExitInfo.getReason() == 3 && applicationExitInfo.getDescription() != null && applicationExitInfo.getDescription().contains("OOM")) || (applicationExitInfo.getReason() == 2 && applicationExitInfo.getStatus() == OsConstants.SIGKILL);
                        }
                    }
                });
                if (applicationExitInfoD == null) {
                    Logger.f34483b.a(2);
                    str = ActionFloatingViewItem.f37018a;
                    context = context2;
                    arrayList = arrayList2;
                } else {
                    CrashlyticsReportDataCapture crashlyticsReportDataCapture = sessionReportingCoordinator2.f34570a;
                    try {
                        InputStream traceInputStream = applicationExitInfoD.getTraceInputStream();
                        strC = traceInputStream != null ? SessionReportingCoordinator.c(traceInputStream) : null;
                    } catch (IOException e2) {
                        Logger logger = Logger.f34483b;
                        applicationExitInfoD.toString();
                        e2.toString();
                        logger.a(5);
                    }
                    CrashlyticsReport.ApplicationExitInfo.Builder builderA = CrashlyticsReport.ApplicationExitInfo.a();
                    builderA.c(applicationExitInfoD.getImportance());
                    builderA.e(applicationExitInfoD.getProcessName());
                    builderA.g(applicationExitInfoD.getReason());
                    ArrayList arrayList3 = arrayList2;
                    builderA.i(applicationExitInfoD.getTimestamp());
                    builderA.d(applicationExitInfoD.getPid());
                    builderA.f(applicationExitInfoD.getPss());
                    builderA.h(applicationExitInfoD.getRss());
                    builderA.j(strC);
                    CrashlyticsReport.ApplicationExitInfo applicationExitInfoA = builderA.a();
                    int i4 = crashlyticsReportDataCapture.f34545a.getResources().getConfiguration().orientation;
                    CrashlyticsReport.Session.Event.Builder builderA2 = CrashlyticsReport.Session.Event.a();
                    builderA2.g(n.f38807j);
                    builderA2.f(applicationExitInfoA.i());
                    AppData appData = crashlyticsReportDataCapture.f34547c;
                    if (!crashlyticsReportDataCapture.f34548e.b().f35037b.f35043c || appData.f34495c.size() <= 0) {
                        arrayList = arrayList3;
                        listUnmodifiableList = null;
                    } else {
                        ArrayList arrayList4 = new ArrayList();
                        Iterator it = appData.f34495c.iterator();
                        while (it.hasNext()) {
                            BuildIdInfo buildIdInfo = (BuildIdInfo) it.next();
                            Iterator it2 = it;
                            CrashlyticsReport.ApplicationExitInfo.BuildIdMappingForArch.Builder builderA3 = CrashlyticsReport.ApplicationExitInfo.BuildIdMappingForArch.a();
                            builderA3.d(buildIdInfo.f34505a);
                            builderA3.b(buildIdInfo.f34506b);
                            builderA3.c(buildIdInfo.f34507c);
                            arrayList4.add(builderA3.a());
                            it = it2;
                            arrayList3 = arrayList3;
                        }
                        arrayList = arrayList3;
                        listUnmodifiableList = Collections.unmodifiableList(arrayList4);
                    }
                    CrashlyticsReport.ApplicationExitInfo.Builder builderA4 = CrashlyticsReport.ApplicationExitInfo.a();
                    builderA4.c(applicationExitInfoA.c());
                    builderA4.e(applicationExitInfoA.e());
                    builderA4.g(applicationExitInfoA.g());
                    builderA4.i(applicationExitInfoA.i());
                    builderA4.d(applicationExitInfoA.d());
                    builderA4.f(applicationExitInfoA.f());
                    builderA4.h(applicationExitInfoA.h());
                    builderA4.j(applicationExitInfoA.j());
                    builderA4.b(listUnmodifiableList);
                    CrashlyticsReport.ApplicationExitInfo applicationExitInfoA2 = builderA4.a();
                    boolean z5 = applicationExitInfoA2.c() != 100;
                    CrashlyticsReport.Session.Event.Application.Builder builderA5 = CrashlyticsReport.Session.Event.Application.a();
                    builderA5.c(Boolean.valueOf(z5));
                    ProcessDetailsProvider processDetailsProvider = ProcessDetailsProvider.f34485a;
                    String strE = applicationExitInfoA2.e();
                    str = ActionFloatingViewItem.f37018a;
                    int iD = applicationExitInfoA2.d();
                    context = context2;
                    int iC = applicationExitInfoA2.c();
                    strE.getClass();
                    builderA5.d(ProcessDetailsProvider.a(processDetailsProvider, strE, iD, iC, 8));
                    builderA5.h(i4);
                    CrashlyticsReport.Session.Event.Application.Execution.Builder builderA6 = CrashlyticsReport.Session.Event.Application.Execution.a();
                    builderA6.b(applicationExitInfoA2);
                    CrashlyticsReport.Session.Event.Application.Execution.Signal.Builder builderA7 = CrashlyticsReport.Session.Event.Application.Execution.Signal.a();
                    builderA7.d(ContentTree.ROOT_ID);
                    builderA7.c(ContentTree.ROOT_ID);
                    builderA7.b(0L);
                    builderA6.f(builderA7.a());
                    builderA6.c(crashlyticsReportDataCapture.a());
                    builderA5.f(builderA6.a());
                    builderA2.b(builderA5.a());
                    builderA2.c(crashlyticsReportDataCapture.b(i4));
                    CrashlyticsReport.Session.Event eventA = builderA2.a();
                    Logger.f34483b.a(3);
                    crashlyticsReportPersistence2.e(SessionReportingCoordinator.b(SessionReportingCoordinator.a(eventA, logFileManager, userMetadataC, Collections.EMPTY_MAP), userMetadataC), str4, true);
                }
                i2 = 2;
            } else {
                str3 = "report";
                str = ActionFloatingViewItem.f37018a;
                context = context2;
                fileStore = fileStore;
                arrayList = arrayList2;
                sessionReportingCoordinator2 = sessionReportingCoordinator2;
                i2 = 2;
                Logger.f34483b.a(2);
            }
        } else {
            str3 = "report";
            str = ActionFloatingViewItem.f37018a;
            context = context2;
            fileStore = fileStore;
            arrayList = arrayList2;
            sessionReportingCoordinator2 = sessionReportingCoordinator2;
            Logger.f34483b.a(2);
        }
        if (z2 && crashlyticsNativeComponent.d(str4)) {
            Logger logger2 = Logger.f34483b;
            logger2.a(i2);
            crashlyticsNativeComponent.a(str4).getClass();
            logger2.a(5);
            logger2.a(4);
            logger2.a(5);
        }
        if (Build.VERSION.SDK_INT >= 37) {
            ActivityManager activityManager = (ActivityManager) context.getSystemService(str);
            c cVar = new c(1);
            fileStore.getClass();
            File file = new File(fileStore.d, str4);
            file.mkdirs();
            List list = (List) FileStore.e(file.listFiles(cVar)).stream().map(new d()).filter(new e()).collect(Collectors.toList());
            List<ApplicationExitInfo> historicalProcessExitReasons2 = activityManager.getHistoricalProcessExitReasons(null, 0, 0);
            Optional optionalFindFirst = list.stream().findFirst();
            if (optionalFindFirst.isPresent()) {
                sessionReportingCoordinator = sessionReportingCoordinator2;
            } else {
                final int i5 = 1;
                sessionReportingCoordinator = sessionReportingCoordinator2;
                optionalFindFirst = sessionReportingCoordinator.d(str4, historicalProcessExitReasons2, new Predicate() { // from class: fv0
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj2) {
                        ApplicationExitInfo applicationExitInfo = (ApplicationExitInfo) obj2;
                        switch (i5) {
                            case 0:
                                return applicationExitInfo.getReason() == 6;
                            default:
                                return (applicationExitInfo.getReason() == 3 && applicationExitInfo.getDescription() != null && applicationExitInfo.getDescription().contains("OOM")) || (applicationExitInfo.getReason() == 2 && applicationExitInfo.getStatus() == OsConstants.SIGKILL);
                        }
                    }
                }) != null ? Optional.of(7) : Optional.empty();
                Objects.requireNonNull(optionalFindFirst);
            }
            optionalFindFirst.ifPresent(new Consumer() { // from class: gv0
                @Override // java.util.function.Consumer
                public final void accept(Object obj2) {
                    String str5 = str4;
                    CrashlyticsReportPersistence crashlyticsReportPersistence3 = sessionReportingCoordinator.f34571b;
                    CrashlyticsReport.ProfilingManagerInfo.Builder builderA8 = CrashlyticsReport.ProfilingManagerInfo.a();
                    CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger.Builder builderA9 = CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger.a();
                    builderA9.b(((Integer) obj2).intValue());
                    builderA8.b(builderA9.a());
                    CrashlyticsReport.ProfilingManagerInfo profilingManagerInfoA = builderA8.a();
                    try {
                        CrashlyticsReportPersistence.g.getClass();
                        CrashlyticsReportPersistence.g(crashlyticsReportPersistence3.f35006b.b(str5, "profiling-manager-info"), CrashlyticsReportJsonTransform.f34994a.encode(profilingManagerInfoA));
                    } catch (IOException unused) {
                        Logger.f34483b.a(5);
                    }
                }
            });
        }
        if (z != 0) {
            obj = (String) arrayList.get(0);
        } else {
            this.l.d(null);
            obj = null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        FileStore fileStore2 = crashlyticsReportPersistence2.f35006b;
        fileStore2.a(".com.google.firebase.crashlytics");
        File file2 = fileStore2.d;
        fileStore2.a(".com.google.firebase.crashlytics-ndk");
        if (fileStore2.f35008a.isEmpty()) {
            z3 = false;
        } else {
            fileStore2.a(".com.google.firebase.crashlytics.files.v1");
            String str5 = ".com.google.firebase.crashlytics.files.v2" + File.pathSeparator;
            File file3 = fileStore2.f35009b;
            if (file3.exists()) {
                z3 = false;
                String[] list2 = file3.list(new jy(str5, 0));
                if (list2 != null) {
                    for (String str6 : list2) {
                        fileStore2.a(str6);
                    }
                }
            } else {
                z3 = false;
            }
        }
        NavigableSet<String> navigableSetD = crashlyticsReportPersistence2.d();
        if (obj != null) {
            navigableSetD.remove(obj);
        }
        if (navigableSetD.size() > 8) {
            while (navigableSetD.size() > 8) {
                String str7 = (String) navigableSetD.last();
                Logger.f34483b.a(3);
                FileStore.d(new File(file2, str7));
                navigableSetD.remove(str7);
            }
        }
        for (String str8 : navigableSetD) {
            Logger logger3 = Logger.f34483b;
            logger3.a(2);
            CrashlyticsReportJsonTransform crashlyticsReportJsonTransform = CrashlyticsReportPersistence.g;
            tq tqVar = CrashlyticsReportPersistence.f35004i;
            File file4 = new File(file2, str8);
            file4.mkdirs();
            List<File> listE = FileStore.e(file4.listFiles(tqVar));
            if (listE.isEmpty()) {
                logger3.a(2);
                str2 = str3;
            } else {
                Collections.sort(listE);
                ArrayList arrayList5 = new ArrayList();
                boolean z6 = z3;
                for (File file5 : listE) {
                    try {
                        String strF = CrashlyticsReportPersistence.f(file5);
                        crashlyticsReportJsonTransform.getClass();
                        try {
                            JsonReader jsonReader = new JsonReader(new StringReader(strF));
                            try {
                                CrashlyticsReport.Session.Event eventE = CrashlyticsReportJsonTransform.e(jsonReader);
                                jsonReader.close();
                                arrayList5.add(crashlyticsReportPersistence2.a(str8, eventE));
                                if (z6) {
                                    z4 = true;
                                } else {
                                    String name = file5.getName();
                                    if (name.startsWith(MvelScriptManager.VAR_EVENT) && name.endsWith("_")) {
                                        z4 = true;
                                    } else {
                                        z4 = z3;
                                    }
                                }
                                z6 = z4;
                            } catch (Throwable th) {
                                try {
                                    jsonReader.close();
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                }
                                throw th;
                            }
                        } catch (IllegalStateException e3) {
                            throw new IOException(e3);
                        }
                    } catch (IOException unused) {
                        Logger logger4 = Logger.f34483b;
                        Objects.toString(file5);
                        logger4.a(5);
                    }
                }
                if (arrayList5.isEmpty()) {
                    Logger.f34483b.a(5);
                    str2 = str3;
                } else {
                    String strD = UserMetadata.d(str8, fileStore2);
                    CrashlyticsAppQualitySessionsStore crashlyticsAppQualitySessionsStore = crashlyticsReportPersistence2.d.f34517b;
                    synchronized (crashlyticsAppQualitySessionsStore) {
                        if (Objects.equals(crashlyticsAppQualitySessionsStore.f34514b, str8)) {
                            strSubstring = crashlyticsAppQualitySessionsStore.f34515c;
                        } else {
                            FileStore fileStore3 = crashlyticsAppQualitySessionsStore.f34513a;
                            tq tqVar2 = CrashlyticsAppQualitySessionsStore.d;
                            fileStore3.getClass();
                            File file6 = new File(fileStore3.d, str8);
                            file6.mkdirs();
                            List listE2 = FileStore.e(file6.listFiles(tqVar2));
                            if (listE2.isEmpty()) {
                                Logger.f34483b.a(5);
                                strSubstring = null;
                            } else {
                                strSubstring = ((File) Collections.min(listE2, CrashlyticsAppQualitySessionsStore.f34512e)).getName().substring(4);
                            }
                        }
                    }
                    str2 = str3;
                    File fileB = fileStore2.b(str8, str2);
                    try {
                        String strF2 = CrashlyticsReportPersistence.f(fileB);
                        crashlyticsReportJsonTransform.getClass();
                        CrashlyticsReport crashlyticsReportO = CrashlyticsReportJsonTransform.j(strF2).p(jCurrentTimeMillis, strD, z6).o(strSubstring);
                        if (crashlyticsReportO.m() == null) {
                            throw new IllegalStateException("Reports without sessions cannot have events added to them.");
                        }
                        CrashlyticsReport.Builder builderN = crashlyticsReportO.n();
                        CrashlyticsReport.Session.Builder builderN2 = crashlyticsReportO.m().n();
                        builderN2.g(arrayList5);
                        builderN.m(builderN2.a());
                        CrashlyticsReport crashlyticsReportA = builderN.a();
                        CrashlyticsReport.Session sessionM = crashlyticsReportA.m();
                        if (sessionM != null) {
                            try {
                                Logger.f34483b.a(3);
                                CrashlyticsReportPersistence.g(z6 ? new File(fileStore2.f35012f, sessionM.i()) : new File(fileStore2.f35011e, sessionM.i()), CrashlyticsReportJsonTransform.f34994a.encode(crashlyticsReportA));
                            } catch (IOException unused2) {
                                Logger logger5 = Logger.f34483b;
                                Objects.toString(fileB);
                                logger5.a(5);
                            }
                        }
                    } catch (IOException unused3) {
                    }
                    Logger logger6 = Logger.f34483b;
                    Objects.toString(fileB);
                    logger6.a(5);
                }
                FileStore.d(new File(file2, str8));
                str3 = str2;
                z3 = false;
            }
            FileStore.d(new File(file2, str8));
            str3 = str2;
            z3 = false;
        }
        int i6 = crashlyticsReportPersistence2.f35007c.b().f35036a.f35045b;
        ArrayList arrayListC = crashlyticsReportPersistence2.c();
        int size = arrayListC.size();
        if (size <= i6) {
            return;
        }
        Iterator it3 = arrayListC.subList(i6, size).iterator();
        while (it3.hasNext()) {
            ((File) it3.next()).delete();
        }
    }

    public final void d(String str, Boolean bool) {
        Integer num;
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        Logger logger = Logger.f34483b;
        logger.a(3);
        Locale locale = Locale.US;
        IdManager idManager = this.f34522f;
        String str2 = idManager.f34564c;
        AppData appData = this.f34523h;
        StaticSessionData.AppData appDataB = StaticSessionData.AppData.b(str2, appData.f34497f, appData.g, ((AutoValue_InstallIdProvider_InstallIds) idManager.a()).f34502a, (appData.d != null ? DeliveryMechanism.APP_STORE : DeliveryMechanism.DEVELOPER).a(), appData.f34498h);
        String str3 = Build.VERSION.RELEASE;
        String str4 = Build.VERSION.CODENAME;
        StaticSessionData.OsData osDataA = StaticSessionData.OsData.a(CommonUtils.h());
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        long blockCount = ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize());
        int iOrdinal = CommonUtils.Architecture.a().ordinal();
        String str5 = Build.MODEL;
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        long jA = CommonUtils.a(this.f34518a);
        boolean zG = CommonUtils.g();
        int iD = CommonUtils.d();
        String str6 = Build.MANUFACTURER;
        String str7 = Build.PRODUCT;
        this.f34525j.c(str, jCurrentTimeMillis, StaticSessionData.b(appDataB, osDataA, StaticSessionData.DeviceData.c(iOrdinal, iAvailableProcessors, jA, blockCount, zG, iD)));
        if (bool.booleanValue() && str != null) {
            this.d.g(str);
        }
        this.f34524i.b(str);
        this.l.d(str);
        SessionReportingCoordinator sessionReportingCoordinator = this.m;
        CrashlyticsReportDataCapture crashlyticsReportDataCapture = sessionReportingCoordinator.f34570a;
        CrashlyticsReport.Builder builderA = CrashlyticsReport.a();
        builderA.l("20.1.0");
        AppData appData2 = crashlyticsReportDataCapture.f34547c;
        builderA.h(appData2.f34493a);
        IdManager idManager2 = crashlyticsReportDataCapture.f34546b;
        builderA.i(((AutoValue_InstallIdProvider_InstallIds) idManager2.a()).f34502a);
        builderA.g(((AutoValue_InstallIdProvider_InstallIds) idManager2.a()).f34503b);
        builderA.f(((AutoValue_InstallIdProvider_InstallIds) idManager2.a()).f34504c);
        String str8 = appData2.f34497f;
        builderA.d(str8);
        String str9 = appData2.g;
        builderA.e(str9);
        builderA.k(4);
        CrashlyticsReport.Session.Builder builderA2 = CrashlyticsReport.Session.a();
        builderA2.l(jCurrentTimeMillis);
        builderA2.j(str);
        builderA2.h(CrashlyticsReportDataCapture.g);
        CrashlyticsReport.Session.Application.Builder builderA3 = CrashlyticsReport.Session.Application.a();
        builderA3.e(idManager2.f34564c);
        builderA3.g(str8);
        builderA3.d(str9);
        builderA3.f(((AutoValue_InstallIdProvider_InstallIds) idManager2.a()).f34502a);
        DevelopmentPlatformProvider developmentPlatformProvider = appData2.f34498h;
        builderA3.b(developmentPlatformProvider.a());
        builderA3.c(developmentPlatformProvider.b());
        builderA2.b(builderA3.a());
        CrashlyticsReport.Session.OperatingSystem.Builder builderA4 = CrashlyticsReport.Session.OperatingSystem.a();
        builderA4.d(3);
        builderA4.e(str3);
        builderA4.b(str4);
        builderA4.c(CommonUtils.h());
        builderA2.k(builderA4.a());
        StatFs statFs2 = new StatFs(Environment.getDataDirectory().getPath());
        String str10 = Build.CPU_ABI;
        int iIntValue = 7;
        if (!TextUtils.isEmpty(str10) && (num = (Integer) CrashlyticsReportDataCapture.f34544f.get(str10.toLowerCase(locale))) != null) {
            iIntValue = num.intValue();
        }
        int iAvailableProcessors2 = Runtime.getRuntime().availableProcessors();
        long jA2 = CommonUtils.a(crashlyticsReportDataCapture.f34545a);
        long blockCount2 = ((long) statFs2.getBlockCount()) * ((long) statFs2.getBlockSize());
        boolean zG2 = CommonUtils.g();
        int iD2 = CommonUtils.d();
        CrashlyticsReport.Session.Device.Builder builderA5 = CrashlyticsReport.Session.Device.a();
        builderA5.b(iIntValue);
        builderA5.f(str5);
        builderA5.c(iAvailableProcessors2);
        builderA5.h(jA2);
        builderA5.d(blockCount2);
        builderA5.i(zG2);
        builderA5.j(iD2);
        builderA5.e(str6);
        builderA5.g(str7);
        builderA2.e(builderA5.a());
        builderA2.i(3);
        builderA.m(builderA2.a());
        CrashlyticsReport crashlyticsReportA = builderA.a();
        FileStore fileStore = sessionReportingCoordinator.f34571b.f35006b;
        CrashlyticsReport.Session sessionM = crashlyticsReportA.m();
        if (sessionM == null) {
            logger.a(3);
            return;
        }
        String strI = sessionM.i();
        try {
            CrashlyticsReportPersistence.g.getClass();
            CrashlyticsReportPersistence.g(fileStore.b(strI, "report"), CrashlyticsReportJsonTransform.f34994a.encode(crashlyticsReportA));
            File fileB = fileStore.b(strI, "start-time");
            long jK = sessionM.k();
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(fileB), CrashlyticsReportPersistence.f35001e);
            try {
                outputStreamWriter.write("");
                fileB.setLastModified(jK * 1000);
                outputStreamWriter.close();
            } catch (Throwable th) {
                try {
                    outputStreamWriter.close();
                    throw th;
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                    throw th;
                }
            }
        } catch (IOException unused) {
            Logger.f34483b.a(3);
        }
    }

    public final void e(final String str) {
        ExecutorService executorService = this.f34521e.f34591b.f34588b;
        ProfilingManager profilingManager = (ProfilingManager) this.f34518a.getSystemService(ProfilingManager.class);
        Object[] objArr = {new ProfilingTrigger.Builder(7).build(), new ProfilingTrigger.Builder(8).build()};
        ArrayList arrayList = new ArrayList(2);
        for (int i2 = 0; i2 < 2; i2++) {
            Object obj = objArr[i2];
            Objects.requireNonNull(obj);
            arrayList.add(obj);
        }
        profilingManager.addProfilingTriggers(Collections.unmodifiableList(arrayList));
        profilingManager.registerForAllProfilingResults(executorService, new Consumer() { // from class: com.google.firebase.crashlytics.internal.common.a
            @Override // java.util.function.Consumer
            public final void accept(Object obj2) {
                CrashlyticsController.a(this.f34576a, str, (ProfilingResult) obj2);
            }
        });
    }

    public final boolean f(SettingsController settingsController) throws Throwable {
        CrashlyticsWorkers.a();
        CrashlyticsUncaughtExceptionHandler crashlyticsUncaughtExceptionHandler = this.n;
        if (crashlyticsUncaughtExceptionHandler != null && crashlyticsUncaughtExceptionHandler.f34552e.get()) {
            Logger.f34483b.a(5);
            return false;
        }
        Logger logger = Logger.f34483b;
        logger.a(2);
        try {
            c(true, settingsController, true);
            logger.a(2);
            return true;
        } catch (Exception unused) {
            Logger.f34483b.b();
            return false;
        }
    }

    public final String g() {
        NavigableSet navigableSetD = this.m.f34571b.d();
        if (navigableSetD.isEmpty()) {
            return null;
        }
        return (String) navigableSetD.first();
    }

    public final String h() throws IOException {
        InputStream resourceAsStream;
        Context context = this.f34518a;
        int iE = CommonUtils.e(context, "com.google.firebase.crashlytics.version_control_info", "string");
        String string = iE == 0 ? null : context.getResources().getString(iE);
        if (string != null) {
            Logger.f34483b.a(3);
            return Base64.encodeToString(string.getBytes(s), 0);
        }
        ClassLoader classLoader = getClass().getClassLoader();
        if (classLoader == null) {
            Logger.f34483b.a(5);
            resourceAsStream = null;
        } else {
            resourceAsStream = classLoader.getResourceAsStream("META-INF/version-control-info.textproto");
        }
        if (resourceAsStream == null) {
            if (resourceAsStream != null) {
                resourceAsStream.close();
            }
            Logger.f34483b.a(4);
            return null;
        }
        try {
            Logger.f34483b.a(3);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int i2 = resourceAsStream.read(bArr);
                    if (i2 == -1) {
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        byteArrayOutputStream.close();
                        String strEncodeToString = Base64.encodeToString(byteArray, 0);
                        resourceAsStream.close();
                        return strEncodeToString;
                    }
                    byteArrayOutputStream.write(bArr, 0, i2);
                    try {
                        resourceAsStream.close();
                    } catch (Throwable th) {
                        th.addSuppressed(th);
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (Throwable th4) {
            resourceAsStream.close();
            throw th4;
        }
    }

    public final void i() {
        try {
            String strH = h();
            if (strH != null) {
                try {
                    this.d.f(strH);
                } catch (IllegalArgumentException e2) {
                    Context context = this.f34518a;
                    if (context != null) {
                        if ((context.getApplicationInfo().flags & 2) != 0) {
                            throw e2;
                        }
                    }
                    Logger.f34483b.b();
                }
                Logger.f34483b.a(4);
            }
        } catch (IOException unused) {
            Logger.f34483b.a(5);
        }
    }

    public final void j(final Task task) {
        zzw zzwVar;
        Task taskA;
        TaskCompletionSource taskCompletionSource = this.o;
        FileStore fileStore = this.m.f34571b.f35006b;
        if (FileStore.e(fileStore.f35011e.listFiles()).isEmpty() && FileStore.e(fileStore.f35012f.listFiles()).isEmpty() && FileStore.e(fileStore.g.listFiles()).isEmpty()) {
            Logger.f34483b.a(2);
            taskCompletionSource.d(Boolean.FALSE);
            return;
        }
        Logger logger = Logger.f34483b;
        logger.a(2);
        DataCollectionArbiter dataCollectionArbiter = this.f34519b;
        if (dataCollectionArbiter.a()) {
            logger.a(3);
            taskCompletionSource.d(Boolean.FALSE);
            taskA = Tasks.f(Boolean.TRUE);
        } else {
            logger.a(3);
            logger.a(2);
            taskCompletionSource.d(Boolean.TRUE);
            synchronized (dataCollectionArbiter.f34555c) {
                zzwVar = dataCollectionArbiter.d.f32085a;
            }
            Task taskL = zzwVar.l(new AnonymousClass3());
            logger.a(3);
            taskA = CrashlyticsTasks.a(taskL, this.p.f32085a);
        }
        taskA.m(this.f34521e.f34590a, new SuccessContinuation<Boolean, Void>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.4
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task a(Object obj) {
                Boolean bool = (Boolean) obj;
                boolean zBooleanValue = bool.booleanValue();
                CrashlyticsController crashlyticsController = CrashlyticsController.this;
                if (zBooleanValue) {
                    Logger.f34483b.a(3);
                    boolean zBooleanValue2 = bool.booleanValue();
                    DataCollectionArbiter dataCollectionArbiter2 = crashlyticsController.f34519b;
                    if (!zBooleanValue2) {
                        dataCollectionArbiter2.getClass();
                        md.k("An invalid data collection token was used.");
                        return null;
                    }
                    dataCollectionArbiter2.g.d(null);
                    return task.m(crashlyticsController.f34521e.f34590a, new SuccessContinuation<Settings, Void>() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.4.1
                        @Override // com.google.android.gms.tasks.SuccessContinuation
                        public final Task a(Object obj2) {
                            if (((Settings) obj2) == null) {
                                Logger.f34483b.a(5);
                                return Tasks.f(null);
                            }
                            CrashlyticsController crashlyticsController2 = CrashlyticsController.this;
                            CrashlyticsController.b(crashlyticsController2);
                            crashlyticsController2.m.g(null, crashlyticsController2.f34521e.f34590a);
                            crashlyticsController2.q.d(null);
                            return Tasks.f(null);
                        }
                    });
                }
                Logger.f34483b.a(2);
                FileStore fileStore2 = crashlyticsController.g;
                Iterator it = FileStore.e(fileStore2.f35010c.listFiles(CrashlyticsController.r)).iterator();
                while (it.hasNext()) {
                    ((File) it.next()).delete();
                }
                FileStore fileStore3 = crashlyticsController.m.f34571b.f35006b;
                CrashlyticsReportPersistence.b(FileStore.e(fileStore3.f35011e.listFiles()));
                CrashlyticsReportPersistence.b(FileStore.e(fileStore3.f35012f.listFiles()));
                CrashlyticsReportPersistence.b(FileStore.e(fileStore3.g.listFiles()));
                crashlyticsController.q.d(null);
                return Tasks.f(null);
            }
        });
    }
}
