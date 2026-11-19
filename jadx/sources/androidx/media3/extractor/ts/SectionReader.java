package androidx.media3.extractor.ts;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.ExtractorOutput;

/* JADX INFO: loaded from: classes.dex */
public final class SectionReader implements TsPayloadReader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SectionPayloadReader f17143a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ParsableByteArray f17144b = new ParsableByteArray(32);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f17145c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f17146e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f17147f;

    public SectionReader(SectionPayloadReader sectionPayloadReader) {
        this.f17143a = sectionPayloadReader;
    }

    @Override // androidx.media3.extractor.ts.TsPayloadReader
    public final void a(int i2, ParsableByteArray parsableByteArray) {
        int iA;
        boolean z = (i2 & 1) != 0;
        if (z) {
            iA = parsableByteArray.f14195b + parsableByteArray.A();
        } else {
            iA = -1;
        }
        if (this.f17147f) {
            if (!z) {
                return;
            }
            this.f17147f = false;
            parsableByteArray.N(iA);
            this.d = 0;
        }
        while (parsableByteArray.a() > 0) {
            int i3 = this.d;
            ParsableByteArray parsableByteArray2 = this.f17144b;
            if (i3 < 3) {
                if (i3 == 0) {
                    int iA2 = parsableByteArray.A();
                    parsableByteArray.N(parsableByteArray.f14195b - 1);
                    if (iA2 == 255) {
                        this.f17147f = true;
                        return;
                    }
                }
                int iMin = Math.min(parsableByteArray.a(), 3 - this.d);
                parsableByteArray.k(this.d, iMin, parsableByteArray2.f14194a);
                int i4 = this.d + iMin;
                this.d = i4;
                if (i4 == 3) {
                    parsableByteArray2.N(0);
                    parsableByteArray2.M(3);
                    parsableByteArray2.O(1);
                    int iA3 = parsableByteArray2.A();
                    int iA4 = parsableByteArray2.A();
                    this.f17146e = (iA3 & 128) != 0;
                    int i5 = (((iA3 & 15) << 8) | iA4) + 3;
                    this.f17145c = i5;
                    byte[] bArr = parsableByteArray2.f14194a;
                    if (bArr.length < i5) {
                        parsableByteArray2.c(Math.min(4098, Math.max(i5, bArr.length * 2)));
                    }
                }
            } else {
                int iMin2 = Math.min(parsableByteArray.a(), this.f17145c - this.d);
                parsableByteArray.k(this.d, iMin2, parsableByteArray2.f14194a);
                int i6 = this.d + iMin2;
                this.d = i6;
                int i7 = this.f17145c;
                if (i6 != i7) {
                    continue;
                } else {
                    if (!this.f17146e) {
                        parsableByteArray2.M(i7);
                    } else {
                        if (Util.q(0, i7, parsableByteArray2.f14194a, -1) != 0) {
                            this.f17147f = true;
                            return;
                        }
                        parsableByteArray2.M(this.f17145c - 4);
                    }
                    parsableByteArray2.N(0);
                    this.f17143a.a(parsableByteArray2);
                    this.d = 0;
                }
            }
        }
    }

    @Override // androidx.media3.extractor.ts.TsPayloadReader
    public final void b(TimestampAdjuster timestampAdjuster, ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        this.f17143a.b(timestampAdjuster, extractorOutput, trackIdGenerator);
        this.f17147f = true;
    }

    @Override // androidx.media3.extractor.ts.TsPayloadReader
    public final void c() {
        this.f17147f = true;
    }
}
