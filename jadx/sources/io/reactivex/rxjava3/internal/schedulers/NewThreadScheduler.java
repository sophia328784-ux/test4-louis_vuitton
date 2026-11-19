package io.reactivex.rxjava3.internal.schedulers;

import io.reactivex.rxjava3.core.Scheduler;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes4.dex */
public final class NewThreadScheduler extends Scheduler {
    public static final RxThreadFactory d = new RxThreadFactory("RxNewThreadScheduler", Math.max(1, Math.min(10, Integer.getInteger("rx3.newthread-priority", 5).intValue())));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ThreadFactory f71097c;

    public NewThreadScheduler() {
        this(d);
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public final Scheduler.Worker b() {
        return new NewThreadWorker(this.f71097c);
    }

    public NewThreadScheduler(ThreadFactory threadFactory) {
        this.f71097c = threadFactory;
    }
}
