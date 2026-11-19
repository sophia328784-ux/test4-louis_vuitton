package coil3.size;

import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0000\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\u0017\u0012\u0006\u0010\u0004\u001a\u00028\u0000\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcoil3/size/RealViewSizeResolver;", "Landroid/view/View;", "T", "Lcoil3/size/ViewSizeResolver;", "view", "", "subtractPadding", "<init>", "(Landroid/view/View;Z)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class RealViewSizeResolver<T extends View> implements ViewSizeResolver<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f21687b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f21688c;

    public RealViewSizeResolver(T t, boolean z) {
        this.f21687b = t;
        this.f21688c = z;
    }

    @Override // coil3.size.ViewSizeResolver
    /* JADX INFO: renamed from: a, reason: from getter */
    public final View getF21687b() {
        return this.f21687b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RealViewSizeResolver)) {
            return false;
        }
        RealViewSizeResolver realViewSizeResolver = (RealViewSizeResolver) obj;
        return Intrinsics.c(this.f21687b, realViewSizeResolver.f21687b) && this.f21688c == realViewSizeResolver.f21688c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f21688c) + (this.f21687b.hashCode() * 31);
    }

    @Override // coil3.size.ViewSizeResolver
    /* JADX INFO: renamed from: q, reason: from getter */
    public final boolean getF21688c() {
        return this.f21688c;
    }

    public final String toString() {
        return "RealViewSizeResolver(view=" + this.f21687b + ", subtractPadding=" + this.f21688c + ")";
    }
}
