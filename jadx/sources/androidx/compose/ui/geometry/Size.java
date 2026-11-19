package androidx.compose.ui.geometry;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/geometry/Size;", "", "Companion", "packedValue", "", "ui-geometry"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class Size {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f8820b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final long f8821c = 9205357640488583168L;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f8822a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/geometry/Size$Companion;", "", "ui-geometry"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public static final boolean a(long j2, long j3) {
        return j2 == j3;
    }

    public static final float b(long j2) {
        return Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax));
    }

    public static final float c(long j2) {
        return Math.min(Float.intBitsToFloat((int) ((j2 >> 32) & 2147483647L)), Float.intBitsToFloat((int) (j2 & 2147483647L)));
    }

    public static final float d(long j2) {
        return Float.intBitsToFloat((int) (j2 >> 32));
    }

    public static final boolean e(long j2) {
        return (j2 == 9205357640488583168L) | (Float.intBitsToFloat((int) (j2 >> 32)) <= Call.Parameters.DEFAULT_CAMERA_ZOOM) | (Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax)) <= Call.Parameters.DEFAULT_CAMERA_ZOOM);
    }

    public static String f(long j2) {
        if (j2 == 9205357640488583168L) {
            return "Size.Unspecified";
        }
        return "Size(" + GeometryUtilsKt.a(Float.intBitsToFloat((int) (j2 >> 32))) + ", " + GeometryUtilsKt.a(Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax))) + ')';
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Size) {
            return this.f8822a == ((Size) obj).f8822a;
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(this.f8822a);
    }

    public final String toString() {
        return f(this.f8822a);
    }
}
