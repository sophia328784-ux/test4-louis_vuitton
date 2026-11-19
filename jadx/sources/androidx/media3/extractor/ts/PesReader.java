package androidx.media3.extractor.ts;

import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.extractor.ExtractorOutput;
import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
public final class PesReader implements TsPayloadReader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ElementaryStreamReader f17112a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ParsableBitArray f17113b = new ParsableBitArray(new byte[10]);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f17114c = 0;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public TimestampAdjuster f17115e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f17116f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f17117h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f17118i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f17119j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f17120k;
    public long l;

    public PesReader(ElementaryStreamReader elementaryStreamReader) {
        this.f17112a = elementaryStreamReader;
    }

    @Override // androidx.media3.extractor.ts.TsPayloadReader
    public final void a(int i2, ParsableByteArray parsableByteArray) {
        this.f17115e.getClass();
        int i3 = i2 & 1;
        int i4 = -1;
        int i5 = 2;
        ElementaryStreamReader elementaryStreamReader = this.f17112a;
        if (i3 != 0) {
            int i6 = this.f17114c;
            if (i6 != 0 && i6 != 1) {
                if (i6 == 2) {
                    Log.g("Unexpected start indicator reading extended header");
                } else {
                    if (i6 != 3) {
                        r81.b();
                        return;
                    }
                    if (this.f17119j != -1) {
                        Log.g("Unexpected start indicator: expected " + this.f17119j + " more bytes");
                    }
                    elementaryStreamReader.d(parsableByteArray.f14196c == 0);
                }
            }
            this.f17114c = 1;
            this.d = 0;
        }
        int i7 = i2;
        while (parsableByteArray.a() > 0) {
            int i8 = this.f17114c;
            if (i8 != 0) {
                ParsableBitArray parsableBitArray = this.f17113b;
                if (i8 != 1) {
                    if (i8 == i5) {
                        if (d(parsableByteArray, parsableBitArray.f14189a, Math.min(10, this.f17118i)) && d(parsableByteArray, null, this.f17118i)) {
                            parsableBitArray.m(0);
                            this.l = -9223372036854775807L;
                            if (this.f17116f) {
                                parsableBitArray.o(4);
                                long jG = ((long) parsableBitArray.g(3)) << 30;
                                parsableBitArray.o(1);
                                long jG2 = ((long) (parsableBitArray.g(15) << 15)) | jG;
                                parsableBitArray.o(1);
                                long jG3 = jG2 | ((long) parsableBitArray.g(15));
                                parsableBitArray.o(1);
                                if (!this.f17117h && this.g) {
                                    parsableBitArray.o(4);
                                    long jG4 = ((long) parsableBitArray.g(3)) << 30;
                                    parsableBitArray.o(1);
                                    long jG5 = jG4 | ((long) (parsableBitArray.g(15) << 15));
                                    parsableBitArray.o(1);
                                    long jG6 = jG5 | ((long) parsableBitArray.g(15));
                                    parsableBitArray.o(1);
                                    this.f17115e.b(jG6);
                                    this.f17117h = true;
                                }
                                this.l = this.f17115e.b(jG3);
                            }
                            i7 |= this.f17120k ? 4 : 0;
                            elementaryStreamReader.f(i7, this.l);
                            this.f17114c = 3;
                            this.d = 0;
                        }
                    } else {
                        if (i8 != 3) {
                            r81.b();
                            return;
                        }
                        int iA = parsableByteArray.a();
                        int i9 = this.f17119j;
                        int i10 = i9 == i4 ? 0 : iA - i9;
                        if (i10 > 0) {
                            iA -= i10;
                            parsableByteArray.M(parsableByteArray.f14195b + iA);
                        }
                        elementaryStreamReader.a(parsableByteArray);
                        int i11 = this.f17119j;
                        if (i11 != i4) {
                            int i12 = i11 - iA;
                            this.f17119j = i12;
                            if (i12 == 0) {
                                elementaryStreamReader.d(false);
                                this.f17114c = 1;
                                this.d = 0;
                            }
                        }
                    }
                } else if (d(parsableByteArray, parsableBitArray.f14189a, 9)) {
                    this.f17114c = e() ? 2 : 0;
                    this.d = 0;
                }
            } else {
                parsableByteArray.O(parsableByteArray.a());
            }
            i4 = -1;
            i5 = 2;
        }
    }

    @Override // androidx.media3.extractor.ts.TsPayloadReader
    public final void b(TimestampAdjuster timestampAdjuster, ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        this.f17115e = timestampAdjuster;
        this.f17112a.e(extractorOutput, trackIdGenerator);
    }

    @Override // androidx.media3.extractor.ts.TsPayloadReader
    public final void c() {
        this.f17114c = 0;
        this.d = 0;
        this.f17117h = false;
        this.f17112a.c();
    }

    public final boolean d(ParsableByteArray parsableByteArray, byte[] bArr, int i2) {
        int iMin = Math.min(parsableByteArray.a(), i2 - this.d);
        if (iMin <= 0) {
            return true;
        }
        if (bArr == null) {
            parsableByteArray.O(iMin);
        } else {
            parsableByteArray.k(this.d, iMin, bArr);
        }
        int i3 = this.d + iMin;
        this.d = i3;
        return i3 == i2;
    }

    public final boolean e() {
        ParsableBitArray parsableBitArray = this.f17113b;
        parsableBitArray.m(0);
        int iG = parsableBitArray.g(24);
        if (iG != 1) {
            defpackage.a.u(iG, "Unexpected start code prefix: ");
            this.f17119j = -1;
            return false;
        }
        parsableBitArray.o(8);
        int iG2 = parsableBitArray.g(16);
        parsableBitArray.o(5);
        this.f17120k = parsableBitArray.f();
        parsableBitArray.o(2);
        this.f17116f = parsableBitArray.f();
        this.g = parsableBitArray.f();
        parsableBitArray.o(6);
        int iG3 = parsableBitArray.g(8);
        this.f17118i = iG3;
        if (iG2 == 0) {
            this.f17119j = -1;
            return true;
        }
        int i2 = (iG2 - 3) - iG3;
        this.f17119j = i2;
        if (i2 < 0) {
            Log.g("Found negative packet payload size: " + this.f17119j);
            this.f17119j = -1;
        }
        return true;
    }
}
