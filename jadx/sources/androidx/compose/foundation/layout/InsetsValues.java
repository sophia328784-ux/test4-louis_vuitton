package androidx.compose.foundation.layout;

import defpackage.tr;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0001\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/foundation/layout/InsetsValues;", "", "", "left", "top", "right", "bottom", "<init>", "(IIII)V", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class InsetsValues {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5006a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5007b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f5008c;
    public final int d;

    public InsetsValues(int i2, int i3, int i4, int i5) {
        this.f5006a = i2;
        this.f5007b = i3;
        this.f5008c = i4;
        this.d = i5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InsetsValues)) {
            return false;
        }
        InsetsValues insetsValues = (InsetsValues) obj;
        return this.f5006a == insetsValues.f5006a && this.f5007b == insetsValues.f5007b && this.f5008c == insetsValues.f5008c && this.d == insetsValues.d;
    }

    public final int hashCode() {
        return (((((this.f5006a * 31) + this.f5007b) * 31) + this.f5008c) * 31) + this.d;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("InsetsValues(left=");
        sb.append(this.f5006a);
        sb.append(", top=");
        sb.append(this.f5007b);
        sb.append(", right=");
        sb.append(this.f5008c);
        sb.append(", bottom=");
        return tr.k(sb, this.d, ')');
    }
}
