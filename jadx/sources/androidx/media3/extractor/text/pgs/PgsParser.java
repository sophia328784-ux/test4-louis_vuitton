package androidx.media3.extractor.text.pgs;

import android.graphics.Bitmap;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.text.CuesWithTiming;
import androidx.media3.extractor.text.SubtitleParser;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes.dex */
public final class PgsParser implements SubtitleParser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ParsableByteArray f16781a = new ParsableByteArray();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ParsableByteArray f16782b = new ParsableByteArray();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CueBuilder f16783c = new CueBuilder();
    public Inflater d;

    public static final class CueBuilder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ParsableByteArray f16784a = new ParsableByteArray();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int[] f16785b = new int[256];

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f16786c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f16787e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f16788f;
        public int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f16789h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f16790i;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:21:0x0080  */
    @Override // androidx.media3.extractor.text.SubtitleParser
    public final void a(byte[] bArr, int i2, int i3, SubtitleParser.OutputOptions outputOptions, Consumer consumer) {
        int[] iArr;
        ArrayList arrayList;
        Cue cueA;
        int i4;
        int i5;
        int iA;
        int i6;
        int i7;
        int iD;
        ParsableByteArray parsableByteArray = this.f16781a;
        parsableByteArray.L(i2 + i3, bArr);
        parsableByteArray.N(i2);
        if (this.d == null) {
            this.d = new Inflater();
        }
        Inflater inflater = this.d;
        String str = Util.f14242a;
        if (parsableByteArray.a() > 0 && parsableByteArray.j() == 120) {
            ParsableByteArray parsableByteArray2 = this.f16782b;
            if (Util.I(parsableByteArray, parsableByteArray2, inflater)) {
                parsableByteArray.L(parsableByteArray2.f14196c, parsableByteArray2.f14194a);
            }
        }
        CueBuilder cueBuilder = this.f16783c;
        int i8 = 0;
        cueBuilder.d = 0;
        int[] iArr2 = cueBuilder.f16785b;
        ParsableByteArray parsableByteArray3 = cueBuilder.f16784a;
        cueBuilder.f16787e = 0;
        cueBuilder.f16788f = 0;
        cueBuilder.g = 0;
        cueBuilder.f16789h = 0;
        cueBuilder.f16790i = 0;
        parsableByteArray3.K(0);
        cueBuilder.f16786c = false;
        ArrayList arrayList2 = new ArrayList();
        while (parsableByteArray.a() >= 3) {
            int i9 = parsableByteArray.f14196c;
            int iA2 = parsableByteArray.A();
            int iH = parsableByteArray.H();
            int i10 = parsableByteArray.f14195b + iH;
            if (i10 > i9) {
                parsableByteArray.N(i9);
                iArr = iArr2;
                arrayList = arrayList2;
                cueA = null;
                i4 = i8;
            } else {
                char c2 = 128;
                if (iA2 != 128) {
                    switch (iA2) {
                        case 20:
                            if (iH % 5 == 2) {
                                parsableByteArray.O(2);
                                Arrays.fill(iArr2, i8);
                                int i11 = iH / 5;
                                int i12 = i8;
                                while (i12 < i11) {
                                    int iA3 = parsableByteArray.A();
                                    char c3 = c2;
                                    double dA = parsableByteArray.A();
                                    double dA2 = parsableByteArray.A() - 128;
                                    int[] iArr3 = iArr2;
                                    double dA3 = parsableByteArray.A() - 128;
                                    iArr3[iA3] = Util.j((int) ((dA3 * 1.772d) + dA), 0, 255) | (parsableByteArray.A() << 24) | (Util.j((int) ((1.402d * dA2) + dA), 0, 255) << 16) | (Util.j((int) ((dA - (0.34414d * dA3)) - (dA2 * 0.71414d)), 0, 255) << 8);
                                    i12++;
                                    arrayList2 = arrayList2;
                                    c2 = c3;
                                    iArr2 = iArr3;
                                }
                                iArr = iArr2;
                                arrayList = arrayList2;
                                cueBuilder.f16786c = true;
                            } else {
                                iArr = iArr2;
                                arrayList = arrayList2;
                            }
                            break;
                        case 21:
                            if (iH >= 4) {
                                parsableByteArray.O(3);
                                int i13 = iH - 4;
                                if (((128 & parsableByteArray.A()) != 0 ? 1 : i8) == 0) {
                                    i6 = parsableByteArray3.f14195b;
                                    i7 = parsableByteArray3.f14196c;
                                    if (i6 < i7 && i13 > 0) {
                                        int iMin = Math.min(i13, i7 - i6);
                                        parsableByteArray.k(i6, iMin, parsableByteArray3.f14194a);
                                        parsableByteArray3.N(i6 + iMin);
                                    }
                                } else if (i13 >= 7 && (iD = parsableByteArray.D()) >= 4) {
                                    cueBuilder.f16789h = parsableByteArray.H();
                                    cueBuilder.f16790i = parsableByteArray.H();
                                    parsableByteArray3.K(iD - 4);
                                    i13 = iH - 11;
                                    i6 = parsableByteArray3.f14195b;
                                    i7 = parsableByteArray3.f14196c;
                                    if (i6 < i7) {
                                        int iMin2 = Math.min(i13, i7 - i6);
                                        parsableByteArray.k(i6, iMin2, parsableByteArray3.f14194a);
                                        parsableByteArray3.N(i6 + iMin2);
                                    }
                                }
                            }
                            iArr = iArr2;
                            arrayList = arrayList2;
                            break;
                        case 22:
                            if (iH >= 19) {
                                cueBuilder.d = parsableByteArray.H();
                                cueBuilder.f16787e = parsableByteArray.H();
                                parsableByteArray.O(11);
                                cueBuilder.f16788f = parsableByteArray.H();
                                cueBuilder.g = parsableByteArray.H();
                            }
                            iArr = iArr2;
                            arrayList = arrayList2;
                            break;
                        default:
                            iArr = iArr2;
                            arrayList = arrayList2;
                            break;
                    }
                    i4 = 0;
                    cueA = null;
                } else {
                    iArr = iArr2;
                    arrayList = arrayList2;
                    if (cueBuilder.d == 0 || cueBuilder.f16787e == 0 || cueBuilder.f16789h == 0 || cueBuilder.f16790i == 0 || (i5 = parsableByteArray3.f14196c) == 0 || parsableByteArray3.f14195b != i5 || !cueBuilder.f16786c) {
                        cueA = null;
                    } else {
                        parsableByteArray3.N(0);
                        int i14 = cueBuilder.f16789h * cueBuilder.f16790i;
                        int[] iArr4 = new int[i14];
                        int i15 = 0;
                        while (i15 < i14) {
                            int iA4 = parsableByteArray3.A();
                            if (iA4 != 0) {
                                iA = i15 + 1;
                                iArr4[i15] = iArr[iA4];
                            } else {
                                int iA5 = parsableByteArray3.A();
                                if (iA5 != 0) {
                                    iA = ((iA5 & 64) == 0 ? iA5 & 63 : ((iA5 & 63) << 8) | parsableByteArray3.A()) + i15;
                                    Arrays.fill(iArr4, i15, iA, (iA5 & 128) == 0 ? iArr[0] : iArr[parsableByteArray3.A()]);
                                }
                            }
                            i15 = iA;
                        }
                        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iArr4, cueBuilder.f16789h, cueBuilder.f16790i, Bitmap.Config.ARGB_8888);
                        Cue.Builder builder = new Cue.Builder();
                        builder.f14103b = bitmapCreateBitmap;
                        builder.f14102a = null;
                        float f2 = cueBuilder.f16788f;
                        float f3 = cueBuilder.d;
                        builder.f14107h = f2 / f3;
                        builder.f14108i = 0;
                        float f4 = cueBuilder.g;
                        float f5 = cueBuilder.f16787e;
                        builder.f14105e = f4 / f5;
                        builder.f14106f = 0;
                        builder.g = 0;
                        builder.l = cueBuilder.f16789h / f3;
                        builder.m = cueBuilder.f16790i / f5;
                        cueA = builder.a();
                    }
                    i4 = 0;
                    cueBuilder.d = 0;
                    cueBuilder.f16787e = 0;
                    cueBuilder.f16788f = 0;
                    cueBuilder.g = 0;
                    cueBuilder.f16789h = 0;
                    cueBuilder.f16790i = 0;
                    parsableByteArray3.K(0);
                    cueBuilder.f16786c = false;
                }
                parsableByteArray.N(i10);
            }
            ArrayList arrayList3 = arrayList;
            if (cueA != null) {
                arrayList3.add(cueA);
            }
            int i16 = i4;
            arrayList2 = arrayList3;
            i8 = i16;
            iArr2 = iArr;
        }
        consumer.accept(new CuesWithTiming(arrayList2, -9223372036854775807L, -9223372036854775807L));
    }

    @Override // androidx.media3.extractor.text.SubtitleParser
    public final int c() {
        return 2;
    }
}
