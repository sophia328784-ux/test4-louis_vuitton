package com.networkbench.agent.impl.oom.javaoom.monitor;

import android.os.StatFs;
import com.networkbench.agent.impl.base.MonitorBuildConfig;
import defpackage.d21;
import defpackage.fc;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference0Impl;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u001f\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u0006H\u0007J\u0010\u0010!\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020#H\u0007J\u0010\u0010$\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020#H\u0007J\u0010\u0010%\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020#H\u0007J\u0010\u0010&\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020#H\u0007J\u001c\u0010'\u001a\u00020(2\u0012\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\u0012H\u0007J\u0012\u0010'\u001a\u00020(2\b\u0010*\u001a\u0004\u0018\u00010\u0004H\u0007J\b\u0010+\u001a\u00020,H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R!\u0010\u0005\u001a\u00020\u00068FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u0012\u0004\b\u0007\u0010\u0002\u001a\u0004\b\b\u0010\tR!\u0010\f\u001a\u00020\u00068FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b\u000f\u0010\u000b\u0012\u0004\b\r\u0010\u0002\u001a\u0004\b\u000e\u0010\tR\u000e\u0010\u0010\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\u0012X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n\u0000R!\u0010\u0014\u001a\u00020\u00068FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b\u0017\u0010\u000b\u0012\u0004\b\u0015\u0010\u0002\u001a\u0004\b\u0016\u0010\tR\u001b\u0010\u0018\u001a\u00020\u00068FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u000b\u001a\u0004\b\u0019\u0010\tR!\u0010\u001b\u001a\u00020\u00068FX\u0087\u0084\u0002¢\u0006\u0012\n\u0004\b\u001e\u0010\u000b\u0012\u0004\b\u001c\u0010\u0002\u001a\u0004\b\u001d\u0010\t¨\u0006-"}, d2 = {"Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMFileManager;", "", "()V", "TIME_FORMAT", "", "fdDumpDir", "Ljava/io/File;", "getFdDumpDir$annotations", "getFdDumpDir", "()Ljava/io/File;", "fdDumpDir$delegate", "Lkotlin/Lazy;", "hprofAnalysisDir", "getHprofAnalysisDir$annotations", "getHprofAnalysisDir", "hprofAnalysisDir$delegate", "mPrefix", "mRootDirInvoker", "Lkotlin/Function1;", "mRootPath", "manualDumpDir", "getManualDumpDir$annotations", "getManualDumpDir", "manualDumpDir$delegate", "rootDir", "getRootDir", "rootDir$delegate", "threadDumpDir", "getThreadDumpDir$annotations", "getThreadDumpDir", "threadDumpDir$delegate", "createDumpFile", "dumpDir", "createHprofAnalysisFile", "date", "Ljava/util/Date;", "createHprofOOMDumpFile", "createJsonAnalysisFile", "createOOMContextFile", "init", "", "rootDirInvoker", "rootPath", "isSpaceEnough", "", "koom-java-leak_release"}, k = 1, mv = {1, 4, 1})
public final class OOMFileManager {
    private static final String TIME_FORMAT = "yyyy-MM-dd_HH-mm-ss_SSS";
    private static String mPrefix;
    private static Function1<? super String, ? extends File> mRootDirInvoker;
    private static String mRootPath;
    public static final OOMFileManager INSTANCE = new OOMFileManager();

