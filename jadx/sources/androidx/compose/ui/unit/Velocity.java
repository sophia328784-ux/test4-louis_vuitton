package androidx.compose.ui.unit;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/unit/Velocity;", "", "Companion", "packedValue", "", "ui-unit"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class Velocity {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f11029b = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f11030a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/unit/Velocity$Companion;", "", "ui-unit"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public static long a(float f2, float f3, long j2, int i2) {
        if ((i2 & 1) != 0) {
            f2 = Float.intBitsToFloat((int) (j2 >> 32));
        }
        if ((i2 & 2) != 0) {
            f3 = Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax));
        }
        return (((long) Float.floatToRawIntBits(f3)) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(f2) << 32);
    }

    public static final float b(long j2) {
        return Float.intBitsToFloat((int) (j2 >> 32));
    }

    public static final float c(long j2) {
        return Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax));
    }

    public static final long d(long j2, long j3) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32)) - Float.intBitsToFloat((int) (j3 >> 32));
        float fIntBitsToFloat2 = Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax)) - Float.intBitsToFloat((int) (j3 & BodyPartID.bodyIdMax));
        return (((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) & BodyPartID.bodyIdMax);
    }

    public static final long e(long j2, long j3) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j3 >> 32)) + Float.intBitsToFloat((int) (j2 >> 32));
        return (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (j3 & BodyPartID.bodyIdMax)) + Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax)))) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(fIntBitsToFloat) << 32);
    }

    public static final long f(float f2, long j2) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32)) * f2;
        return (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax)) * f2)) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(fIntBitsToFloat) << 32);
    }

    public static String g(long j2) {
        return "(" + b(j2) + ", " + c(j2) + ") px/sec";
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Velocity) {
            return this.f11030a == ((Velocity) obj).f11030a;
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(this.f11030a);
    }

    public final String toString() {
        return g(this.f11030a);
    }
}
