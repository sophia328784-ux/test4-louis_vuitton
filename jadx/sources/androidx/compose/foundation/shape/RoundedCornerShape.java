package androidx.compose.foundation.shape;

import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRectKt;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/foundation/shape/RoundedCornerShape;", "Landroidx/compose/foundation/shape/CornerBasedShape;", "Landroidx/compose/foundation/shape/CornerSize;", "topStart", "topEnd", "bottomEnd", "bottomStart", "<init>", "(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RoundedCornerShape extends CornerBasedShape {
    public RoundedCornerShape(CornerSize cornerSize, CornerSize cornerSize2, CornerSize cornerSize3, CornerSize cornerSize4) {
        super(cornerSize, cornerSize2, cornerSize3, cornerSize4);
    }

    @Override // androidx.compose.foundation.shape.CornerBasedShape
    public final RoundedCornerShape b(CornerSize cornerSize, CornerSize cornerSize2, CornerSize cornerSize3, CornerSize cornerSize4) {
        return new RoundedCornerShape(cornerSize, cornerSize2, cornerSize3, cornerSize4);
    }

    @Override // androidx.compose.foundation.shape.CornerBasedShape
    public final Outline d(long j2, float f2, float f3, float f4, float f5, LayoutDirection layoutDirection) {
        if (f2 + f3 + f4 + f5 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return new Outline.Rectangle(SizeKt.b(j2));
        }
        Rect rectB = SizeKt.b(j2);
        LayoutDirection layoutDirection2 = LayoutDirection.Ltr;
        float f6 = layoutDirection == layoutDirection2 ? f2 : f3;
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(f6)) << 32) | (((long) Float.floatToRawIntBits(f6)) & BodyPartID.bodyIdMax);
        CornerRadius.Companion companion = CornerRadius.f8802a;
        float f7 = layoutDirection == layoutDirection2 ? f3 : f2;
        long jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(f7)) & BodyPartID.bodyIdMax) | (((long) Float.floatToRawIntBits(f7)) << 32);
        float f8 = layoutDirection == layoutDirection2 ? f4 : f5;
        long jFloatToRawIntBits3 = (((long) Float.floatToRawIntBits(f8)) << 32) | (((long) Float.floatToRawIntBits(f8)) & BodyPartID.bodyIdMax);
        float f9 = layoutDirection == layoutDirection2 ? f5 : f4;
        return new Outline.Rounded(RoundRectKt.a(rectB, jFloatToRawIntBits, jFloatToRawIntBits2, jFloatToRawIntBits3, (((long) Float.floatToRawIntBits(f9)) << 32) | (((long) Float.floatToRawIntBits(f9)) & BodyPartID.bodyIdMax)));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RoundedCornerShape)) {
            return false;
        }
        RoundedCornerShape roundedCornerShape = (RoundedCornerShape) obj;
        return Intrinsics.c(this.f5841a, roundedCornerShape.f5841a) && Intrinsics.c(this.f5842b, roundedCornerShape.f5842b) && Intrinsics.c(this.f5843c, roundedCornerShape.f5843c) && Intrinsics.c(this.d, roundedCornerShape.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.f5843c.hashCode() + ((this.f5842b.hashCode() + (this.f5841a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "RoundedCornerShape(topStart = " + this.f5841a + ", topEnd = " + this.f5842b + ", bottomEnd = " + this.f5843c + ", bottomStart = " + this.d + ')';
    }
}
