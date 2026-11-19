package androidx.work.impl;

import android.content.Context;
import androidx.work.Clock;
import androidx.work.Configuration;
import androidx.work.Data;
import androidx.work.ForegroundUpdater;
import androidx.work.InputMerger;
import androidx.work.InputMergerFactory;
import androidx.work.InputMergerKt;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.WorkInfo;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkerWrapper;
import androidx.work.impl.WorkerWrapperKt;
import androidx.work.impl.foreground.ForegroundProcessor;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.utils.WorkForegroundUpdater;
import androidx.work.impl.utils.WorkProgressUpdater;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import defpackage.md;
import defpackage.n00;
import defpackage.pq0;
import defpackage.s0;
import defpackage.xn0;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobImpl;
import kotlinx.coroutines.JobKt;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001:\u0002\u0006\u0007B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\b"}, d2 = {"Landroidx/work/impl/WorkerWrapper;", "", "Landroidx/work/impl/WorkerWrapper$Builder;", "builder", "<init>", "(Landroidx/work/impl/WorkerWrapper$Builder;)V", "Resolution", "Builder", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class WorkerWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WorkSpec f20354a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f20355b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f20356c;
    public final WorkerParameters.RuntimeExtras d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TaskExecutor f20357e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Configuration f20358f;
    public final Clock g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ForegroundProcessor f20359h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final WorkDatabase f20360i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final WorkSpecDao f20361j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final DependencyDao f20362k;
    public final List l;
    public final JobImpl m;

    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001BG\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Landroidx/work/impl/WorkerWrapper$Builder;", "", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Landroidx/work/Configuration;", "configuration", "Landroidx/work/impl/utils/taskexecutor/TaskExecutor;", "workTaskExecutor", "Landroidx/work/impl/foreground/ForegroundProcessor;", "foregroundProcessor", "Landroidx/work/impl/WorkDatabase;", "workDatabase", "Landroidx/work/impl/model/WorkSpec;", "workSpec", "", "", "tags", "<init>", "(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/foreground/ForegroundProcessor;Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/model/WorkSpec;Ljava/util/List;)V", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Configuration f20363a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TaskExecutor f20364b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ForegroundProcessor f20365c;
        public final WorkDatabase d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final WorkSpec f20366e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final List f20367f;
        public final Context g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public WorkerParameters.RuntimeExtras f20368h;

        public Builder(Context context, Configuration configuration, TaskExecutor taskExecutor, ForegroundProcessor foregroundProcessor, WorkDatabase workDatabase, WorkSpec workSpec, List<String> list) {
            context.getClass();
            configuration.getClass();
            taskExecutor.getClass();
            foregroundProcessor.getClass();
            workDatabase.getClass();
            workSpec.getClass();
            list.getClass();
            this.f20363a = configuration;
            this.f20364b = taskExecutor;
            this.f20365c = foregroundProcessor;
            this.d = workDatabase;
            this.f20366e = workSpec;
            this.f20367f = list;
            Context applicationContext = context.getApplicationContext();
            applicationContext.getClass();
            this.g = applicationContext;
            this.f20368h = new WorkerParameters.RuntimeExtras();
        }
    }

    public WorkerWrapper(Builder builder) {
        builder.getClass();
        WorkSpec workSpec = builder.f20366e;
        this.f20354a = workSpec;
        this.f20355b = builder.g;
        String str = workSpec.f20510a;
        this.f20356c = str;
        this.d = builder.f20368h;
        this.f20357e = builder.f20364b;
        Configuration configuration = builder.f20363a;
        this.f20358f = configuration;
        this.g = configuration.d;
        this.f20359h = builder.f20365c;
        WorkDatabase workDatabase = builder.d;
        this.f20360i = workDatabase;
        this.f20361j = workDatabase.D();
        this.f20362k = workDatabase.y();
        List list = builder.f20367f;
        this.l = list;
        n00.r(CollectionsKt.K(list, ",", null, null, null, 62), " } ]", pq0.r("Work [ id=", str, ", tags={ "));
        this.m = JobKt.a();
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0022  */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Object a(final WorkerWrapper workerWrapper, ContinuationImpl continuationImpl) {
        WorkerWrapper$runWorker$1 workerWrapper$runWorker$1;
        InputMerger inputMerger;
        Data dataA;
        String str = workerWrapper.f20356c;
        TaskExecutor taskExecutor = workerWrapper.f20357e;
        WorkDatabase workDatabase = workerWrapper.f20360i;
        Configuration configuration = workerWrapper.f20358f;
        WorkSpec workSpec = workerWrapper.f20354a;
        if (continuationImpl instanceof WorkerWrapper$runWorker$1) {
            workerWrapper$runWorker$1 = (WorkerWrapper$runWorker$1) continuationImpl;
            int i2 = workerWrapper$runWorker$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                workerWrapper$runWorker$1.d = i2 - Integer.MIN_VALUE;
            } else {
                workerWrapper$runWorker$1 = new WorkerWrapper$runWorker$1(workerWrapper, continuationImpl);
            }
        } else {
            workerWrapper$runWorker$1 = new WorkerWrapper$runWorker$1(workerWrapper, continuationImpl);
        }
        WorkerWrapper$runWorker$1 workerWrapper$runWorker$2 = workerWrapper$runWorker$1;
        Object objF = workerWrapper$runWorker$2.f20376b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = workerWrapper$runWorker$2.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objF);
                boolean zIsEnabled = configuration.n.isEnabled();
                String str2 = workSpec.x;
                String str3 = workSpec.d;
                String str4 = workSpec.f20512c;
                if (zIsEnabled && str2 != null) {
                    configuration.n.d(workSpec.hashCode(), str2);
                }
                final int i4 = 0;
                Callable callable = new Callable(workerWrapper) { // from class: p71

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ WorkerWrapper f78781c;

                    {
                        this.f78781c = workerWrapper;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        boolean z;
                        int i5 = i4;
                        WorkerWrapper workerWrapper2 = this.f78781c;
                        switch (i5) {
                            case 0:
                                WorkSpec workSpec2 = workerWrapper2.f20354a;
                                WorkInfo.State state = workSpec2.f20511b;
                                WorkInfo.State state2 = WorkInfo.State.ENQUEUED;
                                if (state != state2) {
                                    int i6 = WorkerWrapperKt.f20381a;
                                    Logger.a().getClass();
                                    return Boolean.TRUE;
                                }
                                if ((!workSpec2.b() && (workSpec2.f20511b != state2 || workSpec2.f20518k <= 0)) || workerWrapper2.g.a() >= workSpec2.a()) {
                                    return Boolean.FALSE;
                                }
                                Logger loggerA = Logger.a();
                                int i7 = WorkerWrapperKt.f20381a;
                                loggerA.getClass();
                                return Boolean.TRUE;
                            default:
                                WorkSpecDao workSpecDao = workerWrapper2.f20361j;
                                String str5 = workerWrapper2.f20356c;
                                if (workSpecDao.j(str5) == WorkInfo.State.ENQUEUED) {
                                    workSpecDao.h(str5, WorkInfo.State.RUNNING);
                                    workSpecDao.z(str5);
                                    workSpecDao.v(-256, str5);
                                    z = true;
                                } else {
                                    z = false;
                                }
                                return Boolean.valueOf(z);
                        }
                    }
                };
                workDatabase.getClass();
                if (((Boolean) workDatabase.v(new xn0(callable, 18))).booleanValue()) {
                    return new Resolution.ResetWorkerStatus(i4, 1, null);
                }
                if (workSpec.b()) {
                    dataA = workSpec.f20513e;
                } else {
                    InputMergerFactory inputMergerFactory = configuration.f20209f;
                    inputMergerFactory.getClass();
                    str3.getClass();
                    inputMergerFactory.a(str3);
                    int i5 = InputMergerKt.f20252a;
                    try {
                        Object objNewInstance = Class.forName(str3).getDeclaredConstructor(null).newInstance(null);
                        objNewInstance.getClass();
                        inputMerger = (InputMerger) objNewInstance;
                    } catch (Exception unused) {
                        Logger loggerA = Logger.a();
                        int i6 = InputMergerKt.f20252a;
                        "Trouble instantiating ".concat(str3);
                        loggerA.getClass();
                        inputMerger = null;
                    }
                    if (inputMerger == null) {
                        int i7 = WorkerWrapperKt.f20381a;
                        Logger.a().getClass();
                        return new Resolution.Failed(null, 1, 0 == true ? 1 : 0);
                    }
                    dataA = inputMerger.a(CollectionsKt.Y(CollectionsKt.O(workSpec.f20513e), workerWrapper.f20361j.m(str)));
                }
                WorkerParameters workerParameters = new WorkerParameters(UUID.fromString(str), dataA, workerWrapper.l, workerWrapper.d, workSpec.f20518k, workSpec.t, configuration.f20205a, configuration.f20206b, workerWrapper.f20357e, configuration.f20208e, new WorkProgressUpdater(workDatabase, taskExecutor), new WorkForegroundUpdater(workDatabase, workerWrapper.f20359h, taskExecutor));
                try {
                    ListenableWorker listenableWorkerB = configuration.f20208e.b(workerWrapper.f20355b, str4, workerParameters);
                    final int i8 = 1;
                    listenableWorkerB.d = true;
                    CoroutineContext.Element element = workerWrapper$runWorker$2.getContext().get(Job.Key.f74677b);
                    element.getClass();
                    Job job = (Job) element;
                    job.invokeOnCompletion(new s0(listenableWorkerB, zIsEnabled, str2, workerWrapper, 14));
                    Object objV = workDatabase.v(new xn0(new Callable(workerWrapper) { // from class: p71

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public final /* synthetic */ WorkerWrapper f78781c;

                        {
                            this.f78781c = workerWrapper;
                        }

                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            boolean z;
                            int i9 = i8;
                            WorkerWrapper workerWrapper2 = this.f78781c;
                            switch (i9) {
                                case 0:
                                    WorkSpec workSpec2 = workerWrapper2.f20354a;
                                    WorkInfo.State state = workSpec2.f20511b;
                                    WorkInfo.State state2 = WorkInfo.State.ENQUEUED;
                                    if (state != state2) {
                                        int i10 = WorkerWrapperKt.f20381a;
                                        Logger.a().getClass();
                                        return Boolean.TRUE;
                                    }
                                    if ((!workSpec2.b() && (workSpec2.f20511b != state2 || workSpec2.f20518k <= 0)) || workerWrapper2.g.a() >= workSpec2.a()) {
                                        return Boolean.FALSE;
                                    }
                                    Logger loggerA2 = Logger.a();
                                    int i11 = WorkerWrapperKt.f20381a;
                                    loggerA2.getClass();
                                    return Boolean.TRUE;
                                default:
                                    WorkSpecDao workSpecDao = workerWrapper2.f20361j;
                                    String str5 = workerWrapper2.f20356c;
                                    if (workSpecDao.j(str5) == WorkInfo.State.ENQUEUED) {
                                        workSpecDao.h(str5, WorkInfo.State.RUNNING);
                                        workSpecDao.z(str5);
                                        workSpecDao.v(-256, str5);
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    return Boolean.valueOf(z);
                            }
                        }
                    }, 18));
                    objV.getClass();
                    if (!((Boolean) objV).booleanValue()) {
                        return new Resolution.ResetWorkerStatus(0, i8, null);
                    }
                    int i9 = 0;
                    DefaultConstructorMarker defaultConstructorMarker = null;
                    if (job.isCancelled()) {
                        return new Resolution.ResetWorkerStatus(i9, i8, defaultConstructorMarker);
                    }
                    ForegroundUpdater foregroundUpdater = workerParameters.g;
                    foregroundUpdater.getClass();
                    Executor executorA = taskExecutor.a();
                    executorA.getClass();
                    CoroutineDispatcher coroutineDispatcherB = ExecutorsKt.b(executorA);
                    WorkerWrapper$runWorker$result$1 workerWrapper$runWorker$result$1 = new WorkerWrapper$runWorker$result$1(workerWrapper, listenableWorkerB, foregroundUpdater, null);
                    workerWrapper$runWorker$2.d = 1;
                    objF = BuildersKt.f(coroutineDispatcherB, workerWrapper$runWorker$result$1, workerWrapper$runWorker$2);
                    if (objF == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } catch (Throwable unused2) {
                    int i10 = WorkerWrapperKt.f20381a;
                    Logger.a().getClass();
                    return new Resolution.Failed(null, 1, 0 == true ? 1 : 0);
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objF);
            }
            ListenableWorker.Result result = (ListenableWorker.Result) objF;
            result.getClass();
            return new Resolution.Finished(result);
        } catch (CancellationException e2) {
            int i11 = WorkerWrapperKt.f20381a;
            Logger.a().getClass();
            throw e2;
        } catch (Throwable unused3) {
            int i12 = WorkerWrapperKt.f20381a;
            Logger.a().getClass();
            configuration.getClass();
            return new Resolution.Failed(null, 1, 0 == true ? 1 : 0);
        }
    }

    public final void b(int i2) {
        WorkInfo.State state = WorkInfo.State.ENQUEUED;
        WorkSpecDao workSpecDao = this.f20361j;
        String str = this.f20356c;
        workSpecDao.h(str, state);
        workSpecDao.s(this.g.a(), str);
        workSpecDao.f(this.f20354a.v, str);
        workSpecDao.c(-1L, str);
        workSpecDao.v(i2, str);
    }

    public final void c() {
        long jA = this.g.a();
        WorkSpecDao workSpecDao = this.f20361j;
        String str = this.f20356c;
        workSpecDao.s(jA, str);
        workSpecDao.h(str, WorkInfo.State.ENQUEUED);
        workSpecDao.x(str);
        workSpecDao.f(this.f20354a.v, str);
        workSpecDao.b(str);
        workSpecDao.c(-1L, str);
    }

    public final void d(ListenableWorker.Result result) {
        result.getClass();
        String str = this.f20356c;
        ArrayList arrayListU = CollectionsKt.U(str);
        while (true) {
            boolean zIsEmpty = arrayListU.isEmpty();
            WorkSpecDao workSpecDao = this.f20361j;
            if (zIsEmpty) {
                Data data = ((ListenableWorker.Result.Failure) result).f20259a;
                data.getClass();
                workSpecDao.f(this.f20354a.v, str);
                workSpecDao.t(str, data);
                return;
            }
            String str2 = (String) CollectionsKt.c0(arrayListU);
            if (workSpecDao.j(str2) != WorkInfo.State.CANCELLED) {
                workSpecDao.h(str2, WorkInfo.State.FAILED);
            }
            arrayListU.addAll(this.f20362k.b(str2));
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b2\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\b"}, d2 = {"Landroidx/work/impl/WorkerWrapper$Resolution;", "", "ResetWorkerStatus", "Failed", "Finished", "Landroidx/work/impl/WorkerWrapper$Resolution$Failed;", "Landroidx/work/impl/WorkerWrapper$Resolution$Finished;", "Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static abstract class Resolution {

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/work/impl/WorkerWrapper$Resolution$Finished;", "Landroidx/work/impl/WorkerWrapper$Resolution;", "Landroidx/work/ListenableWorker$Result;", "result", "<init>", "(Landroidx/work/ListenableWorker$Result;)V", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Finished extends Resolution {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final ListenableWorker.Result f20370a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Finished(ListenableWorker.Result result) {
                super(null);
                result.getClass();
                this.f20370a = result;
            }
        }

        public Resolution(DefaultConstructorMarker defaultConstructorMarker) {
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;", "Landroidx/work/impl/WorkerWrapper$Resolution;", "", "reason", "<init>", "(I)V", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class ResetWorkerStatus extends Resolution {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final int f20371a;

            public /* synthetic */ ResetWorkerStatus(int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
                this((i3 & 1) != 0 ? -256 : i2);
            }

            public ResetWorkerStatus(int i2) {
                super(null);
                this.f20371a = i2;
            }

            public ResetWorkerStatus() {
                this(0, 1, null);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/work/impl/WorkerWrapper$Resolution$Failed;", "Landroidx/work/impl/WorkerWrapper$Resolution;", "Landroidx/work/ListenableWorker$Result;", "result", "<init>", "(Landroidx/work/ListenableWorker$Result;)V", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Failed extends Resolution {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final ListenableWorker.Result f20369a;

            public /* synthetic */ Failed(ListenableWorker.Result result, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                this((i2 & 1) != 0 ? new ListenableWorker.Result.Failure() : result);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Failed(ListenableWorker.Result result) {
                super(null);
                result.getClass();
                this.f20369a = result;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public Failed() {
                this(null, 1, 0 == true ? 1 : 0);
            }
        }
    }
}
