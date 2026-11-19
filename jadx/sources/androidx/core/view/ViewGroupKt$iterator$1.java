package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import defpackage.zy0;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMutableIterator;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010)\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"androidx/core/view/ViewGroupKt$iterator$1", "", "Landroid/view/View;", "core-ktx"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ViewGroupKt$iterator$1 implements Iterator<View>, KMutableIterator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12213b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ ViewGroup f12214c;

    public ViewGroupKt$iterator$1(ViewGroup viewGroup) {
        this.f12214c = viewGroup;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f12213b < this.f12214c.getChildCount();
    }

    @Override // java.util.Iterator
    public final View next() {
        ViewGroup viewGroup = this.f12214c;
        int i2 = this.f12213b;
        this.f12213b = i2 + 1;
        View childAt = viewGroup.getChildAt(i2);
        if (childAt != null) {
            return childAt;
        }
        zy0.b();
        return null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        ViewGroup viewGroup = this.f12214c;
        int i2 = this.f12213b - 1;
        this.f12213b = i2;
        viewGroup.removeViewAt(i2);
    }
}
