package androidx.compose.ui.unit;

import androidx.compose.ui.unit.fontscaling.FontScaleConverter;
import defpackage.a;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/unit/LinearFontScaleConverter;", "Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;", "", "fontScale", "<init>", "(F)V", "ui-unit"}, k = 1, mv = {2, 1, 0}, xi = 48)
final /* data */ class LinearFontScaleConverter implements FontScaleConverter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f11022a;

    public LinearFontScaleConverter(float f2) {
        this.f11022a = f2;
    }

    @Override // androidx.compose.ui.unit.fontscaling.FontScaleConverter
    public final float a(float f2) {
        return f2 / this.f11022a;
    }

    @Override // androidx.compose.ui.unit.fontscaling.FontScaleConverter
    public final float b(float f2) {
        return f2 * this.f11022a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof LinearFontScaleConverter) && Float.compare(this.f11022a, ((LinearFontScaleConverter) obj).f11022a) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.f11022a);
    }

    public final String toString() {
        return a.m(new StringBuilder("LinearFontScaleConverter(fontScale="), this.f11022a, ')');
    }
}
