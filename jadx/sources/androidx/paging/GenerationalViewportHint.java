package androidx.paging;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0081\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/paging/GenerationalViewportHint;", "", "", "generationId", "Landroidx/paging/ViewportHint;", "hint", "<init>", "(ILandroidx/paging/ViewportHint;)V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final /* data */ class GenerationalViewportHint {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f18616a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ViewportHint f18617b;

    public GenerationalViewportHint(int i2, ViewportHint viewportHint) {
        viewportHint.getClass();
        this.f18616a = i2;
        this.f18617b = viewportHint;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GenerationalViewportHint)) {
            return false;
        }
        GenerationalViewportHint generationalViewportHint = (GenerationalViewportHint) obj;
        return this.f18616a == generationalViewportHint.f18616a && Intrinsics.c(this.f18617b, generationalViewportHint.f18617b);
    }

    public final int hashCode() {
        return this.f18617b.hashCode() + (Integer.hashCode(this.f18616a) * 31);
    }

    public final String toString() {
        return "GenerationalViewportHint(generationId=" + this.f18616a + ", hint=" + this.f18617b + ')';
    }
}
