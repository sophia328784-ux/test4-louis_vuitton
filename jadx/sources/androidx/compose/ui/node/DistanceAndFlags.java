package androidx.compose.ui.node;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\b\u0081@\u0018\u00002\u00020\u0001\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/node/DistanceAndFlags;", "", "packedValue", "", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public abstract class DistanceAndFlags {
    public static final int a(long j2, long j3) {
        boolean zD = d(j2);
        if (zD != d(j3)) {
            return zD ? -1 : 1;
        }
        int iSignum = (int) Math.signum(b(j2) - b(j3));
        if (Math.min(b(j2), b(j3)) >= Call.Parameters.DEFAULT_CAMERA_ZOOM && c(j2) != c(j3)) {
            return c(j2) ? -1 : 1;
        }
        return iSignum;
    }

    public static final float b(long j2) {
        return Float.intBitsToFloat((int) (j2 >> 32));
    }

    public static final boolean c(long j2) {
        return (j2 & 2) != 0;
    }

    public static final boolean d(long j2) {
        return (j2 & 1) != 0;
    }
}
