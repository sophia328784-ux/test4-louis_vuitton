package androidx.compose.ui.unit;

import defpackage.a;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\b\u0082\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/unit/DensityImpl;", "Landroidx/compose/ui/unit/Density;", "", "density", "fontScale", "<init>", "(FF)V", "ui-unit"}, k = 1, mv = {2, 1, 0}, xi = 48)
final /* data */ class DensityImpl implements Density {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f11000b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f11001c;

    public DensityImpl(float f2, float f3) {
        this.f11000b = f2;
        this.f11001c = f3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DensityImpl)) {
            return false;
        }
        DensityImpl densityImpl = (DensityImpl) obj;
        return Float.compare(this.f11000b, densityImpl.f11000b) == 0 && Float.compare(this.f11001c, densityImpl.f11001c) == 0;
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: getDensity, reason: from getter */
    public final float getF11002b() {
        return this.f11000b;
    }

    public final int hashCode() {
        return Float.hashCode(this.f11001c) + (Float.hashCode(this.f11000b) * 31);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    /* JADX INFO: renamed from: s1, reason: from getter */
    public final float getF11003c() {
        return this.f11001c;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DensityImpl(density=");
        sb.append(this.f11000b);
        sb.append(", fontScale=");
        return a.m(sb, this.f11001c, ')');
    }
}
