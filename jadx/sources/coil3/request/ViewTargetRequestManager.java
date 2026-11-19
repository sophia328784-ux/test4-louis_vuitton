package coil3.request;

import android.view.View;
import kotlin.Metadata;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcoil3/request/ViewTargetRequestManager;", "Landroid/view/View$OnAttachStateChangeListener;", "Landroid/view/View;", "view", "<init>", "(Landroid/view/View;)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class ViewTargetRequestManager implements View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f21679b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ViewTargetDisposable f21680c;
    public Job d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ViewTargetRequestDelegate f21681e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f21682f;

    public ViewTargetRequestManager(View view) {
        this.f21679b = view;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        ViewTargetRequestDelegate viewTargetRequestDelegate = this.f21681e;
        if (viewTargetRequestDelegate == null) {
            return;
        }
        this.f21682f = true;
        viewTargetRequestDelegate.f21675b.d(viewTargetRequestDelegate.f21676c);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        ViewTargetRequestDelegate viewTargetRequestDelegate = this.f21681e;
        if (viewTargetRequestDelegate != null) {
            viewTargetRequestDelegate.a();
        }
    }
}
