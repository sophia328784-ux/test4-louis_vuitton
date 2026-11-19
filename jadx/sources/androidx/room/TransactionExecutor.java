package androidx.room;

import defpackage.w21;
import java.util.ArrayDeque;
import java.util.concurrent.Executor;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/room/TransactionExecutor;", "Ljava/util/concurrent/Executor;", "executor", "<init>", "(Ljava/util/concurrent/Executor;)V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class TransactionExecutor implements Executor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f19516b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayDeque f19517c;
    public Runnable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f19518e;

    public TransactionExecutor(Executor executor) {
        executor.getClass();
        this.f19516b = executor;
        this.f19517c = new ArrayDeque();
        this.f19518e = new Object();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.getClass();
        synchronized (this.f19518e) {
            this.f19517c.offer(new w21(runnable, this, 8));
            if (this.d == null) {
                h();
            }
        }
    }

    public final void h() {
        synchronized (this.f19518e) {
            Object objPoll = this.f19517c.poll();
            Runnable runnable = (Runnable) objPoll;
            this.d = runnable;
            if (objPoll != null) {
                this.f19516b.execute(runnable);
            }
        }
    }
}
