package com.networkbench.agent.impl.oom.javaoom.monitor.tracker.model;

import android.os.Build;
import android.text.TextUtils;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.networkbench.agent.impl.base.MonitorLog;
import defpackage.a;
import defpackage.d21;
import defpackage.fc;
import defpackage.r81;
import defpackage.tr;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.Charsets;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\bÀ\u0002\u0018\u00002\u00020\u0001:\u0003<=>B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010)\u001a\u00020*J\u0006\u0010+\u001a\u00020,J\u0013\u0010-\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0.¢\u0006\u0002\u0010/J9\u00100\u001a\u00020,*\u0002012\b\b\u0002\u00102\u001a\u0002032!\u00104\u001a\u001d\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b6\u0012\b\b7\u0012\u0004\b\b(8\u0012\u0004\u0012\u00020,05H\u0002J\u0014\u00109\u001a\u00020:*\u00020\u00042\u0006\u0010;\u001a\u00020\u000bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0011\"\u0004\b\u0016\u0010\u0013R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001a\u0010#\u001a\u00020\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u001a\"\u0004\b%\u0010\u001cR\u001a\u0010&\u001a\u00020\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010 \"\u0004\b(\u0010\"¨\u0006?"}, d2 = {"Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;", "", "()V", "MEM_AVA_REGEX", "Lkotlin/text/Regex;", "MEM_CMA_REGEX", "MEM_FREE_REGEX", "MEM_ION_REGEX", "MEM_TOTAL_REGEX", "RSS_REGEX", "TAG", "", "THREADS_REGEX", "VSS_REGEX", "javaHeap", "Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;", "getJavaHeap", "()Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;", "setJavaHeap", "(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;)V", "lastJavaHeap", "getLastJavaHeap", "setLastJavaHeap", "lastMemInfo", "Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;", "getLastMemInfo", "()Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;", "setLastMemInfo", "(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;)V", "lastProcStatus", "Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;", "getLastProcStatus", "()Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;", "setLastProcStatus", "(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;)V", "memInfo", "getMemInfo", "setMemInfo", "procStatus", "getProcStatus", "setProcStatus", "isSupportArm64", "", "refresh", "", "supportedAbis", "", "()[Ljava/lang/String;", "forEachLineQuietly", "Ljava/io/File;", "charset", "Ljava/nio/charset/Charset;", "action", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "line", "matchValue", "", NBSSpanMetricUnit.Second, "JavaHeap", "MemInfo", "ProcStatus", "koom-java-leak_release"}, k = 1, mv = {1, 4, 1})
public final class SystemInfo {
    private static final String TAG = "OOMMonitor_SystemInfo";
    private static MemInfo lastMemInfo;
    private static ProcStatus lastProcStatus;
    private static MemInfo memInfo;
    private static ProcStatus procStatus;
    public static final SystemInfo INSTANCE = new SystemInfo();
    private static final Regex VSS_REGEX = new Regex("VmSize:\\s*(\\d+)\\s*kB");
    private static final Regex RSS_REGEX = new Regex("VmRSS:\\s*(\\d+)\\s*kB");
    private static final Regex THREADS_REGEX = new Regex("Threads:\\s*(\\d+)\\s*");
    private static final Regex MEM_TOTAL_REGEX = new Regex("MemTotal:\\s*(\\d+)\\s*kB");
    private static final Regex MEM_FREE_REGEX = new Regex("MemFree:\\s*(\\d+)\\s*kB");
    private static final Regex MEM_AVA_REGEX = new Regex("MemAvailable:\\s*(\\d+)\\s*kB");
    private static final Regex MEM_CMA_REGEX = new Regex("CmaTotal:\\s*(\\d+)\\s*kB");
    private static final Regex MEM_ION_REGEX = new Regex("ION_heap:\\s*(\\d+)\\s*kB");
    private static JavaHeap javaHeap = new JavaHeap(0, 0, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 31, null);
    private static JavaHeap lastJavaHeap = new JavaHeap(0, 0, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 31, null);

    static {
        int i2 = 0;
        int i3 = 0;
        procStatus = new ProcStatus(0, i2, i3, 7, null);
        int i4 = 0;
        lastProcStatus = new ProcStatus(i2, i3, i4, 7, null);
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        memInfo = new MemInfo(i3, i4, i5, i6, i7, Call.Parameters.DEFAULT_CAMERA_ZOOM, 63, null);
        lastMemInfo = new MemInfo(i4, i5, i6, i7, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 63, null);
    }

