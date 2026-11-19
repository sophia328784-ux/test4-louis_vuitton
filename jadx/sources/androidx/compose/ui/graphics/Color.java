package androidx.compose.ui.graphics;

import androidx.collection.MutableIntObjectMap;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.graphics.colorspace.ColorSpaceKt;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.graphics.colorspace.Connector;
import androidx.compose.ui.graphics.colorspace.ConnectorKt;
import androidx.compose.ui.graphics.colorspace.RenderIntent;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.UnsignedKt;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/graphics/Color;", "", "Companion", "value", "Lkotlin/ULong;", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class Color {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f8866b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final long f8867c = ColorKt.c(4278190080L);
    public static final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final long f8868e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final long f8869f;
    public static final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final long f8870h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final long f8871i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f8872a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/graphics/Color$Companion;", "", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        ColorKt.c(4282664004L);
        ColorKt.c(4287137928L);
        d = ColorKt.c(4291611852L);
        f8868e = ColorKt.c(BodyPartID.bodyIdMax);
        f8869f = ColorKt.c(4294901760L);
        ColorKt.c(4278255360L);
        g = ColorKt.c(4278190335L);
        ColorKt.c(4294967040L);
        ColorKt.c(4278255615L);
        ColorKt.c(4294902015L);
        f8870h = ColorKt.b(0);
        float[] fArr = ColorSpaces.f8955a;
        f8871i = ColorKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, ColorSpaces.u);
    }

    public /* synthetic */ Color(long j2) {
        this.f8872a = j2;
    }

    public static final long a(long j2, ColorSpace colorSpace) {
        Connector connectorD;
        ColorSpace colorSpaceF = f(j2);
        RenderIntent.f8977a.getClass();
        int i2 = colorSpaceF.f8954c;
        int i3 = colorSpace.f8954c;
        if ((i2 | i3) < 0) {
            connectorD = ColorSpaceKt.d(colorSpaceF, colorSpace);
        } else {
            MutableIntObjectMap mutableIntObjectMap = ConnectorKt.f8970a;
            int i4 = i2 | (i3 << 6);
            Object objB = mutableIntObjectMap.b(i4);
            if (objB == null) {
                objB = ColorSpaceKt.d(colorSpaceF, colorSpace);
                mutableIntObjectMap.i(i4, objB);
            }
            connectorD = (Connector) objB;
        }
        return connectorD.a(j2);
    }

    public static long b(float f2, long j2) {
        return ColorKt.a(h(j2), g(j2), e(j2), f2, f(j2));
    }

    public static final boolean c(long j2, long j3) {
        ULong.Companion companion = ULong.INSTANCE;
        return j2 == j3;
    }

    public static final float d(long j2) {
        float fA;
        float f2;
        long j3 = 63 & j2;
        ULong.Companion companion = ULong.INSTANCE;
        if (j3 == 0) {
            fA = (float) UnsignedKt.a((j2 >>> 56) & 255);
            f2 = 255.0f;
        } else {
            fA = (float) UnsignedKt.a((j2 >>> 6) & 1023);
            f2 = 1023.0f;
        }
        return fA / f2;
    }

    public static final float e(long j2) {
        int i2;
        int i3;
        int i4;
        long j3 = 63 & j2;
        ULong.Companion companion = ULong.INSTANCE;
        if (j3 == 0) {
            return ((float) UnsignedKt.a((j2 >>> 32) & 255)) / 255.0f;
        }
        short s = (short) ((j2 >>> 16) & 65535);
        int i5 = Short.MIN_VALUE & s;
        int i6 = ((65535 & s) >>> 10) & 31;
        int i7 = s & 1023;
        if (i6 != 0) {
            int i8 = i7 << 13;
            if (i6 == 31) {
                i2 = 255;
                if (i8 != 0) {
                    i8 |= 4194304;
                }
            } else {
                i2 = i6 + 112;
            }
            int i9 = i2;
            i3 = i8;
            i4 = i9;
        } else {
            if (i7 != 0) {
                float fIntBitsToFloat = Float.intBitsToFloat(i7 + 1056964608) - Float16Kt.f8881a;
                return i5 == 0 ? fIntBitsToFloat : -fIntBitsToFloat;
            }
            i4 = 0;
            i3 = 0;
        }
        return Float.intBitsToFloat((i4 << 23) | (i5 << 16) | i3);
    }

    public static final ColorSpace f(long j2) {
        float[] fArr = ColorSpaces.f8955a;
        ULong.Companion companion = ULong.INSTANCE;
        return ColorSpaces.y[(int) (j2 & 63)];
    }

    public static final float g(long j2) {
        int i2;
        int i3;
        int i4;
        long j3 = 63 & j2;
        ULong.Companion companion = ULong.INSTANCE;
        if (j3 == 0) {
            return ((float) UnsignedKt.a((j2 >>> 40) & 255)) / 255.0f;
        }
        short s = (short) ((j2 >>> 32) & 65535);
        int i5 = Short.MIN_VALUE & s;
        int i6 = ((65535 & s) >>> 10) & 31;
        int i7 = s & 1023;
        if (i6 != 0) {
            int i8 = i7 << 13;
            if (i6 == 31) {
                i2 = 255;
                if (i8 != 0) {
                    i8 |= 4194304;
                }
            } else {
                i2 = i6 + 112;
            }
            int i9 = i2;
            i3 = i8;
            i4 = i9;
        } else {
            if (i7 != 0) {
                float fIntBitsToFloat = Float.intBitsToFloat(i7 + 1056964608) - Float16Kt.f8881a;
                return i5 == 0 ? fIntBitsToFloat : -fIntBitsToFloat;
            }
            i4 = 0;
            i3 = 0;
        }
        return Float.intBitsToFloat((i4 << 23) | (i5 << 16) | i3);
    }

    public static final float h(long j2) {
        int i2;
        int i3;
        int i4;
        long j3 = 63 & j2;
        ULong.Companion companion = ULong.INSTANCE;
        if (j3 == 0) {
            return ((float) UnsignedKt.a((j2 >>> 48) & 255)) / 255.0f;
        }
        short s = (short) ((j2 >>> 48) & 65535);
        int i5 = Short.MIN_VALUE & s;
        int i6 = ((65535 & s) >>> 10) & 31;
        int i7 = s & 1023;
        if (i6 != 0) {
            int i8 = i7 << 13;
            if (i6 == 31) {
                i2 = 255;
                if (i8 != 0) {
                    i8 |= 4194304;
                }
            } else {
                i2 = i6 + 112;
            }
            int i9 = i2;
            i3 = i8;
            i4 = i9;
        } else {
            if (i7 != 0) {
                float fIntBitsToFloat = Float.intBitsToFloat(i7 + 1056964608) - Float16Kt.f8881a;
                return i5 == 0 ? fIntBitsToFloat : -fIntBitsToFloat;
            }
            i4 = 0;
            i3 = 0;
        }
        return Float.intBitsToFloat((i4 << 23) | (i5 << 16) | i3);
    }

    public static String i(long j2) {
        StringBuilder sb = new StringBuilder("Color(");
        sb.append(h(j2));
        sb.append(", ");
        sb.append(g(j2));
        sb.append(", ");
        sb.append(e(j2));
        sb.append(", ");
        sb.append(d(j2));
        sb.append(", ");
        return fc.l(sb, f(j2).f8952a, ')');
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Color) {
            return this.f8872a == ((Color) obj).f8872a;
        }
        return false;
    }

    public final int hashCode() {
        ULong.Companion companion = ULong.INSTANCE;
        return Long.hashCode(this.f8872a);
    }

    public final String toString() {
        return i(this.f8872a);
    }
}
