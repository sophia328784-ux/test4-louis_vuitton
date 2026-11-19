package androidx.work.impl;

import androidx.work.Data;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.WorkInfo;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import defpackage.md;
import defpackage.v40;
import defpackage.xn0;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.work.impl.WorkerWrapper$launch$1", f = "WorkerWrapper.kt", l = {98}, m = "invokeSuspend")
final class WorkerWrapper$launch$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f20372b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WorkerWrapper f20373c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WorkerWrapper$launch$1(WorkerWrapper workerWrapper, Continuation continuation) {
        super(2, continuation);
        this.f20373c = workerWrapper;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new WorkerWrapper$launch$1(this.f20373c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WorkerWrapper$launch$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        final WorkerWrapper.Resolution failed;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f20372b;
        final WorkerWrapper workerWrapper = this.f20373c;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                JobImpl jobImpl = workerWrapper.m;
                WorkerWrapper$launch$1$resolution$1 workerWrapper$launch$1$resolution$1 = new WorkerWrapper$launch$1$resolution$1(workerWrapper, null);
                this.f20372b = 1;
                obj = BuildersKt.f(jobImpl, workerWrapper$launch$1$resolution$1, this);
                if (obj == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            failed = (WorkerWrapper.Resolution) obj;
        } catch (WorkerStoppedException e2) {
            failed = new WorkerWrapper.Resolution.ResetWorkerStatus(e2.f20353b);
        } catch (CancellationException unused) {
            failed = new WorkerWrapper.Resolution.Failed(null, 1, null);
        } catch (Throwable unused2) {
            int i3 = WorkerWrapperKt.f20381a;
            Logger.a().getClass();
            failed = new WorkerWrapper.Resolution.Failed(null, 1, null);
        }
        WorkDatabase workDatabase = workerWrapper.f20360i;
        Callable callable = new Callable() { // from class: androidx.work.impl.b
            /* JADX WARN: Code duplicated, block: B:14:0x003e  */
            @Override // java.util.concurrent.Callable
            public final Object call() {
                WorkerWrapper workerWrapper2 = workerWrapper;
                String str = workerWrapper2.f20356c;
                WorkSpecDao workSpecDao = workerWrapper2.f20361j;
                WorkSpec workSpec = workerWrapper2.f20354a;
                WorkerWrapper.Resolution resolution = failed;
                boolean z = true;
                boolean z2 = false;
                if (resolution instanceof WorkerWrapper.Resolution.Finished) {
                    ListenableWorker.Result failure = ((WorkerWrapper.Resolution.Finished) resolution).f20370a;
                    WorkInfo.State stateJ = workSpecDao.j(str);
                    workerWrapper2.f20360i.C().a(str);
                    if (stateJ == null) {
                        z = false;
                    } else if (stateJ == WorkInfo.State.RUNNING) {
                        if (failure instanceof ListenableWorker.Result.Success) {
                            int i4 = WorkerWrapperKt.f20381a;
                            Logger.a().getClass();
                            if (workSpec.b()) {
                                workerWrapper2.c();
                            } else {
                                workSpecDao.h(str, WorkInfo.State.SUCCEEDED);
                                Data data = ((ListenableWorker.Result.Success) failure).f20260a;
                                data.getClass();
                                workSpecDao.t(str, data);
                                long jA = workerWrapper2.g.a();
                                DependencyDao dependencyDao = workerWrapper2.f20362k;
                                for (String str2 : dependencyDao.b(str)) {
                                    if (workSpecDao.j(str2) == WorkInfo.State.BLOCKED && dependencyDao.c(str2)) {
                                        int i5 = WorkerWrapperKt.f20381a;
                                        Logger.a().getClass();
                                        workSpecDao.h(str2, WorkInfo.State.ENQUEUED);
                                        workSpecDao.s(jA, str2);
                                    }
                                }
                            }
                        } else if (failure instanceof ListenableWorker.Result.Retry) {
                            int i6 = WorkerWrapperKt.f20381a;
                            Logger.a().getClass();
                            workerWrapper2.b(-256);
                        } else {
                            int i7 = WorkerWrapperKt.f20381a;
                            Logger.a().getClass();
                            if (workSpec.b()) {
                                workerWrapper2.c();
                            } else {
                                if (failure == null) {
                                    failure = new ListenableWorker.Result.Failure();
                                }
                                workerWrapper2.d(failure);
                            }
                        }
                        z = false;
                    } else if (stateJ.a()) {
                        z = false;
                    } else {
                        workerWrapper2.b(-512);
                    }
                    z2 = z;
                } else if (resolution instanceof WorkerWrapper.Resolution.Failed) {
                    ListenableWorker.Result result = ((WorkerWrapper.Resolution.Failed) resolution).f20369a;
                    int i8 = WorkerWrapperKt.f20381a;
                    Logger.a().getClass();
                    if (workSpec.b()) {
                        workerWrapper2.c();
                    } else {
                        workerWrapper2.d(result);
                    }
                } else {
                    if (!(resolution instanceof WorkerWrapper.Resolution.ResetWorkerStatus)) {
                        v40.g();
                        return null;
                    }
                    int i9 = ((WorkerWrapper.Resolution.ResetWorkerStatus) resolution).f20371a;
                    if (Intrinsics.c(workSpec.y, Boolean.TRUE)) {
                        int i10 = WorkerWrapperKt.f20381a;
                        Logger.a().getClass();
                        workerWrapper2.b(i9);
                    } else {
                        WorkInfo.State stateJ2 = workSpecDao.j(str);
                        if (stateJ2 == null || stateJ2.a()) {
                            int i11 = WorkerWrapperKt.f20381a;
                            Logger loggerA = Logger.a();
                            Objects.toString(stateJ2);
                            loggerA.getClass();
                            z = false;
                        } else {
                            int i12 = WorkerWrapperKt.f20381a;
                            Logger loggerA2 = Logger.a();
                            stateJ2.toString();
                            loggerA2.getClass();
                            workSpecDao.h(str, WorkInfo.State.ENQUEUED);
                            workSpecDao.v(i9, str);
                            workSpecDao.c(-1L, str);
                        }
                    }
                    z2 = z;
                }
                return Boolean.valueOf(z2);
            }
        };
        workDatabase.getClass();
        Object objV = workDatabase.v(new xn0(callable, 18));
        objV.getClass();
        return objV;
    }
}
