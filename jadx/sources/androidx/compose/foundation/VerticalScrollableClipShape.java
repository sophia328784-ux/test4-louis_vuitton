package androidx.compose.foundation;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÂ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/VerticalScrollableClipShape;", "Landroidx/compose/ui/graphics/Shape;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class VerticalScrollableClipShape implements Shape {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final VerticalScrollableClipShape f4306a = new VerticalScrollableClipShape();

    @Override // androidx.compose.ui.graphics.Shape
    public final Outline a(long j2, LayoutDirection layoutDirection, Density density) {
        float fB0 = density.B0(ClipScrollableContainerKt.f4166a);
        return new Outline.Rectangle(new Rect(-fB0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Float.intBitsToFloat((int) (j2 >> 32)) + fB0, Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax))));
    }
}
