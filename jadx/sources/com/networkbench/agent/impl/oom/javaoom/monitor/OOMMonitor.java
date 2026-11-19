package com.networkbench.agent.impl.oom.javaoom.monitor;

import android.app.Activity;
import android.os.SystemClock;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import com.appsflyer.sdk_base.referrer.Payload;
import com.networkbench.agent.impl.base.CommonConfig;
import com.networkbench.agent.impl.base.Monitor;
import com.networkbench.agent.impl.base.MonitorBuildConfig;
import com.networkbench.agent.impl.base.MonitorLog;
import com.networkbench.agent.impl.base.MonitorLogger;
import com.networkbench.agent.impl.base.MonitorManager;
import com.networkbench.agent.impl.base.Monitor_ApplicationKt;
import com.networkbench.agent.impl.base.Monitor_ProcessKt;
import com.networkbench.agent.impl.base.Monitor_ThreadKt;
import com.networkbench.agent.impl.base.loop.LoopMonitor;
import com.networkbench.agent.impl.crash.oom.NBSCrashTransaction;
import com.networkbench.agent.impl.oom.fastdump.ForkJvmHeapDumper;
import com.networkbench.agent.impl.oom.javaoom.monitor.analysis.AnalysisExtraData;
import com.networkbench.agent.impl.oom.javaoom.monitor.analysis.AnalysisReceiver;
import com.networkbench.agent.impl.oom.javaoom.monitor.analysis.HeapAnalysisService;
import com.networkbench.agent.impl.oom.javaoom.monitor.tracker.FastHugeMemoryOOMTracker;
import com.networkbench.agent.impl.oom.javaoom.monitor.tracker.FdOOMTracker;
import com.networkbench.agent.impl.oom.javaoom.monitor.tracker.HeapOOMTracker;
import com.networkbench.agent.impl.oom.javaoom.monitor.tracker.OOMTracker;
import com.networkbench.agent.impl.oom.javaoom.monitor.tracker.PhysicalMemoryOOMTracker;
import com.networkbench.agent.impl.oom.javaoom.monitor.tracker.ThreadOOMTracker;
import com.networkbench.agent.impl.oom.javaoom.monitor.tracker.model.SystemInfo;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import defpackage.v7;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.text.StringsKt;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\bÆ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0004J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0002J\b\u0010\u0018\u001a\u00020\u0010H\u0014J\u0018\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0002H\u0016J\b\u0010\u001d\u001a\u00020\u000bH\u0002J\b\u0010\u001e\u001a\u00020\u000bH\u0002J\b\u0010\u001f\u001a\u00020\u0017H\u0002J\u0018\u0010 \u001a\u00020\u00172\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0016J\b\u0010%\u001a\u00020\u0017H\u0002J\b\u0010&\u001a\u00020\u0017H\u0002J \u0010'\u001a\u00020\u00172\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020)2\u0006\u0010+\u001a\u00020\u0006H\u0002J \u0010,\u001a\u00020\u00172\u0006\u0010-\u001a\u00020\u000b2\u0006\u0010.\u001a\u00020\u000b2\u0006\u0010/\u001a\u00020\u0010H\u0016J\b\u00100\u001a\u00020\u0017H\u0016J\b\u00101\u001a\u00020\u0015H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00060\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u00062"}, d2 = {"Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;", "Lcom/networkbench/agent/impl/base/loop/LoopMonitor;", "Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;", "Landroidx/lifecycle/LifecycleEventObserver;", "()V", "TAG", "", "mForegroundPendingRunnables", "", "Ljava/lang/Runnable;", "mHasDumped", "", "mHasProcessOldHprof", "mIsLoopPendingStart", "mIsLoopStarted", "mMonitorInitTime", "", "mOOMTrackers", "Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/OOMTracker;", "mTrackReasons", "call", "Lcom/networkbench/agent/impl/base/loop/LoopMonitor$LoopState;", "dumpAndAnalysis", "", "getLoopInterval", "init", "commonConfig", "Lcom/networkbench/agent/impl/base/CommonConfig;", "monitorConfig", "isExceedAnalysisPeriod", "isExceedAnalysisTimes", "manualDumpHprof", "onStateChanged", Payload.SOURCE, "Landroidx/lifecycle/LifecycleOwner;", MvelScriptManager.VAR_EVENT, "Landroidx/lifecycle/Lifecycle$Event;", "processOldHprofFile", "reAnalysisHprof", "startAnalysisService", "hprofFile", "Ljava/io/File;", "jsonFile", "reason", "startLoop", "clearQueue", "postAtFront", "delayMillis", "stopLoop", "trackOOM", "koom-java-leak_release"}, k = 1, mv = {1, 4, 1})
public final class OOMMonitor extends LoopMonitor<OOMMonitorConfig> implements LifecycleEventObserver {
    private static final String TAG = "OOMMonitor";
    private static volatile boolean mHasDumped;
    private static volatile boolean mHasProcessOldHprof;
    private static volatile boolean mIsLoopPendingStart;
    private static volatile boolean mIsLoopStarted;
    private static long mMonitorInitTime;
    public static final OOMMonitor INSTANCE = new OOMMonitor();
    private static final List<OOMTracker> mOOMTrackers = CollectionsKt.U(new HeapOOMTracker(), new ThreadOOMTracker(), new FdOOMTracker(), new PhysicalMemoryOOMTracker(), new FastHugeMemoryOOMTracker());
    private static final List<String> mTrackReasons = new ArrayList();
    private static List<Runnable> mForegroundPendingRunnables = new ArrayList();

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[Lifecycle.Event.ON_START.ordinal()] = 1;
            iArr[Lifecycle.Event.ON_STOP.ordinal()] = 2;
        }
    }

    private OOMMonitor() {
    }

    public static final /* synthetic */ List access$getMTrackReasons$p(OOMMonitor oOMMonitor) {
        return mTrackReasons;
    }

    public static final /* synthetic */ OOMMonitorConfig access$getMonitorConfig$p(OOMMonitor oOMMonitor) {
        return (OOMMonitorConfig) oOMMonitor.getMonitorConfig();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void dumpAndAnalysis() {
        Object failure;
        MonitorLog.i(TAG, "dumpAndAnalysis");
        try {
            Result.Companion companion = Result.INSTANCE;
            if (!OOMFileManager.isSpaceEnough()) {
                MonitorLog.e(TAG, "available space not enough", true);
            } else {
                if (mHasDumped) {
                    return;
                }
                mHasDumped = true;
                Date date = new Date();
                File fileCreateJsonAnalysisFile = OOMFileManager.createJsonAnalysisFile(date);
                File fileCreateOOMContextFile = OOMFileManager.createOOMContextFile(date);
                File fileCreateHprofAnalysisFile = OOMFileManager.createHprofAnalysisFile(date);
                fileCreateHprofAnalysisFile.createNewFile();
                fileCreateHprofAnalysisFile.setWritable(true);
                fileCreateHprofAnalysisFile.setReadable(true);
                MonitorLog.i(TAG, "write crash content to file");
                String crashAsString = NBSCrashTransaction.formatCrashAsString(date.getTime());
                crashAsString.getClass();
                FilesKt.d(fileCreateOOMContextFile, crashAsString);
                MonitorLog.i(TAG, "hprof analysis dir:" + OOMFileManager.getHprofAnalysisDir());
                ForkJvmHeapDumper.getInstance().dump(fileCreateHprofAnalysisFile.getAbsolutePath());
                MonitorLog.i(TAG, "end hprof dump", true);
                Thread.sleep(1000L);
                MonitorLog.i(TAG, "start hprof analysis");
                startAnalysisService(fileCreateHprofAnalysisFile, fileCreateJsonAnalysisFile, CollectionsKt.K(mTrackReasons, null, null, null, null, 63));
            }
            failure = Unit.f71739a;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            thA.printStackTrace();
            MonitorLog.i(TAG, "onJvmThreshold Exception " + thA.getMessage(), true);
        }
    }

    private final boolean isExceedAnalysisPeriod() {
        StringBuilder sb = new StringBuilder("OOMPreferenceManager.getFirstAnalysisTime():");
        OOMPreferenceManager oOMPreferenceManager = OOMPreferenceManager.INSTANCE;
        sb.append(oOMPreferenceManager.getFirstLaunchTime());
        MonitorLog.i(TAG, sb.toString());
        if (MonitorBuildConfig.getDEBUG()) {
            return false;
        }
        boolean z = System.currentTimeMillis() - oOMPreferenceManager.getFirstLaunchTime() > ((long) ((OOMMonitorConfig) getMonitorConfig()).getAnalysisPeriodPerVersion());
        if (z) {
            MonitorLog.e(TAG, "current version is out of max analysis period!");
        }
        return z;
    }

    private final boolean isExceedAnalysisTimes() {
        StringBuilder sb = new StringBuilder("OOMPreferenceManager.getAnalysisTimes:");
        OOMPreferenceManager oOMPreferenceManager = OOMPreferenceManager.INSTANCE;
        sb.append(oOMPreferenceManager.getAnalysisTimes());
        MonitorLog.i(TAG, sb.toString());
        if (MonitorBuildConfig.getDEBUG()) {
            return false;
        }
        boolean z = oOMPreferenceManager.getAnalysisTimes() > ((OOMMonitorConfig) getMonitorConfig()).getAnalysisMaxTimesPerVersion();
        if (z) {
            MonitorLog.e(TAG, "current version is out of max analysis times!");
        }
        return z;
    }

    private final void manualDumpHprof() {
        File[] fileArrListFiles = OOMFileManager.getManualDumpDir().listFiles();
        if (fileArrListFiles == null) {
            fileArrListFiles = new File[0];
        }
        for (File file : fileArrListFiles) {
            StringBuilder sb = new StringBuilder("manualDumpHprof upload:");
            file.getClass();
            sb.append(file.getAbsolutePath());
            MonitorLog.i(TAG, sb.toString());
            OOMHprofUploader hprofUploader = ((OOMMonitorConfig) getMonitorConfig()).getHprofUploader();
            if (hprofUploader != null) {
                hprofUploader.upload(file, OOMHprofUploader.HprofType.STRIPPED);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void processOldHprofFile() throws IOException {
        MonitorLog.i(TAG, "processHprofFile");
        if (mHasProcessOldHprof) {
            return;
        }
        mHasProcessOldHprof = true;
        reAnalysisHprof();
        manualDumpHprof();
    }

    private final void reAnalysisHprof() throws IOException {
        File[] fileArrListFiles = OOMFileManager.getHprofAnalysisDir().listFiles();
        if (fileArrListFiles == null) {
            fileArrListFiles = new File[0];
        }
        for (File file : fileArrListFiles) {
            if (file.exists()) {
                MonitorLog.i(TAG, "file canonicalPath is:" + file.getCanonicalPath());
                String name = file.getName();
                name.getClass();
                if (StringsKt.P(name, MonitorBuildConfig.getVERSION_NAME(), false)) {
                    String canonicalPath = file.getCanonicalPath();
                    canonicalPath.getClass();
                    if (StringsKt.p(canonicalPath, ".hprof", false)) {
                        String canonicalPath2 = file.getCanonicalPath();
                        canonicalPath2.getClass();
                        File file2 = new File(StringsKt.J(canonicalPath2, ".hprof", ".json"));
                        if (file2.exists()) {
                            MonitorLog.i(TAG, file2.length() == 0 ? "last analysis isn't succeed, delete file" : "delete old files", true);
                            file.delete();
                        } else {
                            MonitorLog.i(TAG, "create json file and then start service");
                            file2.createNewFile();
                            startAnalysisService(file, file2, "reanalysis");
                        }
                    }
                } else {
                    MonitorLog.i(TAG, "delete other version files " + file.getName());
                    file.delete();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startAnalysisService(final File hprofFile, final File jsonFile, final String reason) {
        if (hprofFile.length() == 0) {
            hprofFile.delete();
            MonitorLog.i(TAG, "hprof file size 0", true);
            return;
        }
        if (!Monitor_ApplicationKt.isForeground(MonitorManager.getApplication())) {
            MonitorLog.e(TAG, "try startAnalysisService, but not foreground");
            mForegroundPendingRunnables.add(new Runnable() { // from class: com.networkbench.agent.impl.oom.javaoom.monitor.OOMMonitor.startAnalysisService.1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        OOMMonitor.INSTANCE.startAnalysisService(hprofFile, jsonFile, reason);
                    } catch (Exception unused) {
                        MonitorLog.i(OOMMonitor.TAG, "startAnalysisService error", true);
                    }
                }
            });
            return;
        }
        OOMPreferenceManager.INSTANCE.increaseAnalysisTimes();
        AnalysisExtraData analysisExtraData = new AnalysisExtraData();
        analysisExtraData.setReason(reason);
        Activity currentActivity = Monitor_ApplicationKt.getCurrentActivity(MonitorManager.getApplication());
        String localClassName = currentActivity != null ? currentActivity.getLocalClassName() : null;
        if (localClassName == null) {
            localClassName = "";
        }
        analysisExtraData.setCurrentPage(localClassName);
        analysisExtraData.setUsageSeconds(String.valueOf((SystemClock.elapsedRealtime() - mMonitorInitTime) / 1000));
        HeapAnalysisService.INSTANCE.startAnalysisService(MonitorManager.getApplication(), mForegroundPendingRunnables, hprofFile, jsonFile, analysisExtraData, new AnalysisReceiver.ResultCallBack() { // from class: com.networkbench.agent.impl.oom.javaoom.monitor.OOMMonitor.startAnalysisService.2
            @Override // com.networkbench.agent.impl.oom.javaoom.monitor.analysis.AnalysisReceiver.ResultCallBack
            public void onError() {
                MonitorLog.e(OOMMonitor.TAG, "heap analysis error, do file delete", true);
                hprofFile.delete();
                jsonFile.delete();
            }

            @Override // com.networkbench.agent.impl.oom.javaoom.monitor.analysis.AnalysisReceiver.ResultCallBack
            public void onSuccess() {
                MonitorLog.i(OOMMonitor.TAG, "heap analysis success, do upload", true);
                String strC = FilesKt.c(jsonFile);
                MonitorLogger.INSTANCE.addExceptionEvent(strC, 2);
                OOMMonitor oOMMonitor = OOMMonitor.INSTANCE;
                OOMReportUploader reportUploader = OOMMonitor.access$getMonitorConfig$p(oOMMonitor).getReportUploader();
                if (reportUploader != null) {
                    reportUploader.upload(jsonFile, strC);
                }
                OOMHprofUploader hprofUploader = OOMMonitor.access$getMonitorConfig$p(oOMMonitor).getHprofUploader();
                if (hprofUploader != null) {
                    hprofUploader.upload(hprofFile, OOMHprofUploader.HprofType.ORIGIN);
                }
            }
        });
    }

    private final LoopMonitor.LoopState trackOOM() {
        SystemInfo.INSTANCE.refresh();
        mTrackReasons.clear();
        for (OOMTracker oOMTracker : mOOMTrackers) {
            if (oOMTracker.track()) {
                mTrackReasons.add(oOMTracker.reason());
            }
        }
        if (mTrackReasons.isEmpty() || !((OOMMonitorConfig) getMonitorConfig()).getEnableHprofDumpAnalysis()) {
            return LoopMonitor.LoopState.Continue.INSTANCE;
        }
        Monitor_ThreadKt.async$default(0L, new Function0<Unit>() { // from class: com.networkbench.agent.impl.oom.javaoom.monitor.OOMMonitor.trackOOM.1
            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m45invoke() {
                try {
                    StringBuilder sb = new StringBuilder("mTrackReasons:");
                    OOMMonitor oOMMonitor = OOMMonitor.INSTANCE;
                    sb.append(OOMMonitor.access$getMTrackReasons$p(oOMMonitor));
                    MonitorLog.i(OOMMonitor.TAG, sb.toString());
                    oOMMonitor.dumpAndAnalysis();
                } catch (Exception unused) {
                    MonitorLog.e(OOMMonitor.TAG, "dumpAndAnalysis error", true);
                }
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public /* bridge */ /* synthetic */ Object mo47invoke() {
                m45invoke();
                return Unit.f71739a;
            }
        }, 1, (Object) null);
        return LoopMonitor.LoopState.Terminate.INSTANCE;
    }

    /* JADX INFO: renamed from: call, reason: merged with bridge method [inline-methods] */
    public LoopMonitor.LoopState m43call() {
        if (Monitor_ApplicationKt.sdkVersionMatch() && !mHasDumped) {
            return trackOOM();
        }
        return LoopMonitor.LoopState.Terminate.INSTANCE;
    }

    public long getLoopInterval() {
        return ((OOMMonitorConfig) getMonitorConfig()).getLoopInterval();
    }

    public void init(CommonConfig commonConfig, OOMMonitorConfig monitorConfig) {
        commonConfig.getClass();
        monitorConfig.getClass();
        super.init(commonConfig, monitorConfig);
        mMonitorInitTime = SystemClock.elapsedRealtime();
        OOMPreferenceManager.INSTANCE.init(commonConfig.getSharedPreferencesInvoker());
        OOMFileManager.init((Function1<? super String, ? extends File>) commonConfig.getRootFileInvoker());
        Iterator<OOMTracker> it = mOOMTrackers.iterator();
        while (it.hasNext()) {
            it.next().init(commonConfig, monitorConfig);
        }
        Monitor_ApplicationKt.registerProcessLifecycleObserver(MonitorManager.getApplication(), this);
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(LifecycleOwner source, Lifecycle.Event event) {
        source.getClass();
        event.getClass();
        int i2 = WhenMappings.$EnumSwitchMapping$0[event.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                return;
            }
            mIsLoopPendingStart = mIsLoopStarted;
            MonitorLog.i(TAG, "background");
            stopLoop();
            return;
        }
        if (!mHasDumped && mIsLoopPendingStart) {
            MonitorLog.i(TAG, m.M);
            LoopMonitor.startLoop$default(this, false, false, 0L, 7, (Object) null);
        }
        Iterator<T> it = mForegroundPendingRunnables.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        mForegroundPendingRunnables.clear();
    }

    public void startLoop(boolean clearQueue, boolean postAtFront, long delayMillis) {
        if (!((Monitor) this).isInitialized()) {
            if (MonitorBuildConfig.getDEBUG()) {
                v7.h("Monitor is not initialized");
            }
        } else if (Monitor_ProcessKt.isMainProcess()) {
            MonitorLog.i(TAG, "startLoop()");
            if (mIsLoopStarted) {
                return;
            }
            mIsLoopStarted = true;
            super.startLoop(clearQueue, postAtFront, delayMillis);
            getLoopHandler().postDelayed(new Runnable() { // from class: com.networkbench.agent.impl.oom.javaoom.monitor.OOMMonitor.startLoop.2
                @Override // java.lang.Runnable
                public final void run() {
                    Monitor_ThreadKt.async$default(0L, new Function0<Unit>() { // from class: com.networkbench.agent.impl.oom.javaoom.monitor.OOMMonitor.startLoop.2.1
                        /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                        public final void m44invoke() {
                            try {
                                OOMMonitor.INSTANCE.processOldHprofFile();
                            } catch (Throwable unused) {
                                MonitorLog.e(OOMMonitor.TAG, "processOldHprofFile error", true);
                            }
                        }

                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public /* bridge */ /* synthetic */ Object mo47invoke() {
                            m44invoke();
                            return Unit.f71739a;
                        }
                    }, 1, (Object) null);
                }
            }, delayMillis);
        }
    }

    public void stopLoop() {
        if (!((Monitor) this).isInitialized()) {
            if (MonitorBuildConfig.getDEBUG()) {
                v7.h("Monitor is not initialized");
            }
        } else if (Monitor_ProcessKt.isMainProcess()) {
            super.stopLoop();
            MonitorLog.i(TAG, "stopLoop()");
            mIsLoopStarted = false;
        }
    }
}
