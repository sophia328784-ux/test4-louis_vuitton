package androidx.work.impl;

import android.content.BroadcastReceiver;
import android.content.Context;
import androidx.arch.core.util.Function;
import androidx.lifecycle.MediatorLiveData;
import androidx.work.BackoffPolicy;
import androidx.work.Configuration;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.ExistingWorkPolicy;
import androidx.work.Logger;
import androidx.work.Operation;
import androidx.work.OperationKt;
import androidx.work.Tracer;
import androidx.work.WorkInfo;
import androidx.work.WorkManager;
import androidx.work.impl.Schedulers;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.ForceStopRunnable;
import androidx.work.impl.utils.LiveDataUtils;
import androidx.work.impl.utils.PreferenceUtils;
import androidx.work.impl.utils.ProcessUtils;
import androidx.work.impl.utils.SerialExecutorImpl;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import defpackage.k61;
import defpackage.md;
import defpackage.tf;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.UUID;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;
import kotlinx.coroutines.internal.ContextScope;

/* JADX INFO: loaded from: classes.dex */
public class WorkManagerImpl extends WorkManager {
    public static WorkManagerImpl l;
    public static WorkManagerImpl m;
    public static final Object n;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f20343b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Configuration f20344c;
    public final WorkDatabase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TaskExecutor f20345e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f20346f;
    public final Processor g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final PreferenceUtils f20347h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f20348i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public BroadcastReceiver.PendingResult f20349j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Trackers f20350k;

    /* JADX INFO: renamed from: androidx.work.impl.WorkManagerImpl$1, reason: invalid class name */
    class AnonymousClass1 implements Function<List<WorkSpec.WorkInfoPojo>, WorkInfo> {
        @Override // androidx.arch.core.util.Function
        /* JADX INFO: renamed from: apply */
        public final Object mo0apply(Object obj) {
            long jA;
            List list = (List) obj;
            if (list == null || list.size() <= 0) {
                return null;
            }
            WorkSpec.WorkInfoPojo workInfoPojo = (WorkSpec.WorkInfoPojo) list.get(0);
            List list2 = workInfoPojo.q;
            Data data = !list2.isEmpty() ? (Data) list2.get(0) : Data.f20244c;
            UUID uuidFromString = UUID.fromString(workInfoPojo.f20521a);
            uuidFromString.getClass();
            WorkInfo.State state = workInfoPojo.f20522b;
            HashSet hashSet = new HashSet(workInfoPojo.p);
            Data data2 = workInfoPojo.f20523c;
            int i2 = workInfoPojo.f20526h;
            int i3 = workInfoPojo.m;
            Constraints constraints = workInfoPojo.g;
            long j2 = workInfoPojo.d;
            long j3 = workInfoPojo.f20524e;
            WorkInfo.PeriodicityInfo periodicityInfo = j3 != 0 ? new WorkInfo.PeriodicityInfo(j3, workInfoPojo.f20525f) : null;
            WorkInfo.State state2 = workInfoPojo.f20522b;
            WorkInfo.State state3 = WorkInfo.State.ENQUEUED;
            if (state2 == state3) {
                WorkSpec.Companion companion = WorkSpec.z;
                boolean z = state2 == state3 && workInfoPojo.f20526h > 0;
                int i4 = workInfoPojo.f20526h;
                BackoffPolicy backoffPolicy = workInfoPojo.f20527i;
                long j4 = workInfoPojo.f20528j;
                long j5 = workInfoPojo.f20529k;
                int i5 = workInfoPojo.l;
                long j6 = workInfoPojo.f20524e;
                boolean z2 = j6 != 0;
                long j7 = workInfoPojo.d;
                long j8 = workInfoPojo.f20525f;
                long j9 = workInfoPojo.n;
                companion.getClass();
                jA = WorkSpec.Companion.a(z, i4, backoffPolicy, j4, j5, i5, z2, j7, j8, j6, j9);
            } else {
                jA = Long.MAX_VALUE;
            }
            return new WorkInfo(uuidFromString, state, hashSet, data2, data, i2, i3, constraints, j2, periodicityInfo, jA, workInfoPojo.o);
        }
    }

    static {
        Logger.b("WorkManagerImpl");
        l = null;
        m = null;
        n = new Object();
    }

