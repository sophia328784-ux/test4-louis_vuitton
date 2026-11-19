package androidx.compose.ui.graphics;

import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/graphics/SolidColor;", "Landroidx/compose/ui/graphics/Brush;", "Landroidx/compose/ui/graphics/Interpolatable;", "Landroidx/compose/ui/graphics/Color;", "value", "<init>", "(JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SolidColor extends Brush implements Interpolatable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f8931b;

    public SolidColor(long j2, DefaultConstructorMarker defaultConstructorMarker) {
        super(null);
        this.f8931b = j2;
    }

    @Override // androidx.compose.ui.graphics.Brush
    public final void a(float f2, long j2, Paint paint) {
        paint.d(1.0f);
        long jB = this.f8931b;
        if (f2 != 1.0f) {
            jB = Color.b(Color.d(jB) * f2, jB);
        }
        paint.c(jB);
        if (paint.g() != null) {
            paint.f(null);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SolidColor) {
            return Color.c(this.f8931b, ((SolidColor) obj).f8931b);
        }
        return false;
    }

    public final int hashCode() {
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        return Long.hashCode(this.f8931b);
    }

    public final String toString() {
        return "SolidColor(value=" + ((Object) Color.i(this.f8931b)) + ')';
    }
}
