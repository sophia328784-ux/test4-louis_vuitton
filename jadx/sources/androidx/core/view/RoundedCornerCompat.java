package androidx.core.view;

import android.graphics.Point;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public final class RoundedCornerCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f12184a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f12185b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Point f12186c;

    @Retention(RetentionPolicy.SOURCE)
    public @interface Position {
    }

    public RoundedCornerCompat(int i2, int i3, int i4, int i5) {
        this.f12184a = i2;
        this.f12185b = i3;
        this.f12186c = new Point(i4, i5);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof RoundedCornerCompat) {
            RoundedCornerCompat roundedCornerCompat = (RoundedCornerCompat) obj;
            if (this.f12184a == roundedCornerCompat.f12184a && this.f12185b == roundedCornerCompat.f12185b && this.f12186c.equals(roundedCornerCompat.f12186c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f12186c.hashCode() + (((this.f12184a * 31) + this.f12185b) * 31);
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("RoundedCornerCompat{position=");
        int i2 = this.f12184a;
        if (i2 == 0) {
            str = "TopLeft";
        } else if (i2 == 1) {
            str = "TopRight";
        } else if (i2 != 2) {
            str = i2 != 3 ? "Invalid" : "BottomLeft";
        } else {
            str = "BottomRight";
        }
        sb.append(str);
        sb.append(", radius=");
        sb.append(this.f12185b);
        sb.append(", center=");
        sb.append(this.f12186c);
        sb.append('}');
        return sb.toString();
    }
}