    private SystemInfo() {
    }

    public static final /* synthetic */ Regex access$getMEM_AVA_REGEX$p(SystemInfo systemInfo) {
        return MEM_AVA_REGEX;
    }

    public static final /* synthetic */ Regex access$getMEM_CMA_REGEX$p(SystemInfo systemInfo) {
        return MEM_CMA_REGEX;
    }

    public static final /* synthetic */ Regex access$getMEM_FREE_REGEX$p(SystemInfo systemInfo) {
        return MEM_FREE_REGEX;
    }

    public static final /* synthetic */ Regex access$getMEM_ION_REGEX$p(SystemInfo systemInfo) {
        return MEM_ION_REGEX;
    }

    public static final /* synthetic */ Regex access$getMEM_TOTAL_REGEX$p(SystemInfo systemInfo) {
        return MEM_TOTAL_REGEX;
    }

    public static final /* synthetic */ Regex access$getRSS_REGEX$p(SystemInfo systemInfo) {
        return RSS_REGEX;
    }

    public static final /* synthetic */ Regex access$getTHREADS_REGEX$p(SystemInfo systemInfo) {
        return THREADS_REGEX;
    }

    public static final /* synthetic */ Regex access$getVSS_REGEX$p(SystemInfo systemInfo) {
        return VSS_REGEX;
    }

