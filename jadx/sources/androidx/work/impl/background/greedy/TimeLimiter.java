package androidx.work.impl.background.greedy;

import androidx.work.RunnableScheduler;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.WorkLauncher;
import defpackage.w21;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B#\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/work/impl/background/greedy/TimeLimiter;", "", "Landroidx/work/RunnableScheduler;", "runnableScheduler", "Landroidx/work/impl/WorkLauncher;", "launcher", "", "timeoutMs", "<init>", "(Landroidx/work/RunnableScheduler;Landroidx/work/impl/WorkLauncher;J)V", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TimeLimiter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RunnableScheduler f20402a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WorkLauncher f20403b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f20404c;
    public final Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinkedHashMap f20405e;

    public TimeLimiter(RunnableScheduler runnableScheduler, WorkLauncher workLauncher, long j2) {
        runnableScheduler.getClass();
        workLauncher.getClass();
        this.f20402a = runnableScheduler;
        this.f20403b = workLauncher;
        this.f20404c = j2;
        this.d = new Object();
        this.f20405e = new LinkedHashMap();
    }

    public final void a(StartStopToken startStopToken) {
        Runnable runnable;
        startStopToken.getClass();
        synchronized (this.d) {
            runnable = (Runnable) this.f20405e.remove(startStopToken);
        }
        if (runnable != null) {
            this.f20402a.a(runnable);
        }
    }

    public final void b(StartStopToken startStopToken) {
        startStopToken.getClass();
        w21 w21Var = new w21(this, startStopToken, 7);
        synchronized (this.d) {
        }
        this.f20402a.b(this.f20404c, w21Var);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TimeLimiter(RunnableScheduler runnableScheduler, WorkLauncher workLauncher) {
        this(runnableScheduler, workLauncher, 0L, 4, null);
        runnableScheduler.getClass();
        workLauncher.getClass();
    }

    public /* synthetic */ TimeLimiter(RunnableScheduler runnableScheduler, WorkLauncher workLauncher, long j2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(runnableScheduler, workLauncher, (i2 & 4) != 0 ? 5400000L : j2);
    }
}