    /* JADX INFO: renamed from: rootDir$delegate, reason: from kotlin metadata */
    private static final Lazy rootDir = LazyKt.b(new Function0<File>() { // from class: com.networkbench.agent.impl.oom.javaoom.monitor.OOMFileManager$rootDir$2

        /* JADX INFO: renamed from: com.networkbench.agent.impl.oom.javaoom.monitor.OOMFileManager$rootDir$2$1, reason: invalid class name */
        @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
        final /* synthetic */ class AnonymousClass1 extends MutablePropertyReference0Impl {
            public AnonymousClass1(OOMFileManager oOMFileManager) {
                super(oOMFileManager, OOMFileManager.class, "mRootDirInvoker", "getMRootDirInvoker()Lkotlin/jvm/functions/Function1;", 0);
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return OOMFileManager.access$getMRootDirInvoker$p((OOMFileManager) this.receiver);
            }

            public void set(Object obj) {
                OOMFileManager.mRootDirInvoker = (Function1) obj;
            }
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: invoke */
        public final File mo47invoke() {
            OOMFileManager oOMFileManager = OOMFileManager.INSTANCE;
            return OOMFileManager.mRootDirInvoker != null ? (File) OOMFileManager.access$getMRootDirInvoker$p(oOMFileManager).invoke("oom") : new File(OOMFileManager.access$getMRootPath$p(oOMFileManager));
        }
    });

    /* JADX INFO: renamed from: hprofAnalysisDir$delegate, reason: from kotlin metadata */
    private static final Lazy hprofAnalysisDir = LazyKt.b(new Function0<File>() { // from class: com.networkbench.agent.impl.oom.javaoom.monitor.OOMFileManager$hprofAnalysisDir$2
        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: invoke */
        public final File mo47invoke() {
            File file = new File(OOMFileManager.INSTANCE.getRootDir(), "memory/hprof-aly");
            file.mkdirs();
            return file;
        }
    });

    /* JADX INFO: renamed from: manualDumpDir$delegate, reason: from kotlin metadata */
    private static final Lazy manualDumpDir = LazyKt.b(new Function0<File>() { // from class: com.networkbench.agent.impl.oom.javaoom.monitor.OOMFileManager$manualDumpDir$2
        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: invoke */
        public final File mo47invoke() {
            File file = new File(OOMFileManager.INSTANCE.getRootDir(), "memory/hprof-man");
            file.mkdirs();
            return file;
        }
    });

    /* JADX INFO: renamed from: threadDumpDir$delegate, reason: from kotlin metadata */
    private static final Lazy threadDumpDir = LazyKt.b(new Function0<File>() { // from class: com.networkbench.agent.impl.oom.javaoom.monitor.OOMFileManager$threadDumpDir$2
        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: invoke */
        public final File mo47invoke() {
            File file = new File(OOMFileManager.getHprofAnalysisDir(), "thread");
            file.mkdirs();
            return file;
        }
    });

    /* JADX INFO: renamed from: fdDumpDir$delegate, reason: from kotlin metadata */
    private static final Lazy fdDumpDir = LazyKt.b(new Function0<File>() { // from class: com.networkbench.agent.impl.oom.javaoom.monitor.OOMFileManager$fdDumpDir$2
        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: invoke */
        public final File mo47invoke() {
            File file = new File(OOMFileManager.getHprofAnalysisDir(), "fd");
            file.mkdirs();
            return file;
        }
    });

    private OOMFileManager() {
    }

    public static final /* synthetic */ Function1 access$getMRootDirInvoker$p(OOMFileManager oOMFileManager) {
        Function1<? super String, ? extends File> function1 = mRootDirInvoker;
        if (function1 != null) {
            return function1;
        }
        Intrinsics.h("mRootDirInvoker");
        throw null;
    }

    public static final /* synthetic */ String access$getMRootPath$p(OOMFileManager oOMFileManager) {
        String str = mRootPath;
        if (str != null) {
            return str;
        }
        Intrinsics.h("mRootPath");
        throw null;
    }

    @JvmStatic
    public static final File createDumpFile(File dumpDir) {
        dumpDir.getClass();
        File file = new File(dumpDir, "dump.txt");
        dumpDir.mkdirs();
        return file;
    }

    @JvmStatic
    public static final File createHprofAnalysisFile(Date date) {
        date.getClass();
        String str = new SimpleDateFormat(TIME_FORMAT, Locale.CHINESE).format(date);
        File hprofAnalysisDir2 = getHprofAnalysisDir();
        StringBuilder sb = new StringBuilder();
        String str2 = mPrefix;
        if (str2 == null) {
            Intrinsics.h("mPrefix");
            throw null;
        }
        File file = new File(hprofAnalysisDir2, d21.p(sb, str2, str, ".hprof"));
        getHprofAnalysisDir().mkdirs();
        return file;
    }

    @JvmStatic
    public static final File createHprofOOMDumpFile(Date date) {
        date.getClass();
        String str = new SimpleDateFormat(TIME_FORMAT, Locale.CHINESE).format(date);
        File manualDumpDir2 = getManualDumpDir();
        StringBuilder sb = new StringBuilder();
        String str2 = mPrefix;
        if (str2 == null) {
            Intrinsics.h("mPrefix");
            throw null;
        }
        File file = new File(manualDumpDir2, d21.p(sb, str2, str, ".hprof"));
        getManualDumpDir().mkdirs();
        return file;
    }

    @JvmStatic
    public static final File createJsonAnalysisFile(Date date) {
        date.getClass();
        String str = new SimpleDateFormat(TIME_FORMAT, Locale.CHINESE).format(date);
        File hprofAnalysisDir2 = getHprofAnalysisDir();
        StringBuilder sb = new StringBuilder();
        String str2 = mPrefix;
        if (str2 == null) {
            Intrinsics.h("mPrefix");
            throw null;
        }
        File file = new File(hprofAnalysisDir2, d21.p(sb, str2, str, ".json"));
        getHprofAnalysisDir().mkdirs();
        return file;
    }

    @JvmStatic
    public static final File createOOMContextFile(Date date) {
        date.getClass();
        String str = new SimpleDateFormat(TIME_FORMAT, Locale.CHINESE).format(date);
        File hprofAnalysisDir2 = getHprofAnalysisDir();
        StringBuilder sb = new StringBuilder();
        String str2 = mPrefix;
        if (str2 == null) {
            Intrinsics.h("mPrefix");
            throw null;
        }
        File file = new File(hprofAnalysisDir2, d21.p(sb, str2, str, ".content"));
        getHprofAnalysisDir().mkdirs();
        return file;
    }

    public static final File getFdDumpDir() {
        return (File) fdDumpDir.getF71699b();
    }

    @JvmStatic
    public static /* synthetic */ void getFdDumpDir$annotations() {
    }

    public static final File getHprofAnalysisDir() {
        return (File) hprofAnalysisDir.getF71699b();
    }

    @JvmStatic
    public static /* synthetic */ void getHprofAnalysisDir$annotations() {
    }

    public static final File getManualDumpDir() {
        return (File) manualDumpDir.getF71699b();
    }

    @JvmStatic
    public static /* synthetic */ void getManualDumpDir$annotations() {
    }

    public static final File getThreadDumpDir() {
        return (File) threadDumpDir.getF71699b();
    }

    @JvmStatic
    public static /* synthetic */ void getThreadDumpDir$annotations() {
    }

    @JvmStatic
    public static final void init(Function1<? super String, ? extends File> rootDirInvoker) {
        rootDirInvoker.getClass();
        mRootDirInvoker = rootDirInvoker;
        mPrefix = fc.l(new StringBuilder(), MonitorBuildConfig.getVERSION_NAME(), '_');
    }

    @JvmStatic
    public static final boolean isSpaceEnough() {
        StatFs statFs = new StatFs(getHprofAnalysisDir().getCanonicalPath());
        return ((double) (statFs.getBlockSizeLong() * ((long) statFs.getAvailableBlocks()))) > 1258291.2d;
    }

    public final File getRootDir() {
        return (File) rootDir.getF71699b();
    }

    @JvmStatic
    public static final void init(String rootPath) {
        if (rootPath != null) {
            mRootPath = rootPath;
        }
        mPrefix = fc.l(new StringBuilder(), MonitorBuildConfig.getVERSION_NAME(), '_');
    }
}