    private final void forEachLineQuietly(File file, Charset charset, Function1<? super String, Unit> function1) {
        Object failure;
        try {
            Result.Companion companion = Result.INSTANCE;
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), charset));
            function1.getClass();
            try {
                Iterator it = TextStreamsKt.a(bufferedReader).iterator();
                while (it.hasNext()) {
                    function1.invoke(it.next());
                }
                bufferedReader.close();
                failure = Unit.f71739a;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.a(bufferedReader, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th3);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            thA.printStackTrace();
        }
    }

    public static /* synthetic */ void forEachLineQuietly$default(SystemInfo systemInfo, File file, Charset charset, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        systemInfo.forEachLineQuietly(file, charset, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int matchValue(Regex regex, String str) {
        List listC;
        String str2;
        if (str == null) {
            r81.d("null cannot be cast to non-null type kotlin.CharSequence");
            return 0;
        }
        MatchResult matchResultE = regex.e(StringsKt.a0(str).toString());
        if (matchResultE == null || (listC = matchResultE.c()) == null || (str2 = (String) CollectionsKt.G(1, listC)) == null) {
            return 0;
        }
        return Integer.parseInt(str2);
    }

    public final JavaHeap getJavaHeap() {
        return javaHeap;
    }

    public final JavaHeap getLastJavaHeap() {
        return lastJavaHeap;
    }

    public final MemInfo getLastMemInfo() {
        return lastMemInfo;
    }

    public final ProcStatus getLastProcStatus() {
        return lastProcStatus;
    }

    public final MemInfo getMemInfo() {
        return memInfo;
    }

    public final ProcStatus getProcStatus() {
        return procStatus;
    }

    public final boolean isSupportArm64() {
        return ArraysKt.f("arm64-v8a", supportedAbis());
    }

    public final void refresh() {
        lastJavaHeap = javaHeap;
        lastMemInfo = memInfo;
        lastProcStatus = procStatus;
        javaHeap = new JavaHeap(0L, 0L, 0L, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, 31, null);
        int i2 = 0;
        int i3 = 0;
        procStatus = new ProcStatus(0, i2, i3, 7, null);
        memInfo = new MemInfo(i2, i3, 0, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 63, null);
        javaHeap.setMax(Runtime.getRuntime().maxMemory());
        javaHeap.setTotal(Runtime.getRuntime().totalMemory());
        javaHeap.setFree(Runtime.getRuntime().freeMemory());
        JavaHeap javaHeap2 = javaHeap;
        javaHeap2.setUsed(javaHeap2.getTotal() - javaHeap.getFree());
        JavaHeap javaHeap3 = javaHeap;
        javaHeap3.setRate((javaHeap3.getUsed() * 1.0f) / javaHeap.getMax());
        forEachLineQuietly$default(this, new File("/proc/self/status"), null, new Function1<String, Unit>() { // from class: com.networkbench.agent.impl.oom.javaoom.monitor.tracker.model.SystemInfo.refresh.1
            public final void invoke(String str) {
                str.getClass();
                SystemInfo systemInfo = SystemInfo.INSTANCE;
                if (systemInfo.getProcStatus().getVssInKb() == 0 || systemInfo.getProcStatus().getRssInKb() == 0 || systemInfo.getProcStatus().getThread() == 0) {
                    if (StringsKt.P(str, "VmSize", false)) {
                        systemInfo.getProcStatus().setVssInKb(systemInfo.matchValue(SystemInfo.access$getVSS_REGEX$p(systemInfo), str));
                    } else if (StringsKt.P(str, "VmRSS", false)) {
                        systemInfo.getProcStatus().setRssInKb(systemInfo.matchValue(SystemInfo.access$getRSS_REGEX$p(systemInfo), str));
                    } else if (StringsKt.P(str, "Threads", false)) {
                        systemInfo.getProcStatus().setThread(systemInfo.matchValue(SystemInfo.access$getTHREADS_REGEX$p(systemInfo), str));
                    }
                }
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((String) obj);
                return Unit.f71739a;
            }
        }, 1, null);
        forEachLineQuietly$default(this, new File("/proc/meminfo"), null, new Function1<String, Unit>() { // from class: com.networkbench.agent.impl.oom.javaoom.monitor.tracker.model.SystemInfo.refresh.2
            public final void invoke(String str) {
                str.getClass();
                if (StringsKt.P(str, "MemTotal", false)) {
                    SystemInfo systemInfo = SystemInfo.INSTANCE;
                    systemInfo.getMemInfo().setTotalInKb(systemInfo.matchValue(SystemInfo.access$getMEM_TOTAL_REGEX$p(systemInfo), str));
                    return;
                }
                if (StringsKt.P(str, "MemFree", false)) {
                    SystemInfo systemInfo2 = SystemInfo.INSTANCE;
                    systemInfo2.getMemInfo().setFreeInKb(systemInfo2.matchValue(SystemInfo.access$getMEM_FREE_REGEX$p(systemInfo2), str));
                    return;
                }
                if (StringsKt.P(str, "MemAvailable", false)) {
                    SystemInfo systemInfo3 = SystemInfo.INSTANCE;
                    systemInfo3.getMemInfo().setAvailableInKb(systemInfo3.matchValue(SystemInfo.access$getMEM_AVA_REGEX$p(systemInfo3), str));
                } else if (StringsKt.P(str, "CmaTotal", false)) {
                    SystemInfo systemInfo4 = SystemInfo.INSTANCE;
                    systemInfo4.getMemInfo().setCmaTotal(systemInfo4.matchValue(SystemInfo.access$getMEM_CMA_REGEX$p(systemInfo4), str));
                } else if (StringsKt.P(str, "ION_heap", false)) {
                    SystemInfo systemInfo5 = SystemInfo.INSTANCE;
                    systemInfo5.getMemInfo().setIONHeap(systemInfo5.matchValue(SystemInfo.access$getMEM_ION_REGEX$p(systemInfo5), str));
                }
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((String) obj);
                return Unit.f71739a;
            }
        }, 1, null);
        MemInfo memInfo2 = memInfo;
        memInfo2.setRate((memInfo2.getAvailableInKb() * 1.0f) / memInfo.getTotalInKb());
        MonitorLog.i(TAG, "----OOM Monitor Memory----");
        StringBuilder sb = new StringBuilder("[java] max:");
        sb.append(javaHeap.getMax());
        sb.append(" used ratio:");
        MonitorLog.i(TAG, tr.k(sb, (int) (javaHeap.getRate() * 100.0f), '%'));
        MonitorLog.i(TAG, "[proc] VmSize:" + procStatus.getVssInKb() + "kB VmRss:" + procStatus.getRssInKb() + "kB Threads:" + procStatus.getThread());
        MonitorLog.i(TAG, "[meminfo] MemTotal:" + memInfo.getTotalInKb() + "kB MemFree:" + memInfo.getFreeInKb() + "kB MemAvailable:" + memInfo.getAvailableInKb() + "kB");
        MonitorLog.i(TAG, "avaliable ratio:" + ((int) (memInfo.getRate() * 100.0f)) + "% CmaTotal:" + memInfo.getCmaTotal() + "kB ION_heap:" + memInfo.getIONHeap() + "kB");
    }

    public final void setJavaHeap(JavaHeap javaHeap2) {
        javaHeap2.getClass();
        javaHeap = javaHeap2;
    }

    public final void setLastJavaHeap(JavaHeap javaHeap2) {
        javaHeap2.getClass();
        lastJavaHeap = javaHeap2;
    }

    public final void setLastMemInfo(MemInfo memInfo2) {
        memInfo2.getClass();
        lastMemInfo = memInfo2;
    }

    public final void setLastProcStatus(ProcStatus procStatus2) {
        procStatus2.getClass();
        lastProcStatus = procStatus2;
    }

    public final void setMemInfo(MemInfo memInfo2) {
        memInfo2.getClass();
        memInfo = memInfo2;
    }

    public final void setProcStatus(ProcStatus procStatus2) {
        procStatus2.getClass();
        procStatus = procStatus2;
    }

    public final String[] supportedAbis() {
        String[] strArr = Build.SUPPORTED_ABIS;
        strArr.getClass();
        if (strArr.length == 0) {
            String str = Build.CPU_ABI2;
            return !TextUtils.isEmpty(str) ? new String[]{Build.CPU_ABI, str} : new String[]{Build.CPU_ABI};
        }
        strArr.getClass();
        return strArr;
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\b\"\u0004\b\f\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\b\"\u0004\b\u000e\u0010\n¨\u0006\u0019"}, d2 = {"Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;", "", "thread", "", "vssInKb", "rssInKb", "(III)V", "getRssInKb", "()I", "setRssInKb", "(I)V", "getThread", "setThread", "getVssInKb", "setVssInKb", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "", "koom-java-leak_release"}, k = 1, mv = {1, 4, 1})
    public static final /* data */ class ProcStatus {
        private int rssInKb;
        private int thread;
        private int vssInKb;

        public /* synthetic */ ProcStatus(int i2, int i3, int i4, int i5, DefaultConstructorMarker defaultConstructorMarker) {
            this((i5 & 1) != 0 ? 0 : i2, (i5 & 2) != 0 ? 0 : i3, (i5 & 4) != 0 ? 0 : i4);
        }

        public static /* synthetic */ ProcStatus copy$default(ProcStatus procStatus, int i2, int i3, int i4, int i5, Object obj) {
            if ((i5 & 1) != 0) {
                i2 = procStatus.thread;
            }
            if ((i5 & 2) != 0) {
                i3 = procStatus.vssInKb;
            }
            if ((i5 & 4) != 0) {
                i4 = procStatus.rssInKb;
            }
            return procStatus.copy(i2, i3, i4);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final int getThread() {
            return this.thread;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final int getVssInKb() {
            return this.vssInKb;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final int getRssInKb() {
            return this.rssInKb;
        }

        public final ProcStatus copy(int thread, int vssInKb, int rssInKb) {
            return new ProcStatus(thread, vssInKb, rssInKb);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ProcStatus)) {
                return false;
            }
            ProcStatus procStatus = (ProcStatus) other;
            return this.thread == procStatus.thread && this.vssInKb == procStatus.vssInKb && this.rssInKb == procStatus.rssInKb;
        }

        public final int getRssInKb() {
            return this.rssInKb;
        }

        public final int getThread() {
            return this.thread;
        }

        public final int getVssInKb() {
            return this.vssInKb;
        }

        public int hashCode() {
            return Integer.hashCode(this.rssInKb) + tr.b(this.vssInKb, Integer.hashCode(this.thread) * 31, 31);
        }

        public final void setRssInKb(int i2) {
            this.rssInKb = i2;
        }

        public final void setThread(int i2) {
            this.thread = i2;
        }

        public final void setVssInKb(int i2) {
            this.vssInKb = i2;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("ProcStatus(thread=");
            sb.append(this.thread);
            sb.append(", vssInKb=");
            sb.append(this.vssInKb);
            sb.append(", rssInKb=");
            return a.i(this.rssInKb, ")", sb);
        }

        public ProcStatus(int i2, int i3, int i4) {
            this.thread = i2;
            this.vssInKb = i3;
            this.rssInKb = i4;
        }

        public ProcStatus() {
            this(0, 0, 0, 7, null);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\bHÆ\u0003J;\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\"HÖ\u0001J\t\u0010#\u001a\u00020$HÖ\u0001R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000b\"\u0004\b\u000f\u0010\rR\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u000b\"\u0004\b\u0015\u0010\rR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u000b\"\u0004\b\u0017\u0010\r¨\u0006%"}, d2 = {"Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;", "", "max", "", "total", "free", "used", "rate", "", "(JJJJF)V", "getFree", "()J", "setFree", "(J)V", "getMax", "setMax", "getRate", "()F", "setRate", "(F)V", "getTotal", "setTotal", "getUsed", "setUsed", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "", "toString", "", "koom-java-leak_release"}, k = 1, mv = {1, 4, 1})
    public static final /* data */ class JavaHeap {
        private long free;
        private long max;
        private float rate;
        private long total;
        private long used;

        public /* synthetic */ JavaHeap(long j2, long j3, long j4, long j5, float f2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? 0L : j2, (i2 & 2) != 0 ? 0L : j3, (i2 & 4) != 0 ? 0L : j4, (i2 & 8) != 0 ? 0L : j5, (i2 & 16) != 0 ? Call.Parameters.DEFAULT_CAMERA_ZOOM : f2);
        }

        public static /* synthetic */ JavaHeap copy$default(JavaHeap javaHeap, long j2, long j3, long j4, long j5, float f2, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                j2 = javaHeap.max;
            }
            long j6 = j2;
            if ((i2 & 2) != 0) {
                j3 = javaHeap.total;
            }
            return javaHeap.copy(j6, j3, (i2 & 4) != 0 ? javaHeap.free : j4, (i2 & 8) != 0 ? javaHeap.used : j5, (i2 & 16) != 0 ? javaHeap.rate : f2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final long getMax() {
            return this.max;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final long getTotal() {
            return this.total;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final long getFree() {
            return this.free;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final long getUsed() {
            return this.used;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final float getRate() {
            return this.rate;
        }

        public final JavaHeap copy(long max, long total, long free, long used, float rate) {
            return new JavaHeap(max, total, free, used, rate);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof JavaHeap)) {
                return false;
            }
            JavaHeap javaHeap = (JavaHeap) other;
            return this.max == javaHeap.max && this.total == javaHeap.total && this.free == javaHeap.free && this.used == javaHeap.used && Float.compare(this.rate, javaHeap.rate) == 0;
        }

        public final long getFree() {
            return this.free;
        }

        public final long getMax() {
            return this.max;
        }

        public final float getRate() {
            return this.rate;
        }

        public final long getTotal() {
            return this.total;
        }

        public final long getUsed() {
            return this.used;
        }

        public int hashCode() {
            return Float.hashCode(this.rate) + fc.a(fc.a(fc.a(Long.hashCode(this.max) * 31, 31, this.total), 31, this.free), 31, this.used);
        }

        public final void setFree(long j2) {
            this.free = j2;
        }

        public final void setMax(long j2) {
            this.max = j2;
        }

        public final void setRate(float f2) {
            this.rate = f2;
        }

        public final void setTotal(long j2) {
            this.total = j2;
        }

        public final void setUsed(long j2) {
            this.used = j2;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("JavaHeap(max=");
            sb.append(this.max);
            sb.append(", total=");
            sb.append(this.total);
            sb.append(", free=");
            sb.append(this.free);
            sb.append(", used=");
            sb.append(this.used);
            sb.append(", rate=");
            return d21.e(this.rate, ")", sb);
        }

        public JavaHeap(long j2, long j3, long j4, long j5, float f2) {
            this.max = j2;
            this.total = j3;
            this.free = j4;
            this.used = j5;
            this.rate = f2;
        }

        public JavaHeap() {
            this(0L, 0L, 0L, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, 31, null);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0019\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\tHÆ\u0003JE\u0010!\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010%\u001a\u00020\u0003HÖ\u0001J\t\u0010&\u001a\u00020'HÖ\u0001R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\f\"\u0004\b\u0010\u0010\u000eR\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\f\"\u0004\b\u0012\u0010\u000eR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\f\"\u0004\b\u0014\u0010\u000eR\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\f\"\u0004\b\u001a\u0010\u000e¨\u0006("}, d2 = {"Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;", "", "totalInKb", "", "freeInKb", "availableInKb", "IONHeap", "cmaTotal", "rate", "", "(IIIIIF)V", "getIONHeap", "()I", "setIONHeap", "(I)V", "getAvailableInKb", "setAvailableInKb", "getCmaTotal", "setCmaTotal", "getFreeInKb", "setFreeInKb", "getRate", "()F", "setRate", "(F)V", "getTotalInKb", "setTotalInKb", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "toString", "", "koom-java-leak_release"}, k = 1, mv = {1, 4, 1})
    public static final /* data */ class MemInfo {
        private int IONHeap;
        private int availableInKb;
        private int cmaTotal;
        private int freeInKb;
        private float rate;
        private int totalInKb;

        public /* synthetic */ MemInfo(int i2, int i3, int i4, int i5, int i6, float f2, int i7, DefaultConstructorMarker defaultConstructorMarker) {
            this((i7 & 1) != 0 ? 0 : i2, (i7 & 2) != 0 ? 0 : i3, (i7 & 4) != 0 ? 0 : i4, (i7 & 8) != 0 ? 0 : i5, (i7 & 16) != 0 ? 0 : i6, (i7 & 32) != 0 ? Call.Parameters.DEFAULT_CAMERA_ZOOM : f2);
        }

        public static /* synthetic */ MemInfo copy$default(MemInfo memInfo, int i2, int i3, int i4, int i5, int i6, float f2, int i7, Object obj) {
            if ((i7 & 1) != 0) {
                i2 = memInfo.totalInKb;
            }
            if ((i7 & 2) != 0) {
                i3 = memInfo.freeInKb;
            }
            if ((i7 & 4) != 0) {
                i4 = memInfo.availableInKb;
            }
            if ((i7 & 8) != 0) {
                i5 = memInfo.IONHeap;
            }
            if ((i7 & 16) != 0) {
                i6 = memInfo.cmaTotal;
            }
            if ((i7 & 32) != 0) {
                f2 = memInfo.rate;
            }
            int i8 = i6;
            float f3 = f2;
            return memInfo.copy(i2, i3, i4, i5, i8, f3);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final int getTotalInKb() {
            return this.totalInKb;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final int getFreeInKb() {
            return this.freeInKb;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final int getAvailableInKb() {
            return this.availableInKb;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final int getIONHeap() {
            return this.IONHeap;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final int getCmaTotal() {
            return this.cmaTotal;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final float getRate() {
            return this.rate;
        }

        public final MemInfo copy(int totalInKb, int freeInKb, int availableInKb, int IONHeap, int cmaTotal, float rate) {
            return new MemInfo(totalInKb, freeInKb, availableInKb, IONHeap, cmaTotal, rate);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof MemInfo)) {
                return false;
            }
            MemInfo memInfo = (MemInfo) other;
            return this.totalInKb == memInfo.totalInKb && this.freeInKb == memInfo.freeInKb && this.availableInKb == memInfo.availableInKb && this.IONHeap == memInfo.IONHeap && this.cmaTotal == memInfo.cmaTotal && Float.compare(this.rate, memInfo.rate) == 0;
        }

        public final int getAvailableInKb() {
            return this.availableInKb;
        }

        public final int getCmaTotal() {
            return this.cmaTotal;
        }

        public final int getFreeInKb() {
            return this.freeInKb;
        }

        public final int getIONHeap() {
            return this.IONHeap;
        }

        public final float getRate() {
            return this.rate;
        }

        public final int getTotalInKb() {
            return this.totalInKb;
        }

        public int hashCode() {
            return Float.hashCode(this.rate) + tr.b(this.cmaTotal, tr.b(this.IONHeap, tr.b(this.availableInKb, tr.b(this.freeInKb, Integer.hashCode(this.totalInKb) * 31, 31), 31), 31), 31);
        }

        public final void setAvailableInKb(int i2) {
            this.availableInKb = i2;
        }

        public final void setCmaTotal(int i2) {
            this.cmaTotal = i2;
        }

        public final void setFreeInKb(int i2) {
            this.freeInKb = i2;
        }

        public final void setIONHeap(int i2) {
            this.IONHeap = i2;
        }

        public final void setRate(float f2) {
            this.rate = f2;
        }

        public final void setTotalInKb(int i2) {
            this.totalInKb = i2;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("MemInfo(totalInKb=");
            sb.append(this.totalInKb);
            sb.append(", freeInKb=");
            sb.append(this.freeInKb);
            sb.append(", availableInKb=");
            sb.append(this.availableInKb);
            sb.append(", IONHeap=");
            sb.append(this.IONHeap);
            sb.append(", cmaTotal=");
            sb.append(this.cmaTotal);
            sb.append(", rate=");
            return d21.e(this.rate, ")", sb);
        }

        public MemInfo(int i2, int i3, int i4, int i5, int i6, float f2) {
            this.totalInKb = i2;
            this.freeInKb = i3;
            this.availableInKb = i4;
            this.IONHeap = i5;
            this.cmaTotal = i6;
            this.rate = f2;
        }

        public MemInfo() {
            this(0, 0, 0, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 63, null);
        }
    }
}
