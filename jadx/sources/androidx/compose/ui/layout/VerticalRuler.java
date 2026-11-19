package androidx.compose.ui.layout;

import androidx.compose.ui.geometry.Offset;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\t\b\u0016¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/layout/VerticalRuler;", "Landroidx/compose/ui/layout/Ruler;", "<init>", "()V", "Companion", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class VerticalRuler extends Ruler {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f9586b = new Companion(null);

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/layout/VerticalRuler$Companion;", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public VerticalRuler() {
        super(null, null);
    }

    @Override // androidx.compose.ui.layout.Ruler
    public final float a(float f2, LayoutCoordinates layoutCoordinates, LayoutCoordinates layoutCoordinates2) {
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(((int) (layoutCoordinates.a() & BodyPartID.bodyIdMax)) / 2.0f)) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(f2) << 32);
        Offset.Companion companion = Offset.f8806b;
        return Float.intBitsToFloat((int) (layoutCoordinates2.y(layoutCoordinates, jFloatToRawIntBits) >> 32));
    }

    public VerticalRuler(Function2 function2, DefaultConstructorMarker defaultConstructorMarker) {
        super(function2, null);
    }
}
