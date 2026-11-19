package com.networkbench.agent.impl.oom.javaoom.monitor;

import com.networkbench.agent.impl.base.MonitorBuildConfig;
import com.networkbench.agent.impl.base.MonitorConfig;
import com.networkbench.agent.impl.oom.javaoom.monitor.utils.SizeUnit;
import com.networkbench.nbslens.nbsnativecrashlib.n;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0016\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001*Bq\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\f\u001a\u00020\u0007\u0012\u0006\u0010\r\u001a\u00020\u0004\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015¢\u0006\u0002\u0010\u0016R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0011\u0010\u0005\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0018R\u0011\u0010\n\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0011\u0010\u0010\u001a\u00020\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0011\u0010\b\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0018R\u0011\u0010\r\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0018R\u0011\u0010\f\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001bR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001bR\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0013¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u0011\u0010\u000b\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u0018R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0015¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u0011\u0010\t\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\u0018¨\u0006+"}, d2 = {"Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;", "Lcom/networkbench/agent/impl/base/MonitorConfig;", "Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitor;", "analysisMaxTimesPerVersion", "", "analysisPeriodPerVersion", "heapThreshold", "", "fdThreshold", "threadThreshold", "deviceMemoryThreshold", "maxOverThresholdCount", "forceDumpJavaHeapMaxThreshold", "forceDumpJavaHeapDeltaThreshold", "loopInterval", "", "enableHprofDumpAnalysis", "", "hprofUploader", "Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMHprofUploader;", "reportUploader", "Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMReportUploader;", "(IIFIIFIFIJZLcom/networkbench/agent/impl/oom/javaoom/monitor/OOMHprofUploader;Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMReportUploader;)V", "getAnalysisMaxTimesPerVersion", "()I", "getAnalysisPeriodPerVersion", "getDeviceMemoryThreshold", "()F", "getEnableHprofDumpAnalysis", "()Z", "getFdThreshold", "getForceDumpJavaHeapDeltaThreshold", "getForceDumpJavaHeapMaxThreshold", "getHeapThreshold", "getHprofUploader", "()Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMHprofUploader;", "getLoopInterval", "()J", "getMaxOverThresholdCount", "getReportUploader", "()Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMReportUploader;", "getThreadThreshold", "Builder", "koom-java-leak_release"}, k = 1, mv = {1, 4, 1})
public final class OOMMonitorConfig extends MonitorConfig<OOMMonitor> {
    private final int analysisMaxTimesPerVersion;
    private final int analysisPeriodPerVersion;
    private final float deviceMemoryThreshold;
    private final boolean enableHprofDumpAnalysis;
    private final int fdThreshold;
    private final int forceDumpJavaHeapDeltaThreshold;
    private final float forceDumpJavaHeapMaxThreshold;
    private final float heapThreshold;
    private final OOMHprofUploader hprofUploader;
    private final long loopInterval;
    private final int maxOverThresholdCount;
    private final OOMReportUploader reportUploader;
    private final int threadThreshold;

    public OOMMonitorConfig(int i2, int i3, float f2, int i4, int i5, float f3, int i6, float f4, int i7, long j2, boolean z, OOMHprofUploader oOMHprofUploader, OOMReportUploader oOMReportUploader) {
        this.analysisMaxTimesPerVersion = i2;
        this.analysisPeriodPerVersion = i3;
        this.heapThreshold = f2;
        this.fdThreshold = i4;
        this.threadThreshold = i5;
        this.deviceMemoryThreshold = f3;
        this.maxOverThresholdCount = i6;
        this.forceDumpJavaHeapMaxThreshold = f4;
        this.forceDumpJavaHeapDeltaThreshold = i7;
        this.loopInterval = j2;
        this.enableHprofDumpAnalysis = z;
        this.hprofUploader = oOMHprofUploader;
        this.reportUploader = oOMReportUploader;
    }

    public final int getAnalysisMaxTimesPerVersion() {
        return this.analysisMaxTimesPerVersion;
    }

    public final int getAnalysisPeriodPerVersion() {
        return this.analysisPeriodPerVersion;
    }

    public final float getDeviceMemoryThreshold() {
        return this.deviceMemoryThreshold;
    }

    public final boolean getEnableHprofDumpAnalysis() {
        return this.enableHprofDumpAnalysis;
    }

    public final int getFdThreshold() {
        return this.fdThreshold;
    }

    public final int getForceDumpJavaHeapDeltaThreshold() {
        return this.forceDumpJavaHeapDeltaThreshold;
    }

    public final float getForceDumpJavaHeapMaxThreshold() {
        return this.forceDumpJavaHeapMaxThreshold;
    }

    public final float getHeapThreshold() {
        return this.heapThreshold;
    }

    public final OOMHprofUploader getHprofUploader() {
        return this.hprofUploader;
    }

    public final long getLoopInterval() {
        return this.loopInterval;
    }

