package androidx.compose.ui.geometry;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/geometry/Offset;", "", "Companion", "packedValue", "", "ui-geometry"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class Offset {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f8806b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final long f8807c = 9187343241974906880L;
    public static final long d = 9205357640488583168L;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f8808a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/geometry/Offset$Companion;", "", "ui-geometry"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public static long a(long j2, int i2, float f2) {
        float fIntBitsToFloat = (i2 & 1) != 0 ? Float.intBitsToFloat((int) (j2 >> 32)) : Call.Parameters.DEFAULT_CAMERA_ZOOM;
        if ((i2 & 2) != 0) {
            f2 = Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax));
        }
        return (((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(f2)) & BodyPartID.bodyIdMax);
    }

    public static final long b(float f2, long j2) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32)) / f2;
        return (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax)) / f2)) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(fIntBitsToFloat) << 32);
    }

    public static final boolean c(long j2, long j3) {
        return j2 == j3;
    }

    public static final float d(long j2) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax));
        return (float) Math.sqrt((fIntBitsToFloat2 * fIntBitsToFloat2) + (fIntBitsToFloat * fIntBitsToFloat));
    }

    public static final long e(long j2, long j3) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32)) - Float.intBitsToFloat((int) (j3 >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax)) - Float.intBitsToFloat((int) (j3 & BodyPartID.bodyIdMax));
        return (((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) & BodyPartID.bodyIdMax);
    }

    public static final long f(long j2, long j3) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j3 >> 32)) + Float.intBitsToFloat((int) (j2 >> 32));
        return (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (j3 & BodyPartID.bodyIdMax)) + Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax)))) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(fIntBitsToFloat) << 32);
    }

    public static final long g(float f2, long j2) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32)) * f2;
        return (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax)) * f2)) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(fIntBitsToFloat) << 32);
    }

    public static String h(long j2) {
        if ((9223372034707292159L & j2) == 9205357640488583168L) {
            return "Offset.Unspecified";
        }
        return "Offset(" + GeometryUtilsKt.a(Float.intBitsToFloat((int) (j2 >> 32))) + ", " + GeometryUtilsKt.a(Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax))) + ')';
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Offset) {
            return this.f8808a == ((Offset) obj).f8808a;
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(this.f8808a);
    }

    public final String toString() {
        return h(this.f8808a);
    }
}
