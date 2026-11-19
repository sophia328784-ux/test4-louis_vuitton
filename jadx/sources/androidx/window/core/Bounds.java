package androidx.window.core;

import android.graphics.Rect;
import defpackage.a;
import defpackage.b21;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001:\u0001\fB'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bB\u0011\b\u0016\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0007\u0010\u000b¨\u0006\r"}, d2 = {"Landroidx/window/core/Bounds;", "", "", "left", "top", "right", "bottom", "<init>", "(IIII)V", "Landroid/graphics/Rect;", "rect", "(Landroid/graphics/Rect;)V", "Companion", "window_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class Bounds {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f20188a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f20189b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f20190c;
    public final int d;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/window/core/Bounds$Companion;", "", "window_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        new Bounds(0, 0, 0, 0);
    }

    public Bounds(int i2, int i3, int i4, int i5) {
        this.f20188a = i2;
        this.f20189b = i3;
        this.f20190c = i4;
        this.d = i5;
        if (i2 > i4) {
            b21.n(o60.h(i2, i4, "Left must be less than or equal to right, left: ", ", right: "));
            throw null;
        }
        if (i3 <= i5) {
            return;
        }
        b21.n(o60.h(i3, i5, "top must be less than or equal to bottom, top: ", ", bottom: "));
        throw null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!Bounds.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        Bounds bounds = (Bounds) obj;
        return this.f20188a == bounds.f20188a && this.f20189b == bounds.f20189b && this.f20190c == bounds.f20190c && this.d == bounds.d;
    }

    public final int hashCode() {
        return (((((this.f20188a * 31) + this.f20189b) * 31) + this.f20190c) * 31) + this.d;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Bounds { [");
        sb.append(this.f20188a);
        sb.append(',');
        sb.append(this.f20189b);
        sb.append(',');
        sb.append(this.f20190c);
        sb.append(',');
        return a.i(this.d, "] }", sb);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Bounds(Rect rect) {
        this(rect.left, rect.top, rect.right, rect.bottom);
        rect.getClass();
    }
}
