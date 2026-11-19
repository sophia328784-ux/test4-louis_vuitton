package androidx.compose.material.ripple;

import defpackage.a;
import defpackage.pq0;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/material/ripple/RippleAlpha;", "", "", "draggedAlpha", "focusedAlpha", "hoveredAlpha", "pressedAlpha", "<init>", "(FFFF)V", "material-ripple"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RippleAlpha {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f6518a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f6519b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f6520c;
    public final float d;

    public RippleAlpha(float f2, float f3, float f4, float f5) {
        this.f6518a = f2;
        this.f6519b = f3;
        this.f6520c = f4;
        this.d = f5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RippleAlpha)) {
            return false;
        }
        RippleAlpha rippleAlpha = (RippleAlpha) obj;
        return this.f6518a == rippleAlpha.f6518a && this.f6519b == rippleAlpha.f6519b && this.f6520c == rippleAlpha.f6520c && this.d == rippleAlpha.d;
    }

    public final int hashCode() {
        return Float.hashCode(this.d) + pq0.b(pq0.b(Float.hashCode(this.f6518a) * 31, 31, this.f6519b), 31, this.f6520c);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RippleAlpha(draggedAlpha=");
        sb.append(this.f6518a);
        sb.append(", focusedAlpha=");
        sb.append(this.f6519b);
        sb.append(", hoveredAlpha=");
        sb.append(this.f6520c);
        sb.append(", pressedAlpha=");
        return a.m(sb, this.d, ')');
    }
}
