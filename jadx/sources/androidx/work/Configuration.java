package androidx.work;

import androidx.work.impl.DefaultRunnableScheduler;
import com.networkbench.agent.impl.performance.coulometry.b.j;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.ExecutorsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0003\u0006\u0007\bB\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\t"}, d2 = {"Landroidx/work/Configuration;", "", "Landroidx/work/Configuration$Builder;", "builder", "<init>", "(Landroidx/work/Configuration$Builder;)V", "Builder", "Provider", "Companion", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Configuration {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Executor f20205a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CoroutineDispatcher f20206b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Executor f20207c;
    public final Clock d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final WorkerFactory f20208e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final InputMergerFactory f20209f;
    public final RunnableScheduler g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f20210h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f20211i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f20212j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f20213k;
    public final int l;
    public final boolean m;
    public final Tracer n;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/work/Configuration$Companion;", "", "", "MIN_SCHEDULER_LIMIT", "I", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/work/Configuration$Provider;", "", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface Provider {
        Configuration c();
    }

    static {
        new Companion(null);
    }

    public Configuration(Builder builder) {
        builder.getClass();
        Executor executor = builder.f20214a;
        Executor executorA = executor == null ? ConfigurationKt.a(false) : executor;
        this.f20205a = executorA;
        this.f20206b = executor != null ? ExecutorsKt.b(executorA) : Dispatchers.f74659a;
        Executor executor2 = builder.d;
        this.f20207c = executor2 == null ? ConfigurationKt.a(true) : executor2;
        Clock clock = builder.f20217e;
        this.d = clock == null ? new SystemClock() : clock;
        WorkerFactory workerFactory = builder.f20215b;
        this.f20208e = workerFactory == null ? DefaultWorkerFactory.f20248a : workerFactory;
        InputMergerFactory inputMergerFactory = builder.f20216c;
        this.f20209f = inputMergerFactory == null ? NoOpInputMergerFactory.f20263a : inputMergerFactory;
        RunnableScheduler runnableScheduler = builder.f20218f;
        this.g = runnableScheduler == null ? new DefaultRunnableScheduler() : runnableScheduler;
        this.f20211i = builder.f20219h;
        this.f20212j = builder.f20220i;
        this.l = builder.f20221j;
        this.f20210h = builder.g;
        this.f20213k = builder.f20222k;
        this.m = builder.l;
        Tracer tracer = builder.m;
        this.n = tracer == null ? new ConfigurationKt$createDefaultTracer$tracer$1() : tracer;
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\t\b\u0016¢\u0006\u0004\b\u0002\u0010\u0003B\u0011\b\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/work/Configuration$Builder;", "", "<init>", "()V", "Landroidx/work/Configuration;", "configuration", "(Landroidx/work/Configuration;)V", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Executor f20214a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public WorkerFactory f20215b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final InputMergerFactory f20216c;
        public final Executor d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Clock f20217e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final RunnableScheduler f20218f;
        public final long g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f20219h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f20220i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final int f20221j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final int f20222k;
        public final boolean l;
        public final Tracer m;

        public Builder(Configuration configuration) {
            configuration.getClass();
            this.f20214a = configuration.f20205a;
            this.f20215b = configuration.f20208e;
            this.f20216c = configuration.f20209f;
            this.d = configuration.f20207c;
            this.f20217e = configuration.d;
            this.f20219h = configuration.f20211i;
            this.f20220i = configuration.f20212j;
            this.f20221j = configuration.l;
            this.f20218f = configuration.g;
            this.g = configuration.f20210h;
            this.f20222k = configuration.f20213k;
            this.l = configuration.m;
            this.m = configuration.n;
        }

        public Builder() {
            this.g = j.f37873a;
            this.f20219h = 4;
            this.f20220i = Integer.MAX_VALUE;
            this.f20221j = 20;
            this.f20222k = 8;
            this.l = true;
        }
    }
}
