package androidx.work;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u00002\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/work/CoroutineWorker;", "Landroidx/work/ListenableWorker;", "Landroid/content/Context;", "appContext", "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "DeprecatedDispatcher", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class CoroutineWorker extends ListenableWorker {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final WorkerParameters f20235e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CoroutineDispatcher f20236f;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÂ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/work/CoroutineWorker$DeprecatedDispatcher;", "Lkotlinx/coroutines/CoroutineDispatcher;", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class DeprecatedDispatcher extends CoroutineDispatcher {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final DeprecatedDispatcher f20237b = new DeprecatedDispatcher();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final DefaultScheduler f20238c = Dispatchers.f74659a;

        @Override // kotlinx.coroutines.CoroutineDispatcher
        public final void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
            coroutineContext.getClass();
            runnable.getClass();
            f20238c.dispatch(coroutineContext, runnable);
        }

        @Override // kotlinx.coroutines.CoroutineDispatcher
        public final boolean isDispatchNeeded(CoroutineContext coroutineContext) {
            coroutineContext.getClass();
            return f20238c.isDispatchNeeded(coroutineContext);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutineWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        context.getClass();
        workerParameters.getClass();
        this.f20235e = workerParameters;
        this.f20236f = DeprecatedDispatcher.f20237b;
    }

    @Override // androidx.work.ListenableWorker
    public final ListenableFuture a() {
        return ListenableFutureKt.a(this.f20236f.plus(JobKt.a()), new CoroutineWorker$getForegroundInfoAsync$1(this, null));
    }

    @Override // androidx.work.ListenableWorker
    public final ListenableFuture b() {
        DeprecatedDispatcher deprecatedDispatcher = DeprecatedDispatcher.f20237b;
        CoroutineContext coroutineContext = this.f20236f;
        if (Intrinsics.c(coroutineContext, deprecatedDispatcher)) {
            coroutineContext = this.f20235e.d;
        }
        coroutineContext.getClass();
        return ListenableFutureKt.a(coroutineContext.plus(JobKt.a()), new CoroutineWorker$startWork$1(this, null));
    }

    public abstract Object c(ContinuationImpl continuationImpl);
}
