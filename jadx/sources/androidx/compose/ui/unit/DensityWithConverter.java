package androidx.compose.ui.unit;

import androidx.compose.ui.unit.fontscaling.FontScaleConverter;
import defpackage.md;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/unit/DensityWithConverter;", "Landroidx/compose/ui/unit/Density;", "", "density", "fontScale", "Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;", "converter", "<init>", "(FFLandroidx/compose/ui/unit/fontscaling/FontScaleConverter;)V", "ui-unit"}, k = 1, mv = {2, 1, 0}, xi = 48)
final /* data */ class DensityWithConverter implements Density {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f11002b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f11003c;
    public final FontScaleConverter d;

    public DensityWithConverter(float f2, float f3, FontScaleConverter fontScaleConverter) {
        this.f11002b = f2;
        this.f11003c = f3;
        this.d = fontScaleConverter;
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public final long Q(float f2) {
        return TextUnitKt.d(this.d.a(f2), 4294967296L);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public final float Z(long j2) {
        long jB = TextUnit.b(j2);
        TextUnitType.f11026b.getClass();
        if (!TextUnitType.a(jB, TextUnitType.f11027c)) {
            md.k("Only Sp can convert to Px");
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        float fB = this.d.b(TextUnit.c(j2));
        Dp.Companion companion = Dp.f11004c;
        return fB;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DensityWithConverter)) {
            return false;
        }
        DensityWithConverter densityWithConverter = (DensityWithConverter) obj;
        return Float.compare(this.f11002b, densityWithConverter.f11002b) == 0 && Float.compare(this.f11003c, densityWithConverter.f11003c) == 0 && Intrinsics.c(this.d, densityWithConverter.d);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: getDensity, reason: from getter */
    public final float getF11002b() {
        return this.f11002b;
    }

    public final int hashCode() {
        return this.d.hashCode() + pq0.b(Float.hashCode(this.f11002b) * 31, 31, this.f11003c);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    /* JADX INFO: renamed from: s1, reason: from getter */
    public final float getF11003c() {
        return this.f11003c;
    }

    public final String toString() {
        return "DensityWithConverter(density=" + this.f11002b + ", fontScale=" + this.f11003c + ", converter=" + this.d + ')';
    }
}
