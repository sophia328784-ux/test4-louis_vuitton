package androidx.window.layout;

import android.graphics.Rect;
import androidx.window.core.Bounds;
import defpackage.a;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0019\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B\u0019\b\u0017\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/window/layout/WindowMetrics;", "", "Landroidx/window/core/Bounds;", "_bounds", "", "density", "<init>", "(Landroidx/window/core/Bounds;F)V", "Landroid/graphics/Rect;", "bounds", "(Landroid/graphics/Rect;F)V", "window_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class WindowMetrics {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Bounds f20191a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f20192b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WindowMetrics(Rect rect, float f2) {
        this(new Bounds(rect), f2);
        rect.getClass();
    }

    public final Rect a() {
        Bounds bounds = this.f20191a;
        bounds.getClass();
        return new Rect(bounds.f20188a, bounds.f20189b, bounds.f20190c, bounds.d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!WindowMetrics.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        WindowMetrics windowMetrics = (WindowMetrics) obj;
        return Intrinsics.c(this.f20191a, windowMetrics.f20191a) && this.f20192b == windowMetrics.f20192b;
    }

    public final int hashCode() {
        return Float.hashCode(this.f20192b) + (this.f20191a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("WindowMetrics(_bounds=");
        sb.append(this.f20191a);
        sb.append(", density=");
        return a.m(sb, this.f20192b, ')');
    }

    public WindowMetrics(Bounds bounds, float f2) {
        bounds.getClass();
        this.f20191a = bounds;
        this.f20192b = f2;
    }
}
