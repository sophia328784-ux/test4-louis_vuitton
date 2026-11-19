package androidx.media3.container;

import androidx.media3.common.ColorInfo;
import androidx.media3.common.Format;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.math.DoubleMath;
import defpackage.a;
import java.lang.reflect.Array;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public abstract class NalUnitUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f14286a = {0, 0, 0, 1};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float[] f14287b = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f14288c = new Object();
    public static int[] d = new int[10];

    public static final class H265LayerInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14289a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f14290b;

        public H265LayerInfo(int i2, int i3) {
            this.f14289a = i2;
            this.f14290b = i3;
        }
    }

    public static final class H265NalHeader {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14291a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f14292b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f14293c;

        public H265NalHeader(int i2, int i3, int i4) {
            this.f14291a = i2;
            this.f14292b = i3;
            this.f14293c = i4;
        }
    }

    public static final class H265ProfileTierLevel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14294a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f14295b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f14296c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int[] f14297e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f14298f;

        public H265ProfileTierLevel(int i2, boolean z, int i3, int i4, int[] iArr, int i5) {
            this.f14294a = i2;
            this.f14295b = z;
            this.f14296c = i3;
            this.d = i4;
            this.f14297e = iArr;
            this.f14298f = i5;
        }
    }

    public static final class H265ProfileTierLevelsAndIndices {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ImmutableList f14299a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int[] f14300b;

        public H265ProfileTierLevelsAndIndices(List<H265ProfileTierLevel> list, int[] iArr) {
            this.f14299a = ImmutableList.t(list);
            this.f14300b = iArr;
        }
    }

    public static final class H265RepFormat {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14301a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f14302b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f14303c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f14304e;

        public H265RepFormat(int i2, int i3, int i4, int i5, int i6) {
            this.f14301a = i2;
            this.f14302b = i3;
            this.f14303c = i4;
            this.d = i5;
            this.f14304e = i6;
        }
    }

    public static final class H265RepFormatsAndIndices {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ImmutableList f14305a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int[] f14306b;

        public H265RepFormatsAndIndices(List<H265RepFormat> list, int[] iArr) {
            this.f14305a = ImmutableList.t(list);
            this.f14306b = iArr;
        }
    }

    public static final class H265Sei3dRefDisplayInfoData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14307a;

        public H265Sei3dRefDisplayInfoData(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
            this.f14307a = i5;
        }
    }

    public static final class H265SpsData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14308a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final H265ProfileTierLevel f14309b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f14310c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f14311e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f14312f;
        public final int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f14313h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final float f14314i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final int f14315j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final int f14316k;
        public final int l;
        public final int m;

        public H265SpsData(H265NalHeader h265NalHeader, int i2, H265ProfileTierLevel h265ProfileTierLevel, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, float f2, int i11, int i12, int i13, int i14) {
            this.f14308a = i2;
            this.f14309b = h265ProfileTierLevel;
            this.f14310c = i4;
            this.d = i5;
            this.f14311e = i7;
            this.f14312f = i8;
            this.f14314i = f2;
            this.f14315j = i11;
            this.f14316k = i12;
            this.l = i13;
            this.m = i14;
            this.g = i9;
            this.f14313h = i10;
        }
    }

    public static final class H265VideoSignalInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14317a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f14318b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f14319c;

        public H265VideoSignalInfo(int i2, int i3, int i4) {
            this.f14317a = i2;
            this.f14318b = i3;
            this.f14319c = i4;
        }
    }

    public static final class H265VideoSignalInfosAndIndices {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ImmutableList f14320a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int[] f14321b;

        public H265VideoSignalInfosAndIndices(List<H265VideoSignalInfo> list, int[] iArr) {
            this.f14320a = ImmutableList.t(list);
            this.f14321b = iArr;
        }
    }

    public static final class H265VpsData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ImmutableList f14322a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final H265ProfileTierLevelsAndIndices f14323b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final H265RepFormatsAndIndices f14324c;
        public final H265VideoSignalInfosAndIndices d;

        public H265VpsData(H265NalHeader h265NalHeader, List<H265LayerInfo> list, H265ProfileTierLevelsAndIndices h265ProfileTierLevelsAndIndices, H265RepFormatsAndIndices h265RepFormatsAndIndices, H265VideoSignalInfosAndIndices h265VideoSignalInfosAndIndices) {
            this.f14322a = list != null ? ImmutableList.t(list) : ImmutableList.x();
            this.f14323b = h265ProfileTierLevelsAndIndices;
            this.f14324c = h265RepFormatsAndIndices;
            this.d = h265VideoSignalInfosAndIndices;
        }
    }

    public static final class PpsData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14325a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f14326b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f14327c;

        public PpsData(int i2, int i3, boolean z) {
            this.f14325a = i2;
            this.f14326b = i3;
            this.f14327c = z;
        }
    }

    public static final class SpsData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14328a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f14329b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f14330c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f14331e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f14332f;
        public final float g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f14333h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f14334i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final boolean f14335j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final boolean f14336k;
        public final int l;
        public final int m;
        public final int n;
        public final boolean o;
        public final int p;
        public final int q;
        public final int r;
        public final int s;

        public SpsData(int i2, int i3, int i4, int i5, int i6, int i7, int i8, float f2, int i9, int i10, boolean z, boolean z2, int i11, int i12, int i13, boolean z3, int i14, int i15, int i16, int i17) {
            this.f14328a = i2;
            this.f14329b = i3;
            this.f14330c = i4;
            this.d = i5;
            this.f14331e = i7;
            this.f14332f = i8;
            this.g = f2;
            this.f14333h = i9;
            this.f14334i = i10;
            this.f14335j = z;
            this.f14336k = z2;
            this.l = i11;
            this.m = i12;
            this.n = i13;
            this.o = z3;
            this.p = i14;
            this.q = i15;
            this.r = i16;
            this.s = i17;
        }
    }

    public static void a(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    public static int b(byte[] bArr, int i2, int i3, boolean[] zArr) {
        int i4 = i3 - i2;
        Preconditions.q(i4 >= 0);
        if (i4 == 0) {
            return i3;
        }
        if (zArr[0]) {
            a(zArr);
            return i2 - 3;
        }
        if (i4 > 1 && zArr[1] && bArr[i2] == 1) {
            a(zArr);
            return i2 - 2;
        }
        if (i4 > 2 && zArr[2] && bArr[i2] == 0 && bArr[i2 + 1] == 1) {
            a(zArr);
            return i2 - 1;
        }
        int i5 = i3 - 1;
        int i6 = i2 + 2;
        while (i6 < i5) {
            byte b2 = bArr[i6];
            if ((b2 & 254) == 0) {
                int i7 = i6 - 2;
                if (bArr[i7] == 0 && bArr[i6 - 1] == 0 && b2 == 1) {
                    a(zArr);
                    return i7;
                }
                i6 -= 2;
            }
            i6 += 3;
        }
        zArr[0] = i4 <= 2 ? !(i4 != 2 ? !(zArr[1] && bArr[i5] == 1) : !(zArr[2] && bArr[i3 + (-2)] == 0 && bArr[i5] == 1)) : bArr[i3 + (-3)] == 0 && bArr[i3 + (-2)] == 0 && bArr[i5] == 1;
        zArr[1] = i4 <= 1 ? zArr[2] && bArr[i5] == 0 : bArr[i3 + (-2)] == 0 && bArr[i5] == 0;
        zArr[2] = bArr[i5] == 0;
        return i3;
    }

    public static String c(Format format) {
        String str = format.o;
        String str2 = format.f13763k;
        if (Objects.equals(str, "video/dolby-vision") && str2 != null) {
            if (str2.startsWith("dva1") || str2.startsWith("dvav")) {
                return "video/avc";
            }
            if (str2.startsWith("dvh1") || str2.startsWith("dvhe")) {
                return "video/hevc";
            }
        }
        return format.o;
    }

    public static boolean d(byte[] bArr, int i2, Format format) {
        int i3;
        if (Objects.equals(format.o, "video/avc")) {
            byte b2 = bArr[4];
            if (((b2 & 96) >> 5) == 0 && ((i3 = b2 & 31) == 1 || i3 == 9 || i3 == 14)) {
                return false;
            }
        } else if (Objects.equals(format.o, "video/hevc")) {
            H265NalHeader h265NalHeaderF = f(new ParsableNalUnitBitArray(bArr, 4, i2 + 4));
            int i4 = h265NalHeaderF.f14291a;
            if (i4 == 35) {
                return false;
            }
            if (i4 <= 14 && i4 % 2 == 0 && h265NalHeaderF.f14293c == format.F - 1) {
                return false;
            }
        }
        return true;
    }

    public static int e(Format format) {
        String strC = c(format);
        if (Objects.equals(strC, "video/avc")) {
            return 1;
        }
        return (Objects.equals(strC, "video/hevc") || Objects.equals(strC, "video/vvc")) ? 2 : 0;
    }

    public static H265NalHeader f(ParsableNalUnitBitArray parsableNalUnitBitArray) {
        parsableNalUnitBitArray.i();
        return new H265NalHeader(parsableNalUnitBitArray.e(6), parsableNalUnitBitArray.e(6), parsableNalUnitBitArray.e(3) - 1);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x005e  */
    /* JADX WARN: Code duplicated, block: B:23:0x0064  */
    /* JADX WARN: Code duplicated, block: B:26:0x006c  */
    /* JADX WARN: Code duplicated, block: B:30:0x0076  */
    /* JADX WARN: Code duplicated, block: B:39:0x006e A[SYNTHETIC] */
    public static H265ProfileTierLevel g(ParsableNalUnitBitArray parsableNalUnitBitArray, boolean z, int i2, H265ProfileTierLevel h265ProfileTierLevel) {
        int[] iArr;
        int i3;
        boolean z2;
        int i4;
        int i5;
        boolean zD;
        int iE;
        int i6;
        int i7;
        int[] iArr2 = new int[6];
        if (!z) {
            if (h265ProfileTierLevel != null) {
                int i8 = h265ProfileTierLevel.f14294a;
                zD = h265ProfileTierLevel.f14295b;
                iE = h265ProfileTierLevel.f14296c;
                i6 = h265ProfileTierLevel.d;
                iArr2 = h265ProfileTierLevel.f14297e;
                i3 = i8;
            } else {
                iArr = iArr2;
                i3 = 0;
                z2 = false;
                i4 = 0;
                i5 = 0;
            }
            int iE2 = parsableNalUnitBitArray.e(8);
            i7 = 0;
            for (int i9 = 0; i9 < i2; i9++) {
                if (parsableNalUnitBitArray.d()) {
                    i7 += 88;
                }
                if (parsableNalUnitBitArray.d()) {
                    i7 += 8;
                }
            }
            parsableNalUnitBitArray.j(i7);
            if (i2 > 0) {
                parsableNalUnitBitArray.j((8 - i2) * 2);
            }
            return new H265ProfileTierLevel(i3, z2, i4, i5, iArr, iE2);
        }
        int iE3 = parsableNalUnitBitArray.e(2);
        zD = parsableNalUnitBitArray.d();
        iE = parsableNalUnitBitArray.e(5);
        i6 = 0;
        for (int i10 = 0; i10 < 32; i10++) {
            if (parsableNalUnitBitArray.d()) {
                i6 |= 1 << i10;
            }
        }
        for (int i11 = 0; i11 < 6; i11++) {
            iArr2[i11] = parsableNalUnitBitArray.e(8);
        }
        i3 = iE3;
        iArr = iArr2;
        z2 = zD;
        i4 = iE;
        i5 = i6;
        int iE4 = parsableNalUnitBitArray.e(8);
        i7 = 0;
        while (i9 < i2) {
            if (parsableNalUnitBitArray.d()) {
                i7 += 88;
            }
            if (parsableNalUnitBitArray.d()) {
                i7 += 8;
            }
        }
        parsableNalUnitBitArray.j(i7);
        if (i2 > 0) {
            parsableNalUnitBitArray.j((8 - i2) * 2);
        }
        return new H265ProfileTierLevel(i3, z2, i4, i5, iArr, iE4);
    }

    public static H265Sei3dRefDisplayInfoData h(int i2, int i3, byte[] bArr) {
        byte b2;
        int i4 = i2 + 2;
        int i5 = i3 - 1;
        while (true) {
            b2 = bArr[i5];
            if (b2 != 0 || i5 <= i4) {
                break;
            }
            i5--;
        }
        if (b2 == 0 || i5 <= i4) {
            return null;
        }
        ParsableNalUnitBitArray parsableNalUnitBitArray = new ParsableNalUnitBitArray(bArr, i4, i5 + 1);
        while (parsableNalUnitBitArray.b(16)) {
            int iE = parsableNalUnitBitArray.e(8);
            int i6 = 0;
            while (iE == 255) {
                i6 += 255;
                iE = parsableNalUnitBitArray.e(8);
            }
            int i7 = i6 + iE;
            int iE2 = parsableNalUnitBitArray.e(8);
            int i8 = 0;
            while (iE2 == 255) {
                i8 += 255;
                iE2 = parsableNalUnitBitArray.e(8);
            }
            int i9 = i8 + iE2;
            if (i9 == 0 || !parsableNalUnitBitArray.b(i9)) {
                return null;
            }
            if (i7 == 176) {
                int iF = parsableNalUnitBitArray.f();
                boolean zD = parsableNalUnitBitArray.d();
                int iF2 = zD ? parsableNalUnitBitArray.f() : 0;
                int iF3 = parsableNalUnitBitArray.f();
                int iF4 = -1;
                int iF5 = -1;
                int iE3 = -1;
                int iE4 = -1;
                int i10 = -1;
                int iE5 = -1;
                for (int i11 = 0; i11 <= iF3; i11++) {
                    iF4 = parsableNalUnitBitArray.f();
                    iF5 = parsableNalUnitBitArray.f();
                    iE3 = parsableNalUnitBitArray.e(6);
                    if (iE3 == 63) {
                        return null;
                    }
                    iE4 = parsableNalUnitBitArray.e(iE3 == 0 ? Math.max(0, iF - 30) : Math.max(0, (iE3 + iF) - 31));
                    if (zD) {
                        int iE6 = parsableNalUnitBitArray.e(6);
                        if (iE6 == 63) {
                            return null;
                        }
                        i10 = iE6;
                        iE5 = parsableNalUnitBitArray.e(iE6 == 0 ? Math.max(0, iF2 - 30) : Math.max(0, (iE6 + iF2) - 31));
                    }
                    if (parsableNalUnitBitArray.d()) {
                        parsableNalUnitBitArray.j(10);
                    }
                }
                return new H265Sei3dRefDisplayInfoData(iF, iF2, iF3 + 1, iF4, iF5, iE3, iE4, i10, iE5);
            }
            parsableNalUnitBitArray.j(i9 * 8);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0048  */
    /* JADX WARN: Code duplicated, block: B:207:0x03c7  */
    /* JADX WARN: Code duplicated, block: B:37:0x00ad  */
    /* JADX WARN: Multi-variable type inference failed */
    public static H265SpsData i(byte[] bArr, int i2, int i3, H265VpsData h265VpsData) {
        int i4;
        int iF;
        int i5;
        int i6;
        int i7;
        int iF2;
        int i8;
        int i9;
        int i10;
        int iF3;
        int iMax;
        int i11;
        int i12;
        int i13;
        int iF4;
        int iG;
        int i14;
        H265VideoSignalInfosAndIndices h265VideoSignalInfosAndIndices;
        int iF5;
        H265RepFormatsAndIndices h265RepFormatsAndIndices;
        H265NalHeader h265NalHeaderF = f(new ParsableNalUnitBitArray(bArr, i2, i3));
        ParsableNalUnitBitArray parsableNalUnitBitArray = new ParsableNalUnitBitArray(bArr, i2 + 2, i3);
        parsableNalUnitBitArray.j(4);
        int iE = parsableNalUnitBitArray.e(3);
        int i15 = h265NalHeaderF.f14292b;
        int i16 = 1;
        boolean z = i15 != 0 && iE == 7;
        if (h265VpsData != null) {
            ImmutableList immutableList = h265VpsData.f14322a;
            if (immutableList.isEmpty()) {
                i4 = 0;
            } else {
                i4 = ((H265LayerInfo) immutableList.get(Math.min(i15, immutableList.size() - 1))).f14289a;
            }
        } else {
            i4 = 0;
        }
        H265ProfileTierLevel h265ProfileTierLevelG = null;
        if (!z) {
            parsableNalUnitBitArray.i();
            h265ProfileTierLevelG = g(parsableNalUnitBitArray, true, iE, null);
        } else if (h265VpsData != null) {
            H265ProfileTierLevelsAndIndices h265ProfileTierLevelsAndIndices = h265VpsData.f14323b;
            int[] iArr = h265ProfileTierLevelsAndIndices.f14300b;
            ImmutableList immutableList2 = h265ProfileTierLevelsAndIndices.f14299a;
            int i17 = iArr[i4];
            if (immutableList2.size() > i17) {
                h265ProfileTierLevelG = (H265ProfileTierLevel) immutableList2.get(i17);
            }
        }
        int iF6 = parsableNalUnitBitArray.f();
        if (z) {
            int iE2 = parsableNalUnitBitArray.d() ? parsableNalUnitBitArray.e(8) : -1;
            if (h265VpsData == null || (h265RepFormatsAndIndices = h265VpsData.f14324c) == null) {
                iF2 = 0;
                iF3 = 0;
                iF = 0;
                i10 = 0;
                i7 = 0;
                i9 = 0;
                i8 = 0;
            } else {
                ImmutableList immutableList3 = h265RepFormatsAndIndices.f14305a;
                if (iE2 == -1) {
                    iE2 = h265RepFormatsAndIndices.f14306b[i4];
                }
                if (iE2 == -1 || immutableList3.size() <= iE2) {
                    iF2 = 0;
                    iF3 = 0;
                    iF = 0;
                    i10 = 0;
                    i7 = 0;
                    i9 = 0;
                    i8 = 0;
                } else {
                    H265RepFormat h265RepFormat = (H265RepFormat) immutableList3.get(iE2);
                    iF = h265RepFormat.f14301a;
                    i7 = h265RepFormat.d;
                    i10 = h265RepFormat.f14304e;
                    iF2 = h265RepFormat.f14302b;
                    iF3 = h265RepFormat.f14303c;
                    i9 = i10;
                    i8 = i7;
                }
            }
        } else {
            iF = parsableNalUnitBitArray.f();
            if (iF == 3) {
                parsableNalUnitBitArray.i();
            }
            int iF7 = parsableNalUnitBitArray.f();
            int iF8 = parsableNalUnitBitArray.f();
            if (parsableNalUnitBitArray.d()) {
                int iF9 = parsableNalUnitBitArray.f();
                int iF10 = parsableNalUnitBitArray.f();
                int iF11 = parsableNalUnitBitArray.f();
                int iF12 = parsableNalUnitBitArray.f();
                i6 = iF7 - ((iF9 + iF10) * ((iF == 1 || iF == 2) ? 2 : 1));
                i5 = iF8 - ((iF11 + iF12) * (iF == 1 ? 2 : 1));
            } else {
                i5 = iF8;
                i6 = iF7;
            }
            i7 = i6;
            iF2 = parsableNalUnitBitArray.f();
            i8 = iF7;
            i9 = iF8;
            i10 = i5;
            iF3 = parsableNalUnitBitArray.f();
        }
        int i18 = 4;
        int iF13 = parsableNalUnitBitArray.f();
        if (z) {
            iMax = -1;
        } else {
            int i19 = parsableNalUnitBitArray.d() ? 0 : iE;
            iMax = -1;
            while (i19 <= iE) {
                parsableNalUnitBitArray.f();
                iMax = Math.max(parsableNalUnitBitArray.f(), iMax);
                parsableNalUnitBitArray.f();
                i19++;
                i16 = i16;
            }
        }
        int i20 = i16;
        parsableNalUnitBitArray.f();
        parsableNalUnitBitArray.f();
        parsableNalUnitBitArray.f();
        parsableNalUnitBitArray.f();
        parsableNalUnitBitArray.f();
        parsableNalUnitBitArray.f();
        if (parsableNalUnitBitArray.d()) {
            int i21 = 6;
            if (z ? parsableNalUnitBitArray.d() : false) {
                parsableNalUnitBitArray.j(6);
            } else if (parsableNalUnitBitArray.d()) {
                int i22 = 0;
                while (true) {
                    int i23 = i18;
                    if (i22 >= i23) {
                        break;
                    }
                    i18 = i23;
                    int i24 = 0;
                    while (i24 < i21) {
                        if (parsableNalUnitBitArray.d()) {
                            int iMin = Math.min(64, i20 << ((i22 << 1) + 4));
                            if (i22 > i20) {
                                parsableNalUnitBitArray.g();
                            }
                            for (int i25 = 0; i25 < iMin; i25++) {
                                parsableNalUnitBitArray.g();
                            }
                        } else {
                            parsableNalUnitBitArray.f();
                        }
                        i24 += i22 == 3 ? 3 : 1;
                        iF2 = iF2;
                        i21 = 6;
                        i20 = 1;
                    }
                    i22++;
                    i21 = 6;
                    i20 = 1;
                }
            }
        }
        int i26 = iF2;
        parsableNalUnitBitArray.j(2);
        if (parsableNalUnitBitArray.d()) {
            parsableNalUnitBitArray.j(8);
            parsableNalUnitBitArray.f();
            parsableNalUnitBitArray.f();
            parsableNalUnitBitArray.i();
        }
        int iF14 = parsableNalUnitBitArray.f();
        int i27 = 0;
        int[] iArr2 = new int[0];
        int[] iArrCopyOf = new int[0];
        int i28 = iMax;
        int i29 = i4;
        int i30 = -1;
        int i31 = -1;
        while (i27 < iF14) {
            if (i27 == 0 || !parsableNalUnitBitArray.d()) {
                iF5 = parsableNalUnitBitArray.f();
                int iF15 = parsableNalUnitBitArray.f();
                int[] iArr3 = new int[iF5];
                int i32 = 0;
                while (i32 < iF5) {
                    iArr3[i32] = (i32 > 0 ? iArr3[i32 - 1] : 0) - (parsableNalUnitBitArray.f() + 1);
                    parsableNalUnitBitArray.i();
                    i32++;
                }
                int[] iArr4 = new int[iF15];
                int i33 = 0;
                while (i33 < iF15) {
                    iArr4[i33] = parsableNalUnitBitArray.f() + 1 + (i33 > 0 ? iArr4[i33 - 1] : 0);
                    parsableNalUnitBitArray.i();
                    i33++;
                }
                iArr2 = iArr3;
                iArrCopyOf = iArr4;
                i31 = iF15;
            } else {
                int i34 = i30 + i31;
                int iF16 = (1 - ((parsableNalUnitBitArray.d() ? 1 : 0) * 2)) * (parsableNalUnitBitArray.f() + 1);
                int i35 = i34 + 1;
                boolean[] zArr = new boolean[i35];
                for (int i36 = 0; i36 <= i34; i36++) {
                    if (parsableNalUnitBitArray.d()) {
                        zArr[i36] = true;
                    } else {
                        zArr[i36] = parsableNalUnitBitArray.d();
                    }
                }
                int[] iArr5 = new int[i35];
                int[] iArr6 = new int[i35];
                int i37 = 0;
                for (int i38 = i31 - 1; i38 >= 0; i38--) {
                    int i39 = iArrCopyOf[i38] + iF16;
                    if (i39 < 0 && zArr[i30 + i38]) {
                        iArr5[i37] = i39;
                        i37++;
                    }
                }
                if (iF16 < 0 && zArr[i34]) {
                    iArr5[i37] = iF16;
                    i37++;
                }
                iF5 = i37;
                for (int i40 = 0; i40 < i30; i40++) {
                    int i41 = iArr2[i40] + iF16;
                    if (i41 < 0 && zArr[i40]) {
                        iArr5[iF5] = i41;
                        iF5++;
                    }
                }
                int[] iArrCopyOf2 = Arrays.copyOf(iArr5, iF5);
                int i42 = 0;
                for (int i43 = i30 - 1; i43 >= 0; i43--) {
                    int i44 = iArr2[i43] + iF16;
                    if (i44 > 0 && zArr[i43]) {
                        iArr6[i42] = i44;
                        i42++;
                    }
                }
                if (iF16 > 0 && zArr[i34]) {
                    iArr6[i42] = iF16;
                    i42++;
                }
                int i45 = i42;
                for (int i46 = 0; i46 < i31; i46++) {
                    int i47 = iArrCopyOf[i46] + iF16;
                    if (i47 > 0 && zArr[i30 + i46]) {
                        iArr6[i45] = i47;
                        i45++;
                    }
                }
                iArrCopyOf = Arrays.copyOf(iArr6, i45);
                iArr2 = iArrCopyOf2;
                i31 = i45;
            }
            i30 = iF5;
            i27++;
            iF14 = iF14;
            h265NalHeaderF = h265NalHeaderF;
            iE = iE;
        }
        H265NalHeader h265NalHeader = h265NalHeaderF;
        int i48 = iE;
        if (parsableNalUnitBitArray.d()) {
            int iF17 = parsableNalUnitBitArray.f();
            for (int i49 = 0; i49 < iF17; i49++) {
                parsableNalUnitBitArray.j(iF13 + 5);
            }
        }
        parsableNalUnitBitArray.j(2);
        float f2 = 1.0f;
        if (parsableNalUnitBitArray.d()) {
            if (parsableNalUnitBitArray.d()) {
                int iE3 = parsableNalUnitBitArray.e(8);
                if (iE3 == 255) {
                    int iE4 = parsableNalUnitBitArray.e(16);
                    int iE5 = parsableNalUnitBitArray.e(16);
                    if (iE4 != 0 && iE5 != 0) {
                        f2 = iE4 / iE5;
                    }
                } else if (iE3 < 17) {
                    f2 = f14287b[iE3];
                } else {
                    a.u(iE3, "Unexpected aspect_ratio_idc value: ");
                }
            }
            if (parsableNalUnitBitArray.d()) {
                parsableNalUnitBitArray.i();
            }
            if (parsableNalUnitBitArray.d()) {
                parsableNalUnitBitArray.j(3);
                i14 = parsableNalUnitBitArray.d() ? 1 : 2;
                if (parsableNalUnitBitArray.d()) {
                    int iE6 = parsableNalUnitBitArray.e(8);
                    int iE7 = parsableNalUnitBitArray.e(8);
                    parsableNalUnitBitArray.j(8);
                    iF4 = ColorInfo.f(iE6);
                    iG = ColorInfo.g(iE7);
                } else {
                    iF4 = -1;
                    iG = -1;
                }
            } else if (h265VpsData == null || (h265VideoSignalInfosAndIndices = h265VpsData.d) == null) {
                iF4 = -1;
                iG = -1;
                i14 = -1;
            } else {
                ImmutableList immutableList4 = h265VideoSignalInfosAndIndices.f14320a;
                int i50 = h265VideoSignalInfosAndIndices.f14321b[i29];
                if (immutableList4.size() > i50) {
                    H265VideoSignalInfo h265VideoSignalInfo = (H265VideoSignalInfo) immutableList4.get(i50);
                    int i51 = h265VideoSignalInfo.f14317a;
                    int i52 = h265VideoSignalInfo.f14318b;
                    iG = h265VideoSignalInfo.f14319c;
                    iF4 = i51;
                    i14 = i52;
                } else {
                    iF4 = -1;
                    iG = -1;
                    i14 = -1;
                }
            }
            if (parsableNalUnitBitArray.d()) {
                parsableNalUnitBitArray.f();
                parsableNalUnitBitArray.f();
            }
            parsableNalUnitBitArray.i();
            if (parsableNalUnitBitArray.d()) {
                i10 *= 2;
            }
            i11 = iF4;
            i13 = iG;
            i12 = i14;
        } else {
            i11 = -1;
            i12 = -1;
            i13 = -1;
        }
        return new H265SpsData(h265NalHeader, i48, h265ProfileTierLevelG, iF, i26, iF3, iF6, i7, i10, i8, i9, f2, i28, i11, i12, i13);
    }

    /* JADX WARN: Code duplicated, block: B:477:0x0163 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x0120  */
    /* JADX WARN: Code duplicated, block: B:64:0x0126  */
    /* JADX WARN: Code duplicated, block: B:66:0x012c  */
    /* JADX WARN: Code duplicated, block: B:67:0x0132  */
    /* JADX WARN: Code duplicated, block: B:69:0x0138  */
    /* JADX WARN: Code duplicated, block: B:71:0x0145  */
    /* JADX WARN: Code duplicated, block: B:74:0x0150  */
    /* JADX WARN: Code duplicated, block: B:76:0x0155  */
    /* JADX WARN: Code duplicated, block: B:78:0x015d  */
    /* JADX WARN: Multi-variable type inference failed */
    public static H265VpsData j(int i2, int i3, byte[] bArr) {
        int[] iArr;
        int i4;
        H265VideoSignalInfosAndIndices h265VideoSignalInfosAndIndices;
        int iE;
        int iE2;
        int iE3;
        int i5;
        int i6;
        int i7;
        boolean[][] zArr;
        int i8;
        int[] iArr2;
        int[] iArr3;
        boolean[][] zArr2;
        int i9;
        boolean zD;
        int i10;
        int i11;
        int i12;
        boolean zD2;
        boolean zD3;
        int iF;
        int i13;
        int i14;
        int i15;
        boolean z;
        boolean z2;
        ParsableNalUnitBitArray parsableNalUnitBitArray = new ParsableNalUnitBitArray(bArr, i2, i3);
        H265NalHeader h265NalHeaderF = f(parsableNalUnitBitArray);
        parsableNalUnitBitArray.j(4);
        boolean zD4 = parsableNalUnitBitArray.d();
        boolean zD5 = parsableNalUnitBitArray.d();
        int iE4 = parsableNalUnitBitArray.e(6);
        int i16 = iE4 + 1;
        int iE5 = parsableNalUnitBitArray.e(3);
        parsableNalUnitBitArray.j(17);
        H265ProfileTierLevel h265ProfileTierLevelG = g(parsableNalUnitBitArray, true, iE5, null);
        for (int i17 = parsableNalUnitBitArray.d() ? 0 : iE5; i17 <= iE5; i17++) {
            parsableNalUnitBitArray.f();
            parsableNalUnitBitArray.f();
            parsableNalUnitBitArray.f();
        }
        int iE6 = parsableNalUnitBitArray.e(6);
        int iF2 = parsableNalUnitBitArray.f() + 1;
        int i18 = 6;
        H265ProfileTierLevelsAndIndices h265ProfileTierLevelsAndIndices = new H265ProfileTierLevelsAndIndices(ImmutableList.A(h265ProfileTierLevelG), new int[1]);
        boolean z3 = i16 >= 2 && iF2 >= 2;
        boolean z4 = zD4 && zD5;
        int i19 = 1;
        int i20 = iE6 + 1;
        boolean z5 = i20 >= i16;
        if (!z3 || !z4 || !z5) {
            return new H265VpsData(h265NalHeaderF, null, h265ProfileTierLevelsAndIndices, null, null);
        }
        Class cls = Integer.TYPE;
        int[][] iArr4 = (int[][]) Array.newInstance((Class<?>) cls, iF2, i20);
        int[] iArr5 = new int[iF2];
        int[] iArr6 = new int[iF2];
        iArr4[0][0] = 0;
        iArr5[0] = 1;
        iArr6[0] = 0;
        for (int i21 = 1; i21 < iF2; i21++) {
            int i22 = 0;
            for (int i23 = 0; i23 <= iE6; i23++) {
                if (parsableNalUnitBitArray.d()) {
                    iArr4[i21][i22] = i23;
                    iArr6[i21] = i23;
                    i22++;
                }
                iArr5[i21] = i22;
            }
        }
        if (parsableNalUnitBitArray.d()) {
            parsableNalUnitBitArray.j(64);
            if (parsableNalUnitBitArray.d()) {
                parsableNalUnitBitArray.f();
            }
            int iF3 = parsableNalUnitBitArray.f();
            int i24 = 0;
            while (i24 < iF3) {
                parsableNalUnitBitArray.f();
                if (i24 == 0 || parsableNalUnitBitArray.d()) {
                    boolean zD6 = parsableNalUnitBitArray.d();
                    boolean zD7 = parsableNalUnitBitArray.d();
                    if (zD6 || zD7) {
                        zD = parsableNalUnitBitArray.d();
                        iF3 = iF3;
                        if (zD) {
                            parsableNalUnitBitArray.j(19);
                        }
                        parsableNalUnitBitArray.j(8);
                        if (zD) {
                            parsableNalUnitBitArray.j(4);
                        }
                        parsableNalUnitBitArray.j(15);
                        i11 = zD6;
                        i10 = zD7;
                    } else {
                        z2 = zD6;
                        z = zD7;
                    }
                    i12 = 0;
                    while (i12 <= iE5) {
                        zD2 = parsableNalUnitBitArray.d();
                        if (!zD2) {
                            zD2 = parsableNalUnitBitArray.d();
                        }
                        if (zD2) {
                            parsableNalUnitBitArray.f();
                            zD3 = false;
                        } else {
                            zD3 = parsableNalUnitBitArray.d();
                        }
                        if (zD3) {
                            iF = 0;
                        } else {
                            iF = parsableNalUnitBitArray.f();
                        }
                        H265NalHeader h265NalHeader = h265NalHeaderF;
                        i13 = i11 + i10;
                        int[][] iArr7 = iArr4;
                        i14 = 0;
                        while (i14 < i13) {
                            int i25 = i13;
                            for (i15 = 0; i15 <= iF; i15++) {
                                parsableNalUnitBitArray.f();
                                parsableNalUnitBitArray.f();
                                if (zD) {
                                    parsableNalUnitBitArray.f();
                                    parsableNalUnitBitArray.f();
                                }
                                parsableNalUnitBitArray.i();
                            }
                            i14++;
                            i13 = i25;
                        }
                        i12++;
                        h265NalHeaderF = h265NalHeader;
                        iArr4 = iArr7;
                    }
                    i24++;
                    iF3 = iF3;
                } else {
                    z2 = false;
                    z = false;
                }
                zD = false;
                i11 = z2;
                i10 = z;
                i12 = 0;
                while (i12 <= iE5) {
                    zD2 = parsableNalUnitBitArray.d();
                    if (!zD2) {
                        zD2 = parsableNalUnitBitArray.d();
                    }
                    if (zD2) {
                        parsableNalUnitBitArray.f();
                        zD3 = false;
                    } else {
                        zD3 = parsableNalUnitBitArray.d();
                    }
                    if (zD3) {
                        iF = parsableNalUnitBitArray.f();
                    } else {
                        iF = 0;
                    }
                    H265NalHeader h265NalHeader2 = h265NalHeaderF;
                    i13 = i11 + i10;
                    int[][] iArr8 = iArr4;
                    i14 = 0;
                    while (i14 < i13) {
                        int i26 = i13;
                        while (i15 <= iF) {
                            parsableNalUnitBitArray.f();
                            parsableNalUnitBitArray.f();
                            if (zD) {
                                parsableNalUnitBitArray.f();
                                parsableNalUnitBitArray.f();
                            }
                            parsableNalUnitBitArray.i();
                        }
                        i14++;
                        i13 = i26;
                    }
                    i12++;
                    h265NalHeaderF = h265NalHeader2;
                    iArr4 = iArr8;
                }
                i24++;
                iF3 = iF3;
            }
        }
        H265NalHeader h265NalHeader3 = h265NalHeaderF;
        int[][] iArr9 = iArr4;
        if (!parsableNalUnitBitArray.d()) {
            return new H265VpsData(h265NalHeader3, null, h265ProfileTierLevelsAndIndices, null, null);
        }
        int i27 = parsableNalUnitBitArray.f14352e;
        if (i27 > 0) {
            parsableNalUnitBitArray.j(8 - i27);
        }
        H265ProfileTierLevel h265ProfileTierLevelG2 = g(parsableNalUnitBitArray, false, iE5, h265ProfileTierLevelG);
        boolean zD8 = parsableNalUnitBitArray.d();
        boolean[] zArr3 = new boolean[16];
        H265NalHeader h265NalHeader4 = h265NalHeader3;
        int i28 = 0;
        for (int i29 = 0; i29 < 16; i29++) {
            boolean zD9 = parsableNalUnitBitArray.d();
            zArr3[i29] = zD9;
            if (zD9) {
                i28++;
            }
        }
        if (i28 == 0 || !zArr3[1]) {
            return new H265VpsData(h265NalHeader4, null, h265ProfileTierLevelsAndIndices, null, null);
        }
        int[] iArr10 = new int[i28];
        for (int i30 = 0; i30 < i28 - (zD8 ? 1 : 0); i30++) {
            iArr10[i30] = parsableNalUnitBitArray.e(3);
        }
        int[] iArr11 = new int[i28 + 1];
        if (zD8) {
            int i31 = 1;
            while (i31 < i28) {
                int[] iArr12 = iArr11;
                for (int i32 = 0; i32 < i31; i32++) {
                    iArr12[i31] = iArr10[i32] + 1 + iArr12[i31];
                }
                i31++;
                iArr11 = iArr12;
            }
            iArr = iArr11;
            iArr[i28] = 6;
        } else {
            iArr = iArr11;
        }
        int[][] iArr13 = (int[][]) Array.newInstance((Class<?>) cls, i16, i28);
        int[] iArr14 = new int[i16];
        iArr14[0] = 0;
        boolean zD10 = parsableNalUnitBitArray.d();
        int i33 = 1;
        while (i33 < i16) {
            if (zD10) {
                i9 = i33;
                iArr14[i9] = parsableNalUnitBitArray.e(i18);
            } else {
                i9 = i33;
                iArr14[i9] = i9;
            }
            if (zD8) {
                int i34 = 0;
                while (i34 < i28) {
                    int i35 = i34 + 1;
                    iArr13[i9][i34] = (iArr14[i9] & ((1 << iArr[i35]) - 1)) >> iArr[i34];
                    i34 = i35;
                }
            } else {
                int i36 = 0;
                while (i36 < i28) {
                    int i37 = i36;
                    iArr13[i9][i37] = parsableNalUnitBitArray.e(iArr10[i36] + 1);
                    i36 = i37 + 1;
                }
            }
            i33 = i9 + 1;
            i18 = 6;
        }
        int[] iArr15 = new int[i20];
        int i38 = 1;
        int i39 = 0;
        while (i39 < i16) {
            iArr15[iArr14[i39]] = -1;
            H265ProfileTierLevelsAndIndices h265ProfileTierLevelsAndIndices2 = h265ProfileTierLevelsAndIndices;
            int i40 = 0;
            int i41 = 0;
            while (i40 < 16) {
                if (zArr3[i40]) {
                    if (i40 == i19) {
                        iArr15[iArr14[i39]] = iArr13[i39][i41];
                    }
                    i41++;
                }
                i40++;
                i19 = 1;
            }
            if (i39 > 0) {
                int i42 = 0;
                while (true) {
                    if (i42 >= i39) {
                        i38++;
                        break;
                    }
                    int i43 = i42;
                    if (iArr15[iArr14[i39]] == iArr15[iArr14[i42]]) {
                        break;
                    }
                    i42 = i43 + 1;
                }
            }
            i39++;
            h265ProfileTierLevelsAndIndices = h265ProfileTierLevelsAndIndices2;
            i19 = 1;
        }
        H265ProfileTierLevelsAndIndices h265ProfileTierLevelsAndIndices3 = h265ProfileTierLevelsAndIndices;
        int iE7 = parsableNalUnitBitArray.e(4);
        if (i38 < 2 || iE7 == 0) {
            return new H265VpsData(h265NalHeader4, null, h265ProfileTierLevelsAndIndices3, null, null);
        }
        int[] iArr16 = new int[i38];
        for (int i44 = 0; i44 < i38; i44++) {
            iArr16[i44] = parsableNalUnitBitArray.e(iE7);
        }
        int[] iArr17 = new int[i20];
        int i45 = 0;
        while (i45 < i16) {
            int[] iArr18 = iArr17;
            iArr18[Math.min(iArr14[i45], iE6)] = i45;
            i45++;
            iArr17 = iArr18;
        }
        int[] iArr19 = iArr17;
        ImmutableList.Builder builder = new ImmutableList.Builder();
        int i46 = 0;
        while (i46 <= iE6) {
            int i47 = i38;
            int[] iArr20 = iArr16;
            int iMin = Math.min(iArr15[i46], i47 - 1);
            builder.e(new H265LayerInfo(iArr19[i46], iMin >= 0 ? iArr20[iMin] : -1));
            i46++;
            i38 = i47;
            iArr5 = iArr5;
            iArr16 = iArr20;
        }
        int[] iArr21 = iArr5;
        ImmutableList immutableListJ = builder.j();
        if (((H265LayerInfo) immutableListJ.get(0)).f14290b == -1) {
            return new H265VpsData(h265NalHeader4, null, h265ProfileTierLevelsAndIndices3, null, null);
        }
        int i48 = 1;
        while (true) {
            H265NalHeader h265NalHeader5 = h265NalHeader4;
            if (i48 > iE6) {
                h265NalHeader4 = h265NalHeader5;
                i4 = -1;
                i48 = -1;
                break;
            }
            h265NalHeader4 = h265NalHeader5;
            i4 = -1;
            if (((H265LayerInfo) immutableListJ.get(i48)).f14290b != -1) {
                break;
            }
            i48++;
        }
        if (i48 == i4) {
            return new H265VpsData(h265NalHeader4, null, h265ProfileTierLevelsAndIndices3, null, null);
        }
        Class cls2 = Boolean.TYPE;
        boolean[][] zArr4 = (boolean[][]) Array.newInstance((Class<?>) cls2, i16, i16);
        boolean[][] zArr5 = (boolean[][]) Array.newInstance((Class<?>) cls2, i16, i16);
        int i49 = 1;
        while (i49 < i16) {
            boolean[][] zArr6 = zArr5;
            for (int i50 = 0; i50 < i49; i50++) {
                boolean[] zArr7 = zArr4[i49];
                boolean[] zArr8 = zArr6[i49];
                boolean zD11 = parsableNalUnitBitArray.d();
                zArr8[i50] = zD11;
                zArr7[i50] = zD11;
            }
            i49++;
            zArr5 = zArr6;
        }
        boolean[][] zArr9 = zArr5;
        for (int i51 = 1; i51 < i16; i51++) {
            int i52 = 0;
            while (i52 < iE4) {
                int i53 = i52;
                for (int i54 = 0; i54 < i51; i54++) {
                    boolean[] zArr10 = zArr9[i51];
                    if (zArr10[i54] && zArr9[i54][i53]) {
                        zArr10[i53] = true;
                        break;
                    }
                }
                i52 = i53 + 1;
            }
        }
        int[] iArr22 = new int[i20];
        int i55 = 0;
        while (i55 < i16) {
            int[] iArr23 = iArr22;
            int i56 = 0;
            for (int i57 = 0; i57 < i55; i57++) {
                i56 += zArr4[i55][i57] ? 1 : 0;
            }
            iArr23[iArr14[i55]] = i56;
            i55++;
            iArr22 = iArr23;
        }
        int[] iArr24 = iArr22;
        int i58 = 0;
        for (int i59 = 0; i59 < i16; i59++) {
            if (iArr24[iArr14[i59]] == 0) {
                i58++;
            }
        }
        if (i58 > 1) {
            return new H265VpsData(h265NalHeader4, null, h265ProfileTierLevelsAndIndices3, null, null);
        }
        int[] iArr25 = new int[i16];
        int[] iArr26 = new int[iF2];
        if (parsableNalUnitBitArray.d()) {
            int i60 = 0;
            while (i60 < i16) {
                int i61 = i60;
                iArr25[i61] = parsableNalUnitBitArray.e(3);
                i60 = i61 + 1;
            }
        } else {
            Arrays.fill(iArr25, 0, i16, iE5);
        }
        int i62 = 0;
        while (i62 < iF2) {
            int[] iArr27 = iArr25;
            int i63 = i62;
            int[] iArr28 = iArr6;
            int iMax = 0;
            for (int i64 = 0; i64 < iArr21[i63]; i64++) {
                iMax = Math.max(iMax, iArr27[((H265LayerInfo) immutableListJ.get(iArr9[i63][i64])).f14289a]);
            }
            iArr26[i63] = iMax + 1;
            i62 = i63 + 1;
            iArr25 = iArr27;
            iArr6 = iArr28;
        }
        int[] iArr29 = iArr6;
        if (parsableNalUnitBitArray.d()) {
            int i65 = 0;
            while (i65 < iE4) {
                int i66 = i65 + 1;
                int i67 = i66;
                while (i67 < i16) {
                    if (zArr4[i67][i65]) {
                        parsableNalUnitBitArray.j(3);
                    }
                    i67++;
                    i65 = i65;
                }
                i65 = i66;
            }
        }
        parsableNalUnitBitArray.i();
        int iF4 = parsableNalUnitBitArray.f() + 1;
        ImmutableList.Builder builder2 = new ImmutableList.Builder();
        builder2.e(h265ProfileTierLevelG);
        if (iF4 > 1) {
            builder2.e(h265ProfileTierLevelG2);
            for (int i68 = 2; i68 < iF4; i68++) {
                h265ProfileTierLevelG2 = g(parsableNalUnitBitArray, parsableNalUnitBitArray.d(), iE5, h265ProfileTierLevelG2);
                builder2.e(h265ProfileTierLevelG2);
            }
        }
        ImmutableList immutableListJ2 = builder2.j();
        int iF5 = parsableNalUnitBitArray.f() + iF2;
        if (iF5 > iF2) {
            return new H265VpsData(h265NalHeader4, null, h265ProfileTierLevelsAndIndices3, null, null);
        }
        int iE8 = parsableNalUnitBitArray.e(2);
        boolean[][] zArr11 = (boolean[][]) Array.newInstance((Class<?>) cls2, iF5, i20);
        int i69 = 0;
        int[] iArr30 = new int[iF5];
        int[] iArr31 = new int[iF5];
        int i70 = 0;
        while (i70 < iF2) {
            iArr30[i70] = i69;
            iArr31[i70] = iArr29[i70];
            if (iE8 == 0) {
                i8 = i70;
                iArr2 = iArr30;
                iArr3 = iArr14;
                zArr2 = zArr11;
                Arrays.fill(zArr11[i8], i69, iArr21[i8], true);
                iArr2[i8] = iArr21[i8];
            } else {
                i8 = i70;
                iArr2 = iArr30;
                iArr3 = iArr14;
                zArr2 = zArr11;
                if (iE8 == 1) {
                    int i71 = iArr29[i8];
                    for (int i72 = 0; i72 < iArr21[i8]; i72++) {
                        zArr2[i8][i72] = iArr9[i8][i72] == i71;
                    }
                    iArr2[i8] = 1;
                } else {
                    i69 = 0;
                    zArr2[0][0] = true;
                    iArr2[0] = 1;
                }
                i70 = i8 + 1;
                iArr30 = iArr2;
                iArr14 = iArr3;
                zArr11 = zArr2;
            }
            i69 = 0;
            i70 = i8 + 1;
            iArr30 = iArr2;
            iArr14 = iArr3;
            zArr11 = zArr2;
        }
        int[] iArr32 = iArr30;
        int[] iArr33 = iArr14;
        boolean[][] zArr12 = zArr11;
        int[] iArr34 = new int[i20];
        int i73 = 2;
        int[] iArr35 = new int[2];
        iArr35[1] = i20;
        iArr35[i69] = iF5;
        boolean[][] zArr13 = (boolean[][]) Array.newInstance((Class<?>) cls2, iArr35);
        int i74 = 1;
        int i75 = 0;
        while (i74 < iF5) {
            if (iE8 == i73) {
                for (int i76 = 0; i76 < iArr21[i74]; i76++) {
                    zArr12[i74][i76] = parsableNalUnitBitArray.d();
                    int i77 = iArr32[i74];
                    boolean z6 = zArr12[i74][i76];
                    iArr32[i74] = i77 + (z6 ? 1 : 0);
                    if (z6) {
                        iArr31[i74] = iArr9[i74][i76];
                    }
                }
            }
            if (i75 == 0) {
                i5 = 0;
                if (iArr9[i74][0] == 0 && zArr12[i74][0]) {
                    for (int i78 = 1; i78 < iArr21[i74]; i78++) {
                        if (iArr9[i74][i78] == i48 && zArr12[i74][i48]) {
                            i75 = i74;
                        }
                    }
                }
            } else {
                i5 = 0;
            }
            int i79 = i5;
            while (i79 < iArr21[i74]) {
                if (iF4 > 1) {
                    zArr13[i74][i79] = zArr12[i74][i79];
                    i7 = iE8;
                    zArr = zArr13;
                    RoundingMode roundingMode = RoundingMode.CEILING;
                    int iC = DoubleMath.c(iF4);
                    if (zArr[i74][i79]) {
                        i6 = iF4;
                    } else {
                        int i80 = ((H265LayerInfo) immutableListJ.get(iArr9[i74][i79])).f14289a;
                        i6 = iF4;
                        int i81 = i5;
                        while (i81 < i79) {
                            int i82 = i81;
                            if (zArr9[i80][((H265LayerInfo) immutableListJ.get(iArr9[i74][i82])).f14289a]) {
                                zArr[i74][i79] = true;
                                break;
                            }
                            i81 = i82 + 1;
                        }
                    }
                    if (zArr[i74][i79]) {
                        if (i75 <= 0 || i74 != i75) {
                            parsableNalUnitBitArray.j(iC);
                        } else {
                            iArr34[i79] = parsableNalUnitBitArray.e(iC);
                        }
                    }
                } else {
                    i6 = iF4;
                    i7 = iE8;
                    zArr = zArr13;
                }
                i79++;
                iE8 = i7;
                zArr13 = zArr;
                iF4 = i6;
            }
            int i83 = iF4;
            int i84 = iE8;
            boolean[][] zArr14 = zArr13;
            if (iArr32[i74] == 1 && iArr24[iArr31[i74]] > 0) {
                parsableNalUnitBitArray.i();
            }
            i74++;
            iE8 = i84;
            zArr13 = zArr14;
            iF4 = i83;
            i73 = 2;
        }
        boolean[][] zArr15 = zArr13;
        if (i75 == 0) {
            return new H265VpsData(h265NalHeader4, null, h265ProfileTierLevelsAndIndices3, null, null);
        }
        H265NalHeader h265NalHeader6 = h265NalHeader4;
        int iF6 = parsableNalUnitBitArray.f();
        int i85 = iF6 + 1;
        ImmutableList.Builder builderR = ImmutableList.r(i85);
        int[] iArr36 = new int[i16];
        int i86 = 0;
        while (i86 < i85) {
            int iE9 = parsableNalUnitBitArray.e(16);
            int iE10 = parsableNalUnitBitArray.e(16);
            ImmutableList immutableList = immutableListJ;
            if (parsableNalUnitBitArray.d()) {
                iE = parsableNalUnitBitArray.e(2);
                if (iE == 3) {
                    parsableNalUnitBitArray.i();
                }
                iE2 = parsableNalUnitBitArray.e(4);
                iE3 = parsableNalUnitBitArray.e(4);
            } else {
                iE = 0;
                iE2 = 0;
                iE3 = 0;
            }
            if (parsableNalUnitBitArray.d()) {
                int iF7 = parsableNalUnitBitArray.f();
                int iF8 = parsableNalUnitBitArray.f();
                int iF9 = parsableNalUnitBitArray.f();
                int iF10 = parsableNalUnitBitArray.f();
                iE9 -= (iF7 + iF8) * ((iE == 1 || iE == 2) ? 2 : 1);
                iE10 -= (iF9 + iF10) * (iE == 1 ? 2 : 1);
            }
            builderR.e(new H265RepFormat(iE, iE2, iE3, iE9, iE10));
            i86++;
            immutableListJ = immutableList;
            h265NalHeader6 = h265NalHeader6;
        }
        ImmutableList immutableList2 = immutableListJ;
        H265NalHeader h265NalHeader7 = h265NalHeader6;
        if (i85 <= 1 || !parsableNalUnitBitArray.d()) {
            for (int i87 = 1; i87 < i16; i87++) {
                iArr36[i87] = Math.min(i87, iF6);
            }
        } else {
            RoundingMode roundingMode2 = RoundingMode.CEILING;
            int iC2 = DoubleMath.c(i85);
            for (int i88 = 1; i88 < i16; i88++) {
                iArr36[i88] = parsableNalUnitBitArray.e(iC2);
            }
        }
        H265RepFormatsAndIndices h265RepFormatsAndIndices = new H265RepFormatsAndIndices(builderR.j(), iArr36);
        parsableNalUnitBitArray.j(2);
        for (int i89 = 1; i89 < i16; i89++) {
            if (iArr24[iArr33[i89]] == 0) {
                parsableNalUnitBitArray.i();
            }
        }
        for (int i90 = 1; i90 < iF5; i90++) {
            boolean zD12 = parsableNalUnitBitArray.d();
            int i91 = 0;
            while (i91 < iArr26[i90]) {
                if ((i91 <= 0 || !zD12) ? i91 == 0 : parsableNalUnitBitArray.d()) {
                    for (int i92 = 0; i92 < iArr21[i90]; i92++) {
                        if (zArr15[i90][i92]) {
                            parsableNalUnitBitArray.f();
                        }
                    }
                    parsableNalUnitBitArray.f();
                    parsableNalUnitBitArray.f();
                }
                i91++;
            }
        }
        int iF11 = parsableNalUnitBitArray.f() + 2;
        if (parsableNalUnitBitArray.d()) {
            parsableNalUnitBitArray.j(iF11);
        } else {
            for (int i93 = 1; i93 < i16; i93++) {
                for (int i94 = 0; i94 < i93; i94++) {
                    if (zArr4[i93][i94]) {
                        parsableNalUnitBitArray.j(iF11);
                    }
                }
            }
        }
        int iF12 = parsableNalUnitBitArray.f();
        for (int i95 = 1; i95 <= iF12; i95++) {
            parsableNalUnitBitArray.j(8);
        }
        if (parsableNalUnitBitArray.d()) {
            int i96 = parsableNalUnitBitArray.f14352e;
            if (i96 > 0) {
                parsableNalUnitBitArray.j(8 - i96);
            }
            if (!parsableNalUnitBitArray.d() ? parsableNalUnitBitArray.d() : true) {
                parsableNalUnitBitArray.i();
            }
            boolean zD13 = parsableNalUnitBitArray.d();
            boolean zD14 = parsableNalUnitBitArray.d();
            if (zD13 || zD14) {
                for (int i97 = 0; i97 < iF2; i97++) {
                    for (int i98 = 0; i98 < iArr26[i97]; i98++) {
                        boolean zD15 = zD13 ? parsableNalUnitBitArray.d() : false;
                        boolean zD16 = zD14 ? parsableNalUnitBitArray.d() : false;
                        if (zD15) {
                            parsableNalUnitBitArray.j(32);
                        }
                        if (zD16) {
                            parsableNalUnitBitArray.j(18);
                        }
                    }
                }
            }
            boolean zD17 = parsableNalUnitBitArray.d();
            int iE11 = zD17 ? parsableNalUnitBitArray.e(4) + 1 : i16;
            ImmutableList.Builder builderR2 = ImmutableList.r(iE11);
            int[] iArr37 = new int[i16];
            for (int i99 = 0; i99 < iE11; i99++) {
                parsableNalUnitBitArray.j(3);
                int i100 = parsableNalUnitBitArray.d() ? 1 : 2;
                int iF13 = ColorInfo.f(parsableNalUnitBitArray.e(8));
                int iG = ColorInfo.g(parsableNalUnitBitArray.e(8));
                parsableNalUnitBitArray.j(8);
                builderR2.e(new H265VideoSignalInfo(iF13, i100, iG));
            }
            if (zD17 && iE11 > 1) {
                for (int i101 = 0; i101 < i16; i101++) {
                    iArr37[i101] = parsableNalUnitBitArray.e(4);
                }
            }
            h265VideoSignalInfosAndIndices = new H265VideoSignalInfosAndIndices(builderR2.j(), iArr37);
        } else {
            h265VideoSignalInfosAndIndices = null;
        }
        return new H265VpsData(h265NalHeader7, immutableList2, new H265ProfileTierLevelsAndIndices(immutableListJ2, iArr34), h265RepFormatsAndIndices, h265VideoSignalInfosAndIndices);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:102:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:105:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:108:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:110:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:111:0x01d6  */
    /* JADX WARN: Code duplicated, block: B:114:0x01de  */
    /* JADX WARN: Code duplicated, block: B:115:0x01f9  */
    /* JADX WARN: Code duplicated, block: B:116:0x01fb  */
    /* JADX WARN: Code duplicated, block: B:119:0x0203  */
    /* JADX WARN: Code duplicated, block: B:122:0x020f  */
    /* JADX WARN: Code duplicated, block: B:125:0x021a  */
    /* JADX WARN: Code duplicated, block: B:128:0x0223  */
    /* JADX WARN: Code duplicated, block: B:131:0x022a  */
    /* JADX WARN: Code duplicated, block: B:134:0x0236  */
    /* JADX WARN: Code duplicated, block: B:136:0x025a  */
    /* JADX WARN: Code duplicated, block: B:61:0x011d  */
    /* JADX WARN: Code duplicated, block: B:64:0x012f  */
    /* JADX WARN: Code duplicated, block: B:66:0x0141  */
    /* JADX WARN: Code duplicated, block: B:67:0x0144 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:68:0x0146  */
    /* JADX WARN: Code duplicated, block: B:69:0x0149  */
    /* JADX WARN: Code duplicated, block: B:71:0x014d  */
    /* JADX WARN: Code duplicated, block: B:72:0x0150  */
    /* JADX WARN: Code duplicated, block: B:91:0x018b  */
    /* JADX WARN: Code duplicated, block: B:93:0x0191  */
    /* JADX WARN: Code duplicated, block: B:95:0x019b  */
    /* JADX WARN: Code duplicated, block: B:99:0x01ae  */
    public static SpsData k(int i2, int i3, byte[] bArr) {
        int iF;
        boolean zD;
        int iF2;
        int i4;
        int i5;
        int i6;
        int iF3;
        boolean z;
        boolean zD2;
        int i7;
        int i8;
        int i9;
        int iF4;
        int i10;
        float f2;
        int i11;
        int i12;
        int i13;
        float f3;
        int i14;
        int i15;
        int i16;
        boolean zD3;
        boolean zD4;
        int iE;
        int iE2;
        int iE3;
        int i17;
        int i18;
        ParsableNalUnitBitArray parsableNalUnitBitArray = new ParsableNalUnitBitArray(bArr, i2 + 1, i3);
        int iE4 = parsableNalUnitBitArray.e(8);
        int iE5 = parsableNalUnitBitArray.e(8);
        int iE6 = parsableNalUnitBitArray.e(8);
        int iF5 = parsableNalUnitBitArray.f();
        if (iE4 == 100 || iE4 == 110 || iE4 == 122 || iE4 == 244 || iE4 == 44 || iE4 == 83 || iE4 == 86 || iE4 == 118 || iE4 == 128 || iE4 == 138) {
            iF = parsableNalUnitBitArray.f();
            zD = iF == 3 ? parsableNalUnitBitArray.d() : false;
            iF2 = parsableNalUnitBitArray.f();
            int iF6 = parsableNalUnitBitArray.f();
            parsableNalUnitBitArray.i();
            if (parsableNalUnitBitArray.d()) {
                int i19 = iF != 3 ? 8 : 12;
                i4 = 16;
                int i20 = 0;
                while (i20 < i19) {
                    if (parsableNalUnitBitArray.d()) {
                        int i21 = i20 < 6 ? 16 : 64;
                        int iG = 8;
                        int i22 = 8;
                        for (int i23 = 0; i23 < i21; i23++) {
                            if (iG != 0) {
                                iG = ((parsableNalUnitBitArray.g() + i22) + 256) % 256;
                            }
                            if (iG != 0) {
                                i22 = iG;
                            }
                        }
                    }
                    i20++;
                }
            } else {
                i4 = 16;
            }
            i5 = iF6;
        } else {
            iF = 1;
            i4 = 16;
            i5 = 0;
            zD = false;
            iF2 = 0;
        }
        int iF7 = parsableNalUnitBitArray.f() + 4;
        int iF8 = parsableNalUnitBitArray.f();
        if (iF8 != 0) {
            if (iF8 == 1) {
                boolean zD5 = parsableNalUnitBitArray.d();
                parsableNalUnitBitArray.g();
                parsableNalUnitBitArray.g();
                iE4 = iE4;
                long jF = parsableNalUnitBitArray.f();
                iF8 = iF8;
                for (int i24 = 0; i24 < jF; i24++) {
                    parsableNalUnitBitArray.f();
                }
                z = zD5;
                i6 = 244;
                iF3 = 0;
            } else {
                i6 = 244;
                iF3 = 0;
            }
            int iF9 = parsableNalUnitBitArray.f();
            parsableNalUnitBitArray.i();
            int iF10 = parsableNalUnitBitArray.f() + 1;
            int iF11 = parsableNalUnitBitArray.f() + 1;
            zD2 = parsableNalUnitBitArray.d();
            i7 = 2 - (zD2 ? 1 : 0);
            int i25 = iF11 * i7;
            if (!zD2) {
                parsableNalUnitBitArray.i();
            }
            parsableNalUnitBitArray.i();
            i8 = iF10 * 16;
            i9 = i25 * 16;
            if (parsableNalUnitBitArray.d()) {
                int iF12 = parsableNalUnitBitArray.f();
                int iF13 = parsableNalUnitBitArray.f();
                int iF14 = parsableNalUnitBitArray.f();
                int iF15 = parsableNalUnitBitArray.f();
                if (iF == 0) {
                    i17 = 1;
                } else {
                    if (iF == 3) {
                        i17 = 1;
                    } else {
                        i17 = 2;
                    }
                    if (iF == 1) {
                        i18 = 2;
                    } else {
                        i18 = 1;
                    }
                    i7 *= i18;
                }
                i8 -= (iF12 + iF13) * i17;
                i9 -= (iF14 + iF15) * i7;
            }
            int i26 = i9;
            int i27 = i8;
            int i28 = iE4;
            int i29 = iF3;
            iF4 = ((i28 != 44 || i28 == 86 || i28 == 100 || i28 == 110 || i28 == 122 || i28 == i6) && (iE5 & 16) != 0) ? 0 : i4;
            i10 = -1;
            f2 = 1.0f;
            if (parsableNalUnitBitArray.d()) {
                if (parsableNalUnitBitArray.d()) {
                    iE = parsableNalUnitBitArray.e(8);
                    if (iE == 255) {
                        int i30 = i4;
                        iE2 = parsableNalUnitBitArray.e(i30);
                        iE3 = parsableNalUnitBitArray.e(i30);
                        if (iE2 != 0 && iE3 != 0) {
                            f2 = iE2 / iE3;
                        }
                    } else if (iE < 17) {
                        f2 = f14287b[iE];
                    } else {
                        a.u(iE, "Unexpected aspect_ratio_idc value: ");
                    }
                }
                if (parsableNalUnitBitArray.d()) {
                    parsableNalUnitBitArray.i();
                }
                if (parsableNalUnitBitArray.d()) {
                    parsableNalUnitBitArray.j(3);
                    if (parsableNalUnitBitArray.d()) {
                        i15 = 1;
                    } else {
                        i15 = 2;
                    }
                    if (parsableNalUnitBitArray.d()) {
                        int iE7 = parsableNalUnitBitArray.e(8);
                        int iE8 = parsableNalUnitBitArray.e(8);
                        parsableNalUnitBitArray.j(8);
                        int iF16 = ColorInfo.f(iE7);
                        int iG2 = ColorInfo.g(iE8);
                        i10 = iF16;
                        i16 = iG2;
                    } else {
                        i16 = -1;
                    }
                } else {
                    i15 = -1;
                    i16 = -1;
                }
                if (parsableNalUnitBitArray.d()) {
                    parsableNalUnitBitArray.f();
                    parsableNalUnitBitArray.f();
                }
                if (parsableNalUnitBitArray.d()) {
                    parsableNalUnitBitArray.j(65);
                }
                zD3 = parsableNalUnitBitArray.d();
                if (zD3) {
                    l(parsableNalUnitBitArray);
                }
                zD4 = parsableNalUnitBitArray.d();
                if (zD4) {
                    l(parsableNalUnitBitArray);
                }
                if (zD3 || zD4) {
                    parsableNalUnitBitArray.i();
                }
                parsableNalUnitBitArray.i();
                if (parsableNalUnitBitArray.d()) {
                    parsableNalUnitBitArray.i();
                    parsableNalUnitBitArray.f();
                    parsableNalUnitBitArray.f();
                    parsableNalUnitBitArray.f();
                    parsableNalUnitBitArray.f();
                    iF4 = parsableNalUnitBitArray.f();
                    parsableNalUnitBitArray.f();
                }
                f3 = f2;
                i14 = i10;
                i12 = i15;
                i13 = i16;
                i11 = iF4;
            } else {
                i11 = iF4;
                i12 = -1;
                i13 = -1;
                f3 = 1.0f;
                i14 = -1;
            }
            return new SpsData(i28, iE5, iE6, iF5, iF9, i27, i26, f3, iF2, i5, zD, zD2, iF7, iF8, i29, z, i14, i12, i13, i11);
        }
        iF3 = parsableNalUnitBitArray.f() + 4;
        i6 = 244;
        z = false;
        int iF17 = parsableNalUnitBitArray.f();
        parsableNalUnitBitArray.i();
        int iF18 = parsableNalUnitBitArray.f() + 1;
        int iF19 = parsableNalUnitBitArray.f() + 1;
        zD2 = parsableNalUnitBitArray.d();
        i7 = 2 - (zD2 ? 1 : 0);
        int i210 = iF19 * i7;
        if (!zD2) {
            parsableNalUnitBitArray.i();
        }
        parsableNalUnitBitArray.i();
        i8 = iF18 * 16;
        i9 = i210 * 16;
        if (parsableNalUnitBitArray.d()) {
            int iF110 = parsableNalUnitBitArray.f();
            int iF111 = parsableNalUnitBitArray.f();
            int iF112 = parsableNalUnitBitArray.f();
            int iF113 = parsableNalUnitBitArray.f();
            if (iF == 0) {
                i17 = 1;
            } else {
                if (iF == 3) {
                    i17 = 1;
                } else {
                    i17 = 2;
                }
                if (iF == 1) {
                    i18 = 2;
                } else {
                    i18 = 1;
                }
                i7 *= i18;
            }
            i8 -= (iF110 + iF111) * i17;
            i9 -= (iF112 + iF113) * i7;
        }
        int i211 = i9;
        int i212 = i8;
        int i213 = iE4;
        int i214 = iF3;
        if (i213 != 44) {
        }
        i10 = -1;
        f2 = 1.0f;
        if (parsableNalUnitBitArray.d()) {
            if (parsableNalUnitBitArray.d()) {
                iE = parsableNalUnitBitArray.e(8);
                if (iE == 255) {
                    int i31 = i4;
                    iE2 = parsableNalUnitBitArray.e(i31);
                    iE3 = parsableNalUnitBitArray.e(i31);
                    if (iE2 != 0) {
                        f2 = iE2 / iE3;
                    }
                } else if (iE < 17) {
                    f2 = f14287b[iE];
                } else {
                    a.u(iE, "Unexpected aspect_ratio_idc value: ");
                }
            }
            if (parsableNalUnitBitArray.d()) {
                parsableNalUnitBitArray.i();
            }
            if (parsableNalUnitBitArray.d()) {
                parsableNalUnitBitArray.j(3);
                if (parsableNalUnitBitArray.d()) {
                    i15 = 1;
                } else {
                    i15 = 2;
                }
                if (parsableNalUnitBitArray.d()) {
                    int iE9 = parsableNalUnitBitArray.e(8);
                    int iE10 = parsableNalUnitBitArray.e(8);
                    parsableNalUnitBitArray.j(8);
                    int iF114 = ColorInfo.f(iE9);
                    int iG3 = ColorInfo.g(iE10);
                    i10 = iF114;
                    i16 = iG3;
                } else {
                    i16 = -1;
                }
            } else {
                i15 = -1;
                i16 = -1;
            }
            if (parsableNalUnitBitArray.d()) {
                parsableNalUnitBitArray.f();
                parsableNalUnitBitArray.f();
            }
            if (parsableNalUnitBitArray.d()) {
                parsableNalUnitBitArray.j(65);
            }
            zD3 = parsableNalUnitBitArray.d();
            if (zD3) {
                l(parsableNalUnitBitArray);
            }
            zD4 = parsableNalUnitBitArray.d();
            if (zD4) {
                l(parsableNalUnitBitArray);
            }
            if (zD3) {
                parsableNalUnitBitArray.i();
            } else {
                parsableNalUnitBitArray.i();
            }
            parsableNalUnitBitArray.i();
            if (parsableNalUnitBitArray.d()) {
                parsableNalUnitBitArray.i();
                parsableNalUnitBitArray.f();
                parsableNalUnitBitArray.f();
                parsableNalUnitBitArray.f();
                parsableNalUnitBitArray.f();
                iF4 = parsableNalUnitBitArray.f();
                parsableNalUnitBitArray.f();
            }
            f3 = f2;
            i14 = i10;
            i12 = i15;
            i13 = i16;
            i11 = iF4;
        } else {
            i11 = iF4;
            i12 = -1;
            i13 = -1;
            f3 = 1.0f;
            i14 = -1;
        }
        return new SpsData(i213, iE5, iE6, iF5, iF17, i212, i211, f3, iF2, i5, zD, zD2, iF7, iF8, i214, z, i14, i12, i13, i11);
    }

    public static void l(ParsableNalUnitBitArray parsableNalUnitBitArray) {
        int iF = parsableNalUnitBitArray.f() + 1;
        parsableNalUnitBitArray.j(8);
        for (int i2 = 0; i2 < iF; i2++) {
            parsableNalUnitBitArray.f();
            parsableNalUnitBitArray.f();
            parsableNalUnitBitArray.i();
        }
        parsableNalUnitBitArray.j(20);
    }

    public static int m(int i2, byte[] bArr) {
        int i3;
        synchronized (f14288c) {
            int i4 = 0;
            int i5 = 0;
            while (i4 < i2) {
                while (true) {
                    if (i4 >= i2 - 2) {
                        i4 = i2;
                        break;
                    }
                    try {
                        if (bArr[i4] == 0 && bArr[i4 + 1] == 0 && bArr[i4 + 2] == 3) {
                            break;
                        }
                        i4++;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (i4 < i2) {
                    int[] iArr = d;
                    if (iArr.length <= i5) {
                        d = Arrays.copyOf(iArr, iArr.length * 2);
                    }
                    d[i5] = i4;
                    i4 += 3;
                    i5++;
                }
            }
            i3 = i2 - i5;
            int i6 = 0;
            int i7 = 0;
            for (int i8 = 0; i8 < i5; i8++) {
                int i9 = d[i8] - i7;
                System.arraycopy(bArr, i7, bArr, i6, i9);
                int i10 = i6 + i9;
                int i11 = i10 + 1;
                bArr[i10] = 0;
                i6 = i10 + 2;
                bArr[i11] = 0;
                i7 += i9 + 3;
            }
            System.arraycopy(bArr, i7, bArr, i6, i3 - i6);
        }
        return i3;
    }
}
