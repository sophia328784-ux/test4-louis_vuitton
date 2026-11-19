package androidx.databinding;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
class WeakListener<T> extends WeakReference<ViewDataBinding> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ObservableReference f12605a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f12606b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f12607c;

    public WeakListener(ViewDataBinding viewDataBinding, int i2, ObservableReference<T> observableReference, ReferenceQueue<ViewDataBinding> referenceQueue) {
        super(viewDataBinding, referenceQueue);
        this.f12606b = i2;
        this.f12605a = observableReference;
    }

    public final boolean a() {
        boolean z;
        Object obj = this.f12607c;
        if (obj != null) {
            this.f12605a.b(obj);
            z = true;
        } else {
            z = false;
        }
        this.f12607c = null;
        return z;
    }
}
