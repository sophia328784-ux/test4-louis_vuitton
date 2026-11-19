package androidx.media3.extractor;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.container.NalUnitUtil;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class HevcConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f16167a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f16168b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f16169c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f16170e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f16171f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f16172h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f16173i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f16174j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f16175k;
    public final float l;
    public final int m;
    public final String n;
    public final NalUnitUtil.H265VpsData o;

    public HevcConfig(List list, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, float f2, int i12, String str, NalUnitUtil.H265VpsData h265VpsData) {
        this.f16167a = list;
        this.f16168b = i2;
        this.f16169c = i3;
        this.d = i4;
        this.f16170e = i5;
        this.f16171f = i6;
        this.g = i7;
        this.f16172h = i8;
        this.f16173i = i9;
        this.f16174j = i10;
        this.f16175k = i11;
        this.l = f2;
        this.m = i12;
        this.n = str;
        this.o = h265VpsData;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static HevcConfig a(ParsableByteArray parsableByteArray, boolean z, NalUnitUtil.H265VpsData h265VpsData) throws ParserException {
        boolean z2;
        NalUnitUtil.H265Sei3dRefDisplayInfoData h265Sei3dRefDisplayInfoDataH;
        int i2 = 4;
        try {
            if (z) {
                parsableByteArray.O(4);
            } else {
                parsableByteArray.O(21);
            }
            int iA = parsableByteArray.A() & 3;
            int iA2 = parsableByteArray.A();
            int i3 = parsableByteArray.f14195b;
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            while (true) {
                z2 = true;
                if (i5 >= iA2) {
                    break;
                }
                parsableByteArray.O(1);
                int iH = parsableByteArray.H();
                for (int i7 = 0; i7 < iH; i7++) {
                    int iH2 = parsableByteArray.H();
                    i6 += iH2 + 4;
                    parsableByteArray.O(iH2);
                }
                i5++;
            }
            parsableByteArray.N(i3);
            byte[] bArr = new byte[i6];
            NalUnitUtil.H265VpsData h265VpsData2 = h265VpsData;
            int i8 = -1;
            int i9 = -1;
            int i10 = -1;
            int i11 = -1;
            int i12 = -1;
            int i13 = -1;
            int i14 = -1;
            int i15 = -1;
            int i16 = -1;
            int i17 = -1;
            float f2 = 1.0f;
            String strA = null;
            int i18 = 0;
            int i19 = 0;
            while (i18 < iA2) {
                int iA3 = parsableByteArray.A() & 63;
                int iH3 = parsableByteArray.H();
                int i20 = i4;
                NalUnitUtil.H265VpsData h265VpsDataJ = h265VpsData2;
                while (i20 < iH3) {
                    boolean z3 = z2;
                    int iH4 = parsableByteArray.H();
                    int i21 = iA;
                    System.arraycopy(NalUnitUtil.f14286a, i4, bArr, i19, i2);
                    int i22 = i19 + 4;
                    System.arraycopy(parsableByteArray.f14194a, parsableByteArray.f14195b, bArr, i22, iH4);
                    if (iA3 == 32 && i20 == 0) {
                        h265VpsDataJ = NalUnitUtil.j(i22, i22 + iH4, bArr);
                    } else {
                        if (iA3 == 33 && i20 == 0) {
                            NalUnitUtil.H265SpsData h265SpsDataI = NalUnitUtil.i(bArr, i22, i22 + iH4, h265VpsDataJ);
                            i8 = h265SpsDataI.f14308a + 1;
                            i9 = h265SpsDataI.g;
                            int i23 = h265SpsDataI.f14313h;
                            i11 = h265SpsDataI.f14310c + 8;
                            i12 = h265SpsDataI.d + 8;
                            int i24 = h265SpsDataI.f14316k;
                            i10 = i23;
                            int i25 = h265SpsDataI.l;
                            int i26 = h265SpsDataI.m;
                            float f3 = h265SpsDataI.f14314i;
                            int i27 = h265SpsDataI.f14315j;
                            NalUnitUtil.H265ProfileTierLevel h265ProfileTierLevel = h265SpsDataI.f14309b;
                            if (h265ProfileTierLevel != null) {
                                strA = CodecSpecificDataUtil.a(h265ProfileTierLevel.f14294a, h265ProfileTierLevel.f14295b, h265ProfileTierLevel.f14296c, h265ProfileTierLevel.d, h265ProfileTierLevel.f14297e, h265ProfileTierLevel.f14298f);
                            }
                            i17 = i27;
                            f2 = f3;
                            i15 = i26;
                            i14 = i25;
                            i13 = i24;
                        } else if (iA3 == 39 && i20 == 0 && (h265Sei3dRefDisplayInfoDataH = NalUnitUtil.h(i22, i22 + iH4, bArr)) != null && h265VpsDataJ != null) {
                            i4 = 0;
                            i16 = h265Sei3dRefDisplayInfoDataH.f14307a == ((NalUnitUtil.H265LayerInfo) h265VpsDataJ.f14322a.get(0)).f14290b ? 4 : 5;
                        }
                        i4 = 0;
                    }
                    i19 = i22 + iH4;
                    parsableByteArray.O(iH4);
                    i20++;
                    z2 = z3;
                    iA = i21;
                    i2 = 4;
                }
                i18++;
                h265VpsData2 = h265VpsDataJ;
                i2 = 4;
            }
            return new HevcConfig(i6 == 0 ? Collections.EMPTY_LIST : Collections.singletonList(bArr), iA + 1, i8, i9, i10, i11, i12, i13, i14, i15, i16, f2, i17, strA, h265VpsData2);
        } catch (ArrayIndexOutOfBoundsException e2) {
            throw ParserException.a(e2, "Error parsing".concat(z ? "L-HEVC config" : "HEVC config"));
        }
    }
}
