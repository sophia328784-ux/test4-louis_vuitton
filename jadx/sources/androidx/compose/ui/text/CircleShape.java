package androidx.compose.ui.text;

import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.RoundRectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÂ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/text/CircleShape;", "Landroidx/compose/ui/graphics/Shape;", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class CircleShape implements Shape {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CircleShape f10449a = new CircleShape();

    @Override // androidx.compose.ui.graphics.Shape
    public final Outline a(long j2, LayoutDirection layoutDirection, Density density) {
        float fC = Size.c(j2) / 2.0f;
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fC)) << 32) | (((long) Float.floatToRawIntBits(fC)) & BodyPartID.bodyIdMax);
        CornerRadius.Companion companion = CornerRadius.f8802a;
        return new Outline.Rounded(RoundRectKt.a(SizeKt.b(j2), jFloatToRawIntBits, jFloatToRawIntBits, jFloatToRawIntBits, jFloatToRawIntBits));
    }
}
