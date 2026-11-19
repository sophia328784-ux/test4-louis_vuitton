package coil3.request;

import android.view.View;
import kotlin.Metadata;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcoil3/request/ViewTargetDisposable;", "Lcoil3/request/Disposable;", "Landroid/view/View;", "view", "Lkotlinx/coroutines/Deferred;", "Lcoil3/request/ImageResult;", "job", "<init>", "(Landroid/view/View;Lkotlinx/coroutines/Deferred;)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class ViewTargetDisposable implements Disposable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f21673a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile Deferred f21674b;

    public ViewTargetDisposable(View view, Deferred<? extends ImageResult> deferred) {
        this.f21673a = view;
        this.f21674b = deferred;
    }

    @Override // coil3.request.Disposable
    /* JADX INFO: renamed from: a, reason: from getter */
    public final Deferred getF21659a() {
        return this.f21674b;
    }
}
