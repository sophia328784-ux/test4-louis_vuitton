package androidx.compose.ui.geometry;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/geometry/CornerRadius;", "", "Companion", "packedValue", "", "ui-geometry"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public abstract class CornerRadius {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f8802a = new Companion(null);

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/geometry/CornerRadius$Companion;", "", "ui-geometry"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public static final boolean a(long j2, long j3) {
        return j2 == j3;
    }

    public static String b(long j2) {
        int i2 = (int) (j2 >> 32);
        float fIntBitsToFloat = Float.intBitsToFloat(i2);
        int i3 = (int) (j2 & BodyPartID.bodyIdMax);
        if (fIntBitsToFloat == Float.intBitsToFloat(i3)) {
            return "CornerRadius.circular(" + GeometryUtilsKt.a(Float.intBitsToFloat(i2)) + ')';
        }
        return "CornerRadius.elliptical(" + GeometryUtilsKt.a(Float.intBitsToFloat(i2)) + ", " + GeometryUtilsKt.a(Float.intBitsToFloat(i3)) + ')';
    }
}
