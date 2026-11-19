package androidx.work.impl.background.greedy;

import android.content.Context;
import android.text.TextUtils;
import androidx.work.Configuration;
import androidx.work.Constraints;
import androidx.work.Logger;
import androidx.work.RunnableScheduler;
import androidx.work.WorkInfo;
import androidx.work.impl.ExecutionListener;
import androidx.work.impl.Processor;
import androidx.work.impl.Scheduler;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.StartStopTokens;
import androidx.work.impl.WorkLauncher;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.constraints.OnConstraintsStateChangedListener;
import androidx.work.impl.constraints.WorkConstraintsTracker;
import androidx.work.impl.constraints.WorkConstraintsTrackerKt;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.utils.ProcessUtils;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import java.util.HashMap;
import java.util.HashSet;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes.dex */
public class GreedyScheduler implements Scheduler, OnConstraintsStateChangedListener, ExecutionListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f20392b;
    public final DelayedWorkTracker d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f20394e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Processor f20396h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final WorkLauncher f20397i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Configuration f20398j;
    public Boolean l;
    public final WorkConstraintsTracker m;
    public final TaskExecutor n;
    public final TimeLimiter o;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f20393c = new HashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object f20395f = new Object();
    public final StartStopTokens g = StartStopTokens.Companion.a(true);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final HashMap f20399k = new HashMap();

    public static class AttemptData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f20400a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f20401b;

        public AttemptData(int i2, long j2) {
            this.f20400a = i2;
            this.f20401b = j2;
        }
    }

    static {
        Logger.b("GreedyScheduler");
    }

    public GreedyScheduler(Context context, Configuration configuration, Trackers trackers, Processor processor, WorkLauncher workLauncher, TaskExecutor taskExecutor) {
        this.f20392b = context;
        RunnableScheduler runnableScheduler = configuration.g;
        this.d = new DelayedWorkTracker(this, runnableScheduler, configuration.d);
        this.o = new TimeLimiter(runnableScheduler, workLauncher);
        this.n = taskExecutor;
        this.m = new WorkConstraintsTracker(trackers);
        this.f20398j = configuration;
        this.f20396h = processor;
        this.f20397i = workLauncher;
    }

    @Override // androidx.work.impl.Scheduler
    public final void a(String str) {
        Runnable runnable;
        if (this.l == null) {
            this.l = Boolean.valueOf(ProcessUtils.a(this.f20392b, this.f20398j));
        }
        if (!this.l.booleanValue()) {
            Logger.a().getClass();
            return;
        }
        if (!this.f20394e) {
            this.f20396h.b(this);
            this.f20394e = true;
        }
        Logger.a().getClass();
        DelayedWorkTracker delayedWorkTracker = this.d;
        if (delayedWorkTracker != null && (runnable = (Runnable) delayedWorkTracker.d.remove(str)) != null) {
            delayedWorkTracker.f20390b.a(runnable);
        }
        for (StartStopToken startStopToken : this.g.remove(str)) {
            this.o.a(startStopToken);
            this.f20397i.e(startStopToken);
        }
    }

    @Override // androidx.work.impl.Scheduler
    public final void b(WorkSpec... workSpecArr) {
        long jMax;
        if (this.l == null) {
            this.l = Boolean.valueOf(ProcessUtils.a(this.f20392b, this.f20398j));
        }
        if (!this.l.booleanValue()) {
            Logger.a().getClass();
            return;
        }
        if (!this.f20394e) {
            this.f20396h.b(this);
            this.f20394e = true;
        }
        HashSet<WorkSpec> hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (WorkSpec workSpec : workSpecArr) {
            if (!this.g.a(WorkSpecKt.a(workSpec))) {
                synchronized (this.f20395f) {
                    try {
                        WorkGenerationalId workGenerationalIdA = WorkSpecKt.a(workSpec);
                        AttemptData attemptData = (AttemptData) this.f20399k.get(workGenerationalIdA);
                        if (attemptData == null) {
                            attemptData = new AttemptData(workSpec.f20518k, this.f20398j.d.a());
                            this.f20399k.put(workGenerationalIdA, attemptData);
                        }
                        jMax = (((long) Math.max((workSpec.f20518k - attemptData.f20400a) - 5, 0)) * 30000) + attemptData.f20401b;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                long jMax2 = Math.max(workSpec.a(), jMax);
                long jA = this.f20398j.d.a();
                if (workSpec.f20511b == WorkInfo.State.ENQUEUED) {
                    if (jA < jMax2) {
                        DelayedWorkTracker delayedWorkTracker = this.d;
                        if (delayedWorkTracker != null) {
                            RunnableScheduler runnableScheduler = delayedWorkTracker.f20390b;
                            HashMap map = delayedWorkTracker.d;
                            Runnable runnable = (Runnable) map.remove(workSpec.f20510a);
                            if (runnable != null) {
                                runnableScheduler.a(runnable);
                            }
                            DelayedWorkTracker.AnonymousClass1 anonymousClass1 = new Runnable() { // from class: androidx.work.impl.background.greedy.DelayedWorkTracker.1
                                final /* synthetic */ WorkSpec val$workSpec;

                                public AnonymousClass1() {
                                    workSpec = workSpec;
                                }

                                @Override // java.lang.Runnable
                                public void run() {
                                    Logger loggerA = Logger.a();
                                    int i2 = DelayedWorkTracker.f20388e;
                                    String str = workSpec.f20510a;
                                    loggerA.getClass();
                                    DelayedWorkTracker.this.f20389a.b(workSpec);
                                }
                            };
                            map.put(workSpec.f20510a, anonymousClass1);
                            runnableScheduler.b(jMax2 - delayedWorkTracker.f20391c.a(), anonymousClass1);
                        }
                    } else if (!Intrinsics.c(Constraints.f20225j, workSpec.f20517j)) {
                        Constraints constraints = workSpec.f20517j;
                        if (constraints.d) {
                            Logger loggerA = Logger.a();
                            workSpec.toString();
                            loggerA.getClass();
                        } else if (constraints.f20232i.isEmpty()) {
                            hashSet.add(workSpec);
                            hashSet2.add(workSpec.f20510a);
                        } else {
                            Logger loggerA2 = Logger.a();
                            workSpec.toString();
                            loggerA2.getClass();
                        }
                    } else if (!this.g.a(WorkSpecKt.a(workSpec))) {
                        Logger.a().getClass();
                        StartStopToken startStopTokenC = this.g.c(workSpec);
                        this.o.b(startStopTokenC);
                        this.f20397i.c(startStopTokenC);
                    }
                }
            }
        }
        synchronized (this.f20395f) {
            try {
                if (!hashSet.isEmpty()) {
                    TextUtils.join(",", hashSet2);
                    Logger.a().getClass();
                    for (WorkSpec workSpec2 : hashSet) {
                        WorkGenerationalId workGenerationalIdA2 = WorkSpecKt.a(workSpec2);
                        if (!this.f20393c.containsKey(workGenerationalIdA2)) {
                            this.f20393c.put(workGenerationalIdA2, WorkConstraintsTrackerKt.a(this.m, workSpec2, this.n.b(), this));
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // androidx.work.impl.ExecutionListener
    public final void c(WorkGenerationalId workGenerationalId, boolean z) {
        Job job;
        StartStopToken startStopTokenB = this.g.b(workGenerationalId);
        if (startStopTokenB != null) {
            this.o.a(startStopTokenB);
        }
        synchronized (this.f20395f) {
            job = (Job) this.f20393c.remove(workGenerationalId);
        }
        if (job != null) {
            Logger loggerA = Logger.a();
            workGenerationalId.toString();
            loggerA.getClass();
            job.cancel(null);
        }
        if (z) {
            return;
        }
        synchronized (this.f20395f) {
            this.f20399k.remove(workGenerationalId);
        }
    }

    @Override // androidx.work.impl.Scheduler
    public final boolean d() {
        return false;
    }

    @Override // androidx.work.impl.constraints.OnConstraintsStateChangedListener
    public final void e(WorkSpec workSpec, ConstraintsState constraintsState) {
        WorkGenerationalId workGenerationalIdA = WorkSpecKt.a(workSpec);
        boolean z = constraintsState instanceof ConstraintsState.ConstraintsMet;
        WorkLauncher workLauncher = this.f20397i;
        TimeLimiter timeLimiter = this.o;
        StartStopTokens startStopTokens = this.g;
        if (z) {
            if (startStopTokens.a(workGenerationalIdA)) {
                return;
            }
            Logger loggerA = Logger.a();
            workGenerationalIdA.toString();
            loggerA.getClass();
            StartStopToken startStopTokenD = startStopTokens.d(workGenerationalIdA);
            timeLimiter.b(startStopTokenD);
            workLauncher.c(startStopTokenD);
            return;
        }
        Logger loggerA2 = Logger.a();
        workGenerationalIdA.toString();
        loggerA2.getClass();
        StartStopToken startStopTokenB = startStopTokens.b(workGenerationalIdA);
        if (startStopTokenB != null) {
            timeLimiter.a(startStopTokenB);
            workLauncher.b(startStopTokenB, ((ConstraintsState.ConstraintsNotMet) constraintsState).f20420a);
        }
    }
}
