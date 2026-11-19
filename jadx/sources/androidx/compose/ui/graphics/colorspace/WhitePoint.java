package androidx.compose.ui.graphics.colorspace;

import defpackage.a;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006B!\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/graphics/colorspace/WhitePoint;", "", "", "x", "y", "<init>", "(FF)V", "z", "(FFF)V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class WhitePoint {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f8993a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f8994b;

    /* JADX WARN: Illegal instructions before constructor call */
    public WhitePoint(float f2, float f3, float f4) {
        float f5 = f2 + f3 + f4;
        this(f2 / f5, f3 / f5);
    }

    public final float[] a() {
        float f2 = this.f8993a;
        float f3 = this.f8994b;
        return new float[]{f2 / f3, 1.0f, ((1.0f - f2) - f3) / f3};
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WhitePoint)) {
            return false;
        }
        WhitePoint whitePoint = (WhitePoint) obj;
        return Float.compare(this.f8993a, whitePoint.f8993a) == 0 && Float.compare(this.f8994b, whitePoint.f8994b) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.f8994b) + (Float.hashCode(this.f8993a) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("WhitePoint(x=");
        sb.append(this.f8993a);
        sb.append(", y=");
        return a.m(sb, this.f8994b, ')');
    }

    public WhitePoint(float f2, float f3) {
        this.f8993a = f2;
        this.f8994b = f3;
    }
}
