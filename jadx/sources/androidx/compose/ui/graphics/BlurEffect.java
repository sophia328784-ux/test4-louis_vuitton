package androidx.compose.ui.graphics;

import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B-\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/ui/graphics/BlurEffect;", "Landroidx/compose/ui/graphics/RenderEffect;", "renderEffect", "", "radiusX", "radiusY", "Landroidx/compose/ui/graphics/TileMode;", "edgeTreatment", "<init>", "(Landroidx/compose/ui/graphics/RenderEffect;FFILkotlin/jvm/internal/DefaultConstructorMarker;)V", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class BlurEffect extends RenderEffect {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RenderEffect f8859b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f8860c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f8861e;

    /* JADX WARN: Illegal instructions before constructor call */
    public BlurEffect(RenderEffect renderEffect, float f2, float f3, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        f3 = (i3 & 4) != 0 ? f2 : f3;
        if ((i3 & 8) != 0) {
            TileMode.f8938a.getClass();
            i2 = 0;
        }
        this(renderEffect, f2, f3, i2, null);
    }

    @Override // androidx.compose.ui.graphics.RenderEffect
    public final android.graphics.RenderEffect b() {
        return RenderEffectVerificationHelper.a(this.f8859b, this.f8860c, this.d, this.f8861e);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BlurEffect)) {
            return false;
        }
        BlurEffect blurEffect = (BlurEffect) obj;
        if (this.f8860c == blurEffect.f8860c && this.d == blurEffect.d) {
            int i2 = blurEffect.f8861e;
            TileMode.Companion companion = TileMode.f8938a;
            return this.f8861e == i2 && Intrinsics.c(this.f8859b, blurEffect.f8859b);
        }
        return false;
    }

    public final int hashCode() {
        RenderEffect renderEffect = this.f8859b;
        int iB = pq0.b(pq0.b((renderEffect != null ? renderEffect.hashCode() : 0) * 31, 31, this.f8860c), 31, this.d);
        TileMode.Companion companion = TileMode.f8938a;
        return Integer.hashCode(this.f8861e) + iB;
    }

    public final String toString() {
        return "BlurEffect(renderEffect=" + this.f8859b + ", radiusX=" + this.f8860c + ", radiusY=" + this.d + ", edgeTreatment=" + ((Object) TileMode.a(this.f8861e)) + ')';
    }

    public BlurEffect(RenderEffect renderEffect, float f2, float f3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        super(null);
        this.f8859b = renderEffect;
        this.f8860c = f2;
        this.d = f3;
        this.f8861e = i2;
    }
}
