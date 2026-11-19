package androidx.work.impl.background.greedy;

import androidx.work.Clock;
import androidx.work.Logger;
import androidx.work.RunnableScheduler;
import androidx.work.impl.Scheduler;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class DelayedWorkTracker {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f20388e = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Scheduler f20389a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RunnableScheduler f20390b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Clock f20391c;
    public final HashMap d = new HashMap();

    static {
        Logger.b("DelayedWorkTracker");
    }

    public DelayedWorkTracker(Scheduler scheduler, RunnableScheduler runnableScheduler, Clock clock) {
        this.f20389a = scheduler;
        this.f20390b = runnableScheduler;
        this.f20391c = clock;
    }
}
