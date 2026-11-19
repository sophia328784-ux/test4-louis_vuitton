package androidx.work.impl;

import androidx.work.ListenableFutureKt;
import androidx.work.Logger;
import androidx.work.WorkerParameters;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.StopWorkRunnable;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.aa0;
import defpackage.b5;
import defpackage.h7;
import defpackage.xn0;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlinx.coroutines.JobKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/work/impl/WorkLauncherImpl;", "Landroidx/work/impl/WorkLauncher;", "Landroidx/work/impl/Processor;", "processor", "Landroidx/work/impl/utils/taskexecutor/TaskExecutor;", "workTaskExecutor", "<init>", "(Landroidx/work/impl/Processor;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class WorkLauncherImpl implements WorkLauncher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Processor f20341a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TaskExecutor f20342b;

    public WorkLauncherImpl(Processor processor, TaskExecutor taskExecutor) {
        processor.getClass();
        taskExecutor.getClass();
        this.f20341a = processor;
        this.f20342b = taskExecutor;
    }

    @Override // androidx.work.impl.WorkLauncher
    public final void a(final StartStopToken startStopToken, final WorkerParameters.RuntimeExtras runtimeExtras) {
        startStopToken.getClass();
        this.f20342b.d(new Runnable() { // from class: androidx.work.impl.a
            @Override // java.lang.Runnable
            public final void run() {
                boolean z;
                WorkLauncherImpl workLauncherImpl = this.f20384b;
                StartStopToken startStopToken2 = startStopToken;
                WorkerParameters.RuntimeExtras runtimeExtras2 = runtimeExtras;
                Processor processor = workLauncherImpl.f20341a;
                processor.getClass();
                WorkGenerationalId workGenerationalId = startStopToken2.f20320a;
                String str = workGenerationalId.f20499a;
                ArrayList arrayList = new ArrayList();
                WorkDatabase workDatabase = processor.f20312e;
                h7 h7Var = new h7(processor, arrayList, str, 3);
                workDatabase.getClass();
                WorkSpec workSpec = (WorkSpec) workDatabase.v(new xn0(h7Var, 18));
                int i2 = 17;
                if (workSpec == null) {
                    Logger loggerA = Logger.a();
                    int i3 = Processor.l;
                    workGenerationalId.toString();
                    loggerA.getClass();
                    processor.d.a().execute(new aa0(processor, workGenerationalId, i2));
                    return;
                }
                synchronized (processor.f20317k) {
                    try {
                        synchronized (processor.f20317k) {
                            z = processor.d(str) != null;
                        }
                        if (z) {
                            Set set = (Set) processor.f20314h.get(str);
                            if (((StartStopToken) set.iterator().next()).f20320a.f20500b == workGenerationalId.f20500b) {
                                set.add(startStopToken2);
                                Logger loggerA2 = Logger.a();
                                int i4 = Processor.l;
                                workGenerationalId.toString();
                                loggerA2.getClass();
                            } else {
                                processor.d.a().execute(new aa0(processor, workGenerationalId, i2));
                            }
                            return;
                        }
                        if (workSpec.t != workGenerationalId.f20500b) {
                            processor.d.a().execute(new aa0(processor, workGenerationalId, i2));
                            return;
                        }
                        WorkerWrapper.Builder builder = new WorkerWrapper.Builder(processor.f20310b, processor.f20311c, processor.d, processor, processor.f20312e, workSpec, arrayList);
                        if (runtimeExtras2 != null) {
                            builder.f20368h = runtimeExtras2;
                        }
                        WorkerWrapper workerWrapper = new WorkerWrapper(builder);
                        ListenableFuture listenableFutureA = ListenableFutureKt.a(workerWrapper.f20357e.b().plus(JobKt.a()), new WorkerWrapper$launch$1(workerWrapper, null));
                        listenableFutureA.addListener(new b5(processor, listenableFutureA, workerWrapper, i2), processor.d.a());
                        processor.g.put(str, workerWrapper);
                        HashSet hashSet = new HashSet();
                        hashSet.add(startStopToken2);
                        processor.f20314h.put(str, hashSet);
                        Logger loggerA3 = Logger.a();
                        int i5 = Processor.l;
                        workGenerationalId.toString();
                        loggerA3.getClass();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        });
    }

    @Override // androidx.work.impl.WorkLauncher
    public final void d(StartStopToken startStopToken, int i2) {
        startStopToken.getClass();
        this.f20342b.d(new StopWorkRunnable(this.f20341a, startStopToken, false, i2));
    }
}
