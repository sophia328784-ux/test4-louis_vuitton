package coil3.request;

import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import coil3.ImageLoader;
import coil3.target.ViewTarget;
import coil3.util.LifecyclesKt;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B5\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcoil3/request/ViewTargetRequestDelegate;", "Lcoil3/request/RequestDelegate;", "Landroidx/lifecycle/DefaultLifecycleObserver;", "Lcoil3/ImageLoader;", "imageLoader", "Lcoil3/request/ImageRequest;", "initialRequest", "Lcoil3/target/ViewTarget;", "target", "Landroidx/lifecycle/Lifecycle;", "lifecycle", "Lkotlinx/coroutines/Job;", "job", "<init>", "(Lcoil3/ImageLoader;Lcoil3/request/ImageRequest;Lcoil3/target/ViewTarget;Landroidx/lifecycle/Lifecycle;Lkotlinx/coroutines/Job;)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class ViewTargetRequestDelegate implements RequestDelegate, DefaultLifecycleObserver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImageLoader f21675b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImageRequest f21676c;
    public final ViewTarget d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Lifecycle f21677e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Job f21678f;

    public ViewTargetRequestDelegate(ImageLoader imageLoader, ImageRequest imageRequest, ViewTarget<?> viewTarget, Lifecycle lifecycle, Job job) {
        this.f21675b = imageLoader;
        this.f21676c = imageRequest;
        this.d = viewTarget;
        this.f21677e = lifecycle;
        this.f21678f = job;
    }

    public final void a() {
        this.f21678f.cancel(null);
        ViewTarget viewTarget = this.d;
        boolean z = viewTarget instanceof LifecycleObserver;
        Lifecycle lifecycle = this.f21677e;
        if (z && lifecycle != null) {
            lifecycle.d((LifecycleObserver) viewTarget);
        }
        if (lifecycle != null) {
            lifecycle.d(this);
        }
    }

    @Override // coil3.request.RequestDelegate
    public final Object g(Continuation continuation) {
        Lifecycle lifecycle = this.f21677e;
        return lifecycle != null ? LifecyclesKt.a(lifecycle, (ContinuationImpl) continuation) : Unit.f71739a;
    }

    @Override // coil3.request.RequestDelegate
    public final void h() {
        ViewTarget viewTarget = this.d;
        if (viewTarget.a().isAttachedToWindow()) {
            return;
        }
        ViewTargetRequestManager viewTargetRequestManagerA = ViewTargetRequestManagerKt.a(viewTarget.a());
        ViewTargetRequestDelegate viewTargetRequestDelegate = viewTargetRequestManagerA.f21681e;
        if (viewTargetRequestDelegate != null) {
            viewTargetRequestDelegate.a();
        }
        viewTargetRequestManagerA.f21681e = this;
        throw new CancellationException("'ViewTarget.view' must be attached to a window.");
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onDestroy(LifecycleOwner lifecycleOwner) {
        ViewTargetRequestManager viewTargetRequestManagerA = ViewTargetRequestManagerKt.a(this.d.a());
        synchronized (viewTargetRequestManagerA) {
            try {
                Job job = viewTargetRequestManagerA.d;
                if (job != null) {
                    job.cancel(null);
                }
                GlobalScope globalScope = GlobalScope.f74669b;
                DefaultScheduler defaultScheduler = Dispatchers.f74659a;
                viewTargetRequestManagerA.d = BuildersKt.c(globalScope, MainDispatcherLoader.f75131a.r(), null, new ViewTargetRequestManager$dispose$1(viewTargetRequestManagerA, null), 2);
                viewTargetRequestManagerA.f21680c = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // coil3.request.RequestDelegate
    public final void start() {
        Lifecycle lifecycle = this.f21677e;
        if (lifecycle != null) {
            lifecycle.a(this);
        }
        ViewTarget viewTarget = this.d;
        if ((viewTarget instanceof LifecycleObserver) && lifecycle != null) {
            LifecycleObserver lifecycleObserver = (LifecycleObserver) viewTarget;
            lifecycle.d(lifecycleObserver);
            lifecycle.a(lifecycleObserver);
        }
        ViewTargetRequestManager viewTargetRequestManagerA = ViewTargetRequestManagerKt.a(viewTarget.a());
        ViewTargetRequestDelegate viewTargetRequestDelegate = viewTargetRequestManagerA.f21681e;
        if (viewTargetRequestDelegate != null) {
            viewTargetRequestDelegate.a();
        }
        viewTargetRequestManagerA.f21681e = this;
    }
}
