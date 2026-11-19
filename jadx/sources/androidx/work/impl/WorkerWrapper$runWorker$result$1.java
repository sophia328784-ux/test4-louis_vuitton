package androidx.work.impl;

import android.content.Context;
import androidx.work.ForegroundUpdater;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.WorkForegroundKt;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Landroidx/work/ListenableWorker$Result;", "kotlin.jvm.PlatformType", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.work.impl.WorkerWrapper$runWorker$result$1", f = "WorkerWrapper.kt", l = {297, 308}, m = "invokeSuspend")
final class WorkerWrapper$runWorker$result$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ListenableWorker.Result>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f20378b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WorkerWrapper f20379c;
    public final /* synthetic */ ListenableWorker d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ForegroundUpdater f20380e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WorkerWrapper$runWorker$result$1(WorkerWrapper workerWrapper, ListenableWorker listenableWorker, ForegroundUpdater foregroundUpdater, Continuation continuation) {
        super(2, continuation);
        this.f20379c = workerWrapper;
        this.d = listenableWorker;
        this.f20380e = foregroundUpdater;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new WorkerWrapper$runWorker$result$1(this.f20379c, this.d, this.f20380e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WorkerWrapper$runWorker$result$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        WorkerWrapper$runWorker$result$1 workerWrapper$runWorker$result$1;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f20378b;
        ListenableWorker listenableWorker = this.d;
        WorkerWrapper workerWrapper = this.f20379c;
        if (i2 == 0) {
            ResultKt.b(obj);
            Context context = workerWrapper.f20355b;
            WorkSpec workSpec = workerWrapper.f20354a;
            TaskExecutor taskExecutor = workerWrapper.f20357e;
            this.f20378b = 1;
            workerWrapper$runWorker$result$1 = this;
            if (WorkForegroundKt.a(context, workSpec, listenableWorker, this.f20380e, taskExecutor, workerWrapper$runWorker$result$1) != coroutineSingletons) {
            }
        }
        if (i2 != 1) {
            if (i2 == 2) {
                ResultKt.b(obj);
                return obj;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        workerWrapper$runWorker$result$1 = this;
        int i3 = WorkerWrapperKt.f20381a;
        Logger loggerA = Logger.a();
        String str = workerWrapper.f20354a.f20512c;
        loggerA.getClass();
        ListenableFuture listenableFutureB = listenableWorker.b();
        workerWrapper$runWorker$result$1.f20378b = 2;
        Object objA = WorkerWrapperKt.a(listenableFutureB, listenableWorker, workerWrapper$runWorker$result$1);
        return objA == coroutineSingletons ? coroutineSingletons : objA;
    }
}
