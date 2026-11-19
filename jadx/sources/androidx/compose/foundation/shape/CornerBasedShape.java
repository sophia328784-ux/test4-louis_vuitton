package androidx.compose.foundation.shape;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Interpolatable;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b'\u0018\u00002\u00020\u00012\u00020\u0002B'\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/foundation/shape/CornerBasedShape;", "Landroidx/compose/ui/graphics/Shape;", "Landroidx/compose/ui/graphics/Interpolatable;", "Landroidx/compose/foundation/shape/CornerSize;", "topStart", "topEnd", "bottomEnd", "bottomStart", "<init>", "(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class CornerBasedShape implements Shape, Interpolatable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CornerSize f5841a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CornerSize f5842b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CornerSize f5843c;
    public final CornerSize d;

    public CornerBasedShape(CornerSize cornerSize, CornerSize cornerSize2, CornerSize cornerSize3, CornerSize cornerSize4) {
        this.f5841a = cornerSize;
        this.f5842b = cornerSize2;
        this.f5843c = cornerSize3;
        this.d = cornerSize4;
    }

    public static /* synthetic */ CornerBasedShape c(CornerBasedShape cornerBasedShape, CornerSize cornerSize, CornerSize cornerSize2, CornerSize cornerSize3, CornerSize cornerSize4, int i2) {
        if ((i2 & 1) != 0) {
            cornerSize = cornerBasedShape.f5841a;
        }
        if ((i2 & 2) != 0) {
            cornerSize2 = cornerBasedShape.f5842b;
        }
        if ((i2 & 4) != 0) {
            cornerSize3 = cornerBasedShape.f5843c;
        }
        if ((i2 & 8) != 0) {
            cornerSize4 = cornerBasedShape.d;
        }
        return cornerBasedShape.b(cornerSize, cornerSize2, cornerSize3, cornerSize4);
    }

    @Override // androidx.compose.ui.graphics.Shape
    public final Outline a(long j2, LayoutDirection layoutDirection, Density density) {
        float fA = this.f5841a.a(j2, density);
        float fA2 = this.f5842b.a(j2, density);
        float fA3 = this.f5843c.a(j2, density);
        float fA4 = this.d.a(j2, density);
        float fC = Size.c(j2);
        float f2 = fA + fA4;
        if (f2 > fC) {
            float f3 = fC / f2;
            fA *= f3;
            fA4 *= f3;
        }
        float f4 = fA2 + fA3;
        if (f4 > fC) {
            float f5 = fC / f4;
            fA2 *= f5;
            fA3 *= f5;
        }
        if (fA < Call.Parameters.DEFAULT_CAMERA_ZOOM || fA2 < Call.Parameters.DEFAULT_CAMERA_ZOOM || fA3 < Call.Parameters.DEFAULT_CAMERA_ZOOM || fA4 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            InlineClassHelperKt.a("Corner size in Px can't be negative(topStart = " + fA + ", topEnd = " + fA2 + ", bottomEnd = " + fA3 + ", bottomStart = " + fA4 + ")!");
        }
        return d(j2, fA, fA2, fA3, fA4, layoutDirection);
    }

    public abstract RoundedCornerShape b(CornerSize cornerSize, CornerSize cornerSize2, CornerSize cornerSize3, CornerSize cornerSize4);

    public abstract Outline d(long j2, float f2, float f3, float f4, float f5, LayoutDirection layoutDirection);
}