    public final int getMaxOverThresholdCount() {
        return this.maxOverThresholdCount;
    }

    public final OOMReportUploader getReportUploader() {
        return this.reportUploader;
    }

    public final int getThreadThreshold() {
        return this.threadThreshold;
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\"\u0018\u0000 72\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00017B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u001a\u001a\u00020\u0002H\u0016J\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u0005J\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u0005J\u000e\u0010\u001f\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\bJ\u000e\u0010!\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020\nJ\u000e\u0010#\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\u0005J\u000e\u0010%\u001a\u00020\u00002\u0006\u0010&\u001a\u00020\u0005J\u000e\u0010'\u001a\u00020\u00002\u0006\u0010(\u001a\u00020\bJ\u000e\u0010)\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\bJ\u000e\u0010+\u001a\u00020\u00002\u0006\u0010,\u001a\u00020\u0011J\u000e\u0010-\u001a\u00020\u00002\u0006\u0010.\u001a\u00020\u0013J\u000e\u0010/\u001a\u00020\u00002\u0006\u00100\u001a\u00020\u0005J\u000e\u00101\u001a\u00020\u00002\u0006\u00102\u001a\u00020\u0016J\u000e\u00103\u001a\u00020\u00002\u0006\u00104\u001a\u00020\u0005J\u000e\u00105\u001a\u00020\u00002\u0006\u00106\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u000fR\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00068"}, d2 = {"Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder;", "Lcom/networkbench/agent/impl/base/MonitorConfig$Builder;", "Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig;", "()V", "mAnalysisMaxTimesPerVersion", "", "mAnalysisPeriodPerVersion", "mDeviceMemoryThreshold", "", "mEnableHprofDumpAnalysis", "", "mFdThreshold", "mForceDumpJavaHeapDeltaThreshold", "mForceDumpJavaHeapMaxThreshold", "mHeapThreshold", "Ljava/lang/Float;", "mHprofUploader", "Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMHprofUploader;", "mLoopInterval", "", "mMaxOverThresholdCount", "mReportUploader", "Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMReportUploader;", "mThreadThreshold", "Ljava/lang/Integer;", "mVssSizeThreshold", "build", "setAnalysisMaxTimesPerVersion", "analysisMaxTimesPerVersion", "setAnalysisPeriodPerVersion", "analysisPeriodPerVersion", "setDeviceMemoryThreshold", "deviceMemoryThreshold", "setEnableHprofDumpAnalysis", "enableHprofDumpAnalysis", "setFdThreshold", "fdThreshold", "setForceDumpJavaHeapDeltaThreshold", "forceDumpJavaHeapDeltaThreshold", "setForceDumpJavaHeapMaxThreshold", "forceDumpJavaHeapMaxThreshold", "setHeapThreshold", "heapThreshold", "setHprofUploader", "hprofUploader", "setLoopInterval", "loopInterval", "setMaxOverThresholdCount", "maxOverThresholdCount", "setReportUploader", "reportUploader", "setThreadThreshold", "threadThreshold", "setVssSizeThreshold", "vssSizeThreshold", "Companion", "koom-java-leak_release"}, k = 1, mv = {1, 4, 1})
    public static final class Builder implements MonitorConfig.Builder<OOMMonitorConfig> {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final Lazy DEFAULT_HEAP_THRESHOLD$delegate = LazyKt.b(new Function0<Float>() { // from class: com.networkbench.agent.impl.oom.javaoom.monitor.OOMMonitorConfig$Builder$Companion$DEFAULT_HEAP_THRESHOLD$2
            public final float invoke() {
                float mb = SizeUnit.BYTE.INSTANCE.toMB(Runtime.getRuntime().maxMemory());
                if (mb >= 502.0f) {
                    return 0.8f;
                }
                return mb >= 246.0f ? 0.85f : 0.9f;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public /* bridge */ /* synthetic */ Object mo47invoke() {
                return Float.valueOf(invoke());
            }
        });
        private static final Lazy DEFAULT_THREAD_THRESHOLD$delegate = LazyKt.b(new Function0<Integer>() { // from class: com.networkbench.agent.impl.oom.javaoom.monitor.OOMMonitorConfig$Builder$Companion$DEFAULT_THREAD_THRESHOLD$2
            public final int invoke() {
                Intrinsics.c(MonitorBuildConfig.getROM(), n.a.f38811c);
                return 750;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public /* bridge */ /* synthetic */ Object mo47invoke() {
                return Integer.valueOf(invoke());
            }
        });
        private Float mHeapThreshold;
        private OOMHprofUploader mHprofUploader;
        private OOMReportUploader mReportUploader;
        private Integer mThreadThreshold;
        private int mAnalysisMaxTimesPerVersion = 5;
        private int mAnalysisPeriodPerVersion = 1296000000;
        private int mVssSizeThreshold = 3650000;
        private int mFdThreshold = 1000;
        private float mDeviceMemoryThreshold = 0.05f;
        private float mForceDumpJavaHeapMaxThreshold = 0.9f;
        private int mForceDumpJavaHeapDeltaThreshold = 350000;
        private int mMaxOverThresholdCount = 3;
        private long mLoopInterval = 15000;
        private boolean mEnableHprofDumpAnalysis = true;

        public OOMMonitorConfig build() {
            int i2 = this.mAnalysisMaxTimesPerVersion;
            int i3 = this.mAnalysisPeriodPerVersion;
            Float f2 = this.mHeapThreshold;
            float fFloatValue = f2 != null ? f2.floatValue() : INSTANCE.getDEFAULT_HEAP_THRESHOLD();
            int i4 = this.mFdThreshold;
            Integer num = this.mThreadThreshold;
            return new OOMMonitorConfig(i2, i3, fFloatValue, i4, num != null ? num.intValue() : INSTANCE.getDEFAULT_THREAD_THRESHOLD(), this.mDeviceMemoryThreshold, this.mMaxOverThresholdCount, this.mForceDumpJavaHeapMaxThreshold, this.mForceDumpJavaHeapDeltaThreshold, this.mLoopInterval, this.mEnableHprofDumpAnalysis, this.mHprofUploader, this.mReportUploader);
        }

        public final Builder setAnalysisMaxTimesPerVersion(int analysisMaxTimesPerVersion) {
            this.mAnalysisMaxTimesPerVersion = analysisMaxTimesPerVersion;
            return this;
        }

        public final Builder setAnalysisPeriodPerVersion(int analysisPeriodPerVersion) {
            this.mAnalysisPeriodPerVersion = analysisPeriodPerVersion;
            return this;
        }

        public final Builder setDeviceMemoryThreshold(float deviceMemoryThreshold) {
            this.mDeviceMemoryThreshold = deviceMemoryThreshold;
            return this;
        }

        public final Builder setEnableHprofDumpAnalysis(boolean enableHprofDumpAnalysis) {
            this.mEnableHprofDumpAnalysis = enableHprofDumpAnalysis;
            return this;
        }

        public final Builder setFdThreshold(int fdThreshold) {
            this.mFdThreshold = fdThreshold;
            return this;
        }

        public final Builder setForceDumpJavaHeapDeltaThreshold(int forceDumpJavaHeapDeltaThreshold) {
            this.mForceDumpJavaHeapDeltaThreshold = forceDumpJavaHeapDeltaThreshold;
            return this;
        }

        public final Builder setForceDumpJavaHeapMaxThreshold(float forceDumpJavaHeapMaxThreshold) {
            this.mForceDumpJavaHeapMaxThreshold = forceDumpJavaHeapMaxThreshold;
            return this;
        }

        public final Builder setHeapThreshold(float heapThreshold) {
            this.mHeapThreshold = Float.valueOf(heapThreshold);
            return this;
        }

        public final Builder setHprofUploader(OOMHprofUploader hprofUploader) {
            hprofUploader.getClass();
            this.mHprofUploader = hprofUploader;
            return this;
        }

        public final Builder setLoopInterval(long loopInterval) {
            this.mLoopInterval = loopInterval;
            return this;
        }

        public final Builder setMaxOverThresholdCount(int maxOverThresholdCount) {
            this.mMaxOverThresholdCount = maxOverThresholdCount;
            return this;
        }

        public final Builder setReportUploader(OOMReportUploader reportUploader) {
            reportUploader.getClass();
            this.mReportUploader = reportUploader;
            return this;
        }

        public final Builder setThreadThreshold(int threadThreshold) {
            this.mThreadThreshold = Integer.valueOf(threadThreshold);
            return this;
        }

        public final Builder setVssSizeThreshold(int vssSizeThreshold) {
            this.mVssSizeThreshold = vssSizeThreshold;
            return this;
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\b\u001a\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMMonitorConfig$Builder$Companion;", "", "()V", "DEFAULT_HEAP_THRESHOLD", "", "getDEFAULT_HEAP_THRESHOLD", "()F", "DEFAULT_HEAP_THRESHOLD$delegate", "Lkotlin/Lazy;", "DEFAULT_THREAD_THRESHOLD", "", "getDEFAULT_THREAD_THRESHOLD", "()I", "DEFAULT_THREAD_THRESHOLD$delegate", "koom-java-leak_release"}, k = 1, mv = {1, 4, 1})
        public static final class Companion {
            private Companion() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final float getDEFAULT_HEAP_THRESHOLD() {
                return ((Number) Builder.DEFAULT_HEAP_THRESHOLD$delegate.getF71699b()).floatValue();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final int getDEFAULT_THREAD_THRESHOLD() {
                return ((Number) Builder.DEFAULT_THREAD_THRESHOLD$delegate.getF71699b()).intValue();
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }
    }
}
