package coil3.graphics;

import coil3.size.Dimension;
import coil3.size.Scale;
import coil3.size.Size;
import coil3.util.UtilsKt;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcoil3/decode/DecodeUtils;", "", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public abstract class DecodeUtils {

    @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f21357a;

        static {
            int[] iArr = new int[Scale.values().length];
            try {
                iArr[Scale.FILL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Scale.FIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f21357a = iArr;
        }
    }

    public static final long a(int i2, int i3, Size size, Scale scale, Size size2) {
        int i4;
        int i5;
        if (!Intrinsics.c(size, Size.f21689c)) {
            i2 = c(size.f21690a, scale);
            i3 = c(size.f21691b, scale);
        }
        Dimension dimension = size2.f21690a;
        Dimension dimension2 = size2.f21691b;
        if (dimension instanceof Dimension.Pixels) {
            Function1 function1 = UtilsKt.f21734a;
            if (i2 != Integer.MIN_VALUE && i2 != Integer.MAX_VALUE && i2 > (i5 = ((Dimension.Pixels) dimension).f21684a)) {
                i2 = i5;
            }
        }
        if (dimension2 instanceof Dimension.Pixels) {
            Function1 function2 = UtilsKt.f21734a;
            if (i3 != Integer.MIN_VALUE && i3 != Integer.MAX_VALUE && i3 > (i4 = ((Dimension.Pixels) dimension2).f21684a)) {
                i3 = i4;
            }
        }
        return (((long) i3) & BodyPartID.bodyIdMax) | (((long) i2) << 32);
    }

    public static final double b(int i2, int i3, int i4, int i5, Scale scale, Size size) {
        double dMax;
        double d = i2;
        double d2 = ((double) i4) / d;
        double d3 = i3;
        double d4 = ((double) i5) / d3;
        int i6 = WhenMappings.f21357a[scale.ordinal()];
        if (i6 == 1) {
            dMax = Math.max(d2, d4);
        } else {
            if (i6 != 2) {
                v40.g();
                return 0.0d;
            }
            dMax = Math.min(d2, d4);
        }
        Dimension dimension = size.f21690a;
        if (dimension instanceof Dimension.Pixels) {
            double d5 = ((double) ((Dimension.Pixels) dimension).f21684a) / d;
            if (dMax > d5) {
                dMax = d5;
            }
        }
        Dimension dimension2 = size.f21691b;
        if (dimension2 instanceof Dimension.Pixels) {
            double d6 = ((double) ((Dimension.Pixels) dimension2).f21684a) / d3;
            if (dMax > d6) {
                return d6;
            }
        }
        return dMax;
    }

    public static int c(Dimension dimension, Scale scale) {
        if (dimension instanceof Dimension.Pixels) {
            return ((Dimension.Pixels) dimension).f21684a;
        }
        int i2 = WhenMappings.f21357a[scale.ordinal()];
        if (i2 == 1) {
            return Integer.MIN_VALUE;
        }
        if (i2 == 2) {
            return Integer.MAX_VALUE;
        }
        v40.g();
        return 0;
    }
}
