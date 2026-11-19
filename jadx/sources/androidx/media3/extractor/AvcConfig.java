package androidx.media3.extractor;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.container.NalUnitUtil;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class AvcConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f16083a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f16084b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f16085c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f16086e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f16087f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f16088h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f16089i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f16090j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final float f16091k;
    public final String l;

    public AvcConfig(ArrayList arrayList, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, float f2, String str) {
        this.f16083a = arrayList;
        this.f16084b = i2;
        this.f16085c = i3;
        this.d = i4;
        this.f16086e = i5;
        this.f16087f = i6;
        this.g = i7;
        this.f16088h = i8;
        this.f16089i = i9;
        this.f16090j = i10;
        this.f16091k = f2;
        this.l = str;
    }

    public static AvcConfig a(ParsableByteArray parsableByteArray) {
        String str;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        float f2;
        int i8;
        int i9;
        try {
            parsableByteArray.O(4);
            int iA = (parsableByteArray.A() & 3) + 1;
            if (iA == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int iA2 = parsableByteArray.A() & 31;
            for (int i10 = 0; i10 < iA2; i10++) {
                int iH = parsableByteArray.H();
                int i11 = parsableByteArray.f14195b;
                parsableByteArray.O(iH);
                byte[] bArr = parsableByteArray.f14194a;
                byte[] bArr2 = new byte[iH + 4];
                System.arraycopy(CodecSpecificDataUtil.f14144a, 0, bArr2, 0, 4);
                System.arraycopy(bArr, i11, bArr2, 4, iH);
                arrayList.add(bArr2);
            }
            int iA3 = parsableByteArray.A();
            for (int i12 = 0; i12 < iA3; i12++) {
                int iH2 = parsableByteArray.H();
                int i13 = parsableByteArray.f14195b;
                parsableByteArray.O(iH2);
                byte[] bArr3 = parsableByteArray.f14194a;
                byte[] bArr4 = new byte[iH2 + 4];
                System.arraycopy(CodecSpecificDataUtil.f14144a, 0, bArr4, 0, 4);
                System.arraycopy(bArr3, i13, bArr4, 4, iH2);
                arrayList.add(bArr4);
            }
            if (iA2 > 0) {
                NalUnitUtil.SpsData spsDataK = NalUnitUtil.k(4, ((byte[]) arrayList.get(0)).length, (byte[]) arrayList.get(0));
                int i14 = spsDataK.f14331e;
                int i15 = spsDataK.f14332f;
                int i16 = spsDataK.f14333h + 8;
                int i17 = spsDataK.f14334i + 8;
                int i18 = spsDataK.p;
                int i19 = spsDataK.q;
                int i20 = spsDataK.r;
                int i21 = spsDataK.s;
                float f3 = spsDataK.g;
                int i22 = spsDataK.f14328a;
                int i23 = spsDataK.f14329b;
                int i24 = spsDataK.f14330c;
                byte[] bArr5 = CodecSpecificDataUtil.f14144a;
                str = String.format("avc1.%02X%02X%02X", Integer.valueOf(i22), Integer.valueOf(i23), Integer.valueOf(i24));
                i5 = i19;
                i6 = i20;
                i7 = i21;
                f2 = f3;
                i3 = i15;
                i4 = i16;
                i8 = i17;
                i9 = i18;
                i2 = i14;
            } else {
                str = null;
                i2 = -1;
                i3 = -1;
                i4 = -1;
                i5 = -1;
                i6 = -1;
                i7 = 16;
                f2 = 1.0f;
                i8 = -1;
                i9 = -1;
            }
            return new AvcConfig(arrayList, iA, i2, i3, i4, i8, i9, i5, i6, i7, f2, str);
        } catch (ArrayIndexOutOfBoundsException e2) {
            throw ParserException.a(e2, "Error parsing AVC config");
        }
    }
}
