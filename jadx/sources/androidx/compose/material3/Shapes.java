package androidx.compose.material3;

import androidx.compose.foundation.shape.CornerBasedShape;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\f\b\u0007\u0018\u00002\u00020\u0001BY\b\u0000\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\fB;\b\u0016\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/compose/material3/Shapes;", "", "Landroidx/compose/foundation/shape/CornerBasedShape;", "extraSmall", "small", "medium", "large", "extraLarge", "largeIncreased", "extraLargeIncreased", "extraExtraLarge", "<init>", "(Landroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/foundation/shape/CornerBasedShape;)V", "(Landroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/foundation/shape/CornerBasedShape;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class Shapes {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CornerBasedShape f7193a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CornerBasedShape f7194b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CornerBasedShape f7195c;
    public final CornerBasedShape d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CornerBasedShape f7196e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CornerBasedShape f7197f;
    public final CornerBasedShape g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CornerBasedShape f7198h;

    public Shapes(CornerBasedShape cornerBasedShape, CornerBasedShape cornerBasedShape2, CornerBasedShape cornerBasedShape3, CornerBasedShape cornerBasedShape4, CornerBasedShape cornerBasedShape5, CornerBasedShape cornerBasedShape6, CornerBasedShape cornerBasedShape7, CornerBasedShape cornerBasedShape8, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? ShapeDefaults.f7184a : cornerBasedShape, (i2 & 2) != 0 ? ShapeDefaults.f7185b : cornerBasedShape2, (i2 & 4) != 0 ? ShapeDefaults.f7186c : cornerBasedShape3, (i2 & 8) != 0 ? ShapeDefaults.d : cornerBasedShape4, (i2 & 16) != 0 ? ShapeDefaults.f7188f : cornerBasedShape5, (i2 & 32) != 0 ? ShapeDefaults.f7187e : cornerBasedShape6, (i2 & 64) != 0 ? ShapeDefaults.g : cornerBasedShape7, (i2 & 128) != 0 ? ShapeDefaults.f7189h : cornerBasedShape8);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Shapes)) {
            return false;
        }
        Shapes shapes = (Shapes) obj;
        return Intrinsics.c(this.f7193a, shapes.f7193a) && Intrinsics.c(this.f7194b, shapes.f7194b) && Intrinsics.c(this.f7195c, shapes.f7195c) && Intrinsics.c(this.d, shapes.d) && Intrinsics.c(this.f7196e, shapes.f7196e) && Intrinsics.c(this.f7197f, shapes.f7197f) && Intrinsics.c(this.g, shapes.g) && Intrinsics.c(this.f7198h, shapes.f7198h);
    }

    public final int hashCode() {
        return this.f7198h.hashCode() + ((this.g.hashCode() + ((this.f7197f.hashCode() + ((this.f7196e.hashCode() + ((this.d.hashCode() + ((this.f7195c.hashCode() + ((this.f7194b.hashCode() + (this.f7193a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "Shapes(extraSmall=" + this.f7193a + ", small=" + this.f7194b + ", medium=" + this.f7195c + ", large=" + this.d + ", largeIncreased=" + this.f7197f + ", extraLarge=" + this.f7196e + ", extralargeIncreased=" + this.g + ", extraExtraLarge=" + this.f7198h + ')';
    }

    public Shapes(CornerBasedShape cornerBasedShape, CornerBasedShape cornerBasedShape2, CornerBasedShape cornerBasedShape3, CornerBasedShape cornerBasedShape4, CornerBasedShape cornerBasedShape5, CornerBasedShape cornerBasedShape6, CornerBasedShape cornerBasedShape7, CornerBasedShape cornerBasedShape8) {
        this.f7193a = cornerBasedShape;
        this.f7194b = cornerBasedShape2;
        this.f7195c = cornerBasedShape3;
        this.d = cornerBasedShape4;
        this.f7196e = cornerBasedShape5;
        this.f7197f = cornerBasedShape6;
        this.g = cornerBasedShape7;
        this.f7198h = cornerBasedShape8;
    }

    public Shapes(CornerBasedShape cornerBasedShape, CornerBasedShape cornerBasedShape2, CornerBasedShape cornerBasedShape3, CornerBasedShape cornerBasedShape4, CornerBasedShape cornerBasedShape5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? ShapeDefaults.f7184a : cornerBasedShape, (i2 & 2) != 0 ? ShapeDefaults.f7185b : cornerBasedShape2, (i2 & 4) != 0 ? ShapeDefaults.f7186c : cornerBasedShape3, (i2 & 8) != 0 ? ShapeDefaults.d : cornerBasedShape4, (i2 & 16) != 0 ? ShapeDefaults.f7188f : cornerBasedShape5);
    }

    public Shapes() {
        this(null, null, null, null, null, null, null, null, 255, null);
    }

    public Shapes(CornerBasedShape cornerBasedShape, CornerBasedShape cornerBasedShape2, CornerBasedShape cornerBasedShape3, CornerBasedShape cornerBasedShape4, CornerBasedShape cornerBasedShape5) {
        this(cornerBasedShape, cornerBasedShape2, cornerBasedShape3, cornerBasedShape4, cornerBasedShape5, ShapeDefaults.f7187e, ShapeDefaults.g, ShapeDefaults.f7189h);
    }
}