    public WorkManagerImpl(Context context, final Configuration configuration, TaskExecutor taskExecutor, final WorkDatabase workDatabase, final List<Scheduler> list, Processor processor, Trackers trackers) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext.isDeviceProtectedStorage()) {
            md.k("Cannot initialize WorkManager in direct boot mode");
            throw null;
        }
        Logger.LogcatLogger logcatLogger = new Logger.LogcatLogger(configuration.f20211i);
        synchronized (Logger.f20261a) {
            try {
                if (Logger.f20262b == null) {
                    Logger.f20262b = logcatLogger;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f20343b = applicationContext;
        this.f20345e = taskExecutor;
        this.d = workDatabase;
        this.g = processor;
        this.f20350k = trackers;
        this.f20344c = configuration;
        this.f20346f = list;
        taskExecutor.getClass();
        CoroutineDispatcher coroutineDispatcherB = taskExecutor.b();
        coroutineDispatcherB.getClass();
        ContextScope contextScopeA = CoroutineScopeKt.a(coroutineDispatcherB);
        this.f20347h = new PreferenceUtils(workDatabase);
        final SerialExecutorImpl serialExecutorImplC = taskExecutor.c();
        int i2 = Schedulers.f20319a;
        processor.b(new ExecutionListener() { // from class: eu0
            @Override // androidx.work.impl.ExecutionListener
            public final void c(WorkGenerationalId workGenerationalId, boolean z) {
                int i3 = Schedulers.f20319a;
                serialExecutorImplC.execute(new xo(list, workGenerationalId, configuration, workDatabase, 5));
            }
        });
        taskExecutor.d(new ForceStopRunnable(applicationContext, this));
        int i3 = UnfinishedWorkListenerKt.f20325b;
        workDatabase.getClass();
        if (ProcessUtils.a(applicationContext, configuration)) {
            FlowKt.u(new FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1(FlowKt.k(FlowKt.c(new FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1(workDatabase.D().q(), new UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1(4, null)), -1)), new UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$2(applicationContext, null)), contextScopeA);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static WorkManagerImpl d(Context context) {
        WorkManagerImpl workManagerImplD;
        Object obj = n;
        synchronized (obj) {
            try {
                synchronized (obj) {
                    try {
                        workManagerImplD = l;
                        if (workManagerImplD == null) {
                            workManagerImplD = m;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return workManagerImplD;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (workManagerImplD == null) {
            Context applicationContext = context.getApplicationContext();
            if (!(applicationContext instanceof Configuration.Provider)) {
                throw new IllegalStateException("WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider.");
            }
            e(applicationContext, ((Configuration.Provider) applicationContext).c());
            workManagerImplD = d(applicationContext);
        }
        return workManagerImplD;
    }

    public static void e(Context context, Configuration configuration) {
        synchronized (n) {
            try {
                WorkManagerImpl workManagerImpl = l;
                if (workManagerImpl != null && m != null) {
                    throw new IllegalStateException("WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information.");
                }
                if (workManagerImpl == null) {
                    Context applicationContext = context.getApplicationContext();
                    if (m == null) {
                        m = WorkManagerImplExtKt.a(applicationContext, configuration);
                    }
                    l = m;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.work.WorkManager
    public final Operation a(UUID uuid) {
        uuid.getClass();
        Tracer tracer = this.f20344c.n;
        SerialExecutorImpl serialExecutorImplC = this.f20345e.c();
        serialExecutorImplC.getClass();
        return OperationKt.a(tracer, "CancelWorkById", serialExecutorImplC, new tf(this, uuid, 10));
    }

    @Override // androidx.work.WorkManager
    public final Operation b(String str, ExistingWorkPolicy existingWorkPolicy, List list) {
        return new WorkContinuationImpl(this, str, existingWorkPolicy, list).a();
    }

    @Override // androidx.work.WorkManager
    public final MediatorLiveData c(UUID uuid) {
        return LiveDataUtils.a(this.d.D().y(Collections.singletonList(uuid.toString())), new AnonymousClass1(), this.f20345e);
    }

    public final void f() {
        synchronized (n) {
            try {
                this.f20348i = true;
                BroadcastReceiver.PendingResult pendingResult = this.f20349j;
                if (pendingResult != null) {
                    pendingResult.finish();
                    this.f20349j = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void g() {
        Tracer tracer = this.f20344c.n;
        k61 k61Var = new k61(this, 7);
        tracer.getClass();
        boolean zIsEnabled = tracer.isEnabled();
        if (zIsEnabled) {
            try {
                tracer.a("ReschedulingWork");
            } finally {
                if (zIsEnabled) {
                    tracer.c();
                }
            }
        }
        k61Var.mo47invoke();
    }
}
