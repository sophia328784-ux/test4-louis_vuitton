package androidx.media3.extractor.ts;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.ConstantBitrateSeekMap;
import androidx.media3.extractor.DefaultExtractorInput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import java.io.EOFException;
import java.io.InterruptedIOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes.dex */
public final class AdtsExtractor implements Extractor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f16958a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AdtsReader f16959b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ParsableByteArray f16960c;
    public final ParsableByteArray d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ParsableBitArray f16961e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ExtractorOutput f16962f;
    public long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f16963h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f16964i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f16965j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f16966k;
    public boolean l;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    public AdtsExtractor(int i2) {
        this.f16958a = (i2 & 2) != 0 ? i2 | 1 : i2;
        this.f16959b = new AdtsReader(true, "audio/mp4a-latm");
        this.f16960c = new ParsableByteArray(2048);
        this.f16964i = -1;
        this.f16963h = -1L;
        ParsableByteArray parsableByteArray = new ParsableByteArray(10);
        this.d = parsableByteArray;
        this.f16961e = new ParsableBitArray(parsableByteArray.f14194a);
    }

    @Override // androidx.media3.extractor.Extractor
    public final void a(long j2, long j3) {
        this.f16966k = false;
        this.f16959b.c();
        this.g = j3;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void b(ExtractorOutput extractorOutput) {
        this.f16962f = extractorOutput;
        this.f16959b.e(extractorOutput, new TsPayloadReader.TrackIdGenerator(0, 1));
        extractorOutput.n();
    }

    @Override // androidx.media3.extractor.Extractor
    public final boolean d(ExtractorInput extractorInput) throws EOFException, InterruptedIOException {
        int iG = g(extractorInput);
        int i2 = iG;
        int i3 = 0;
        int i4 = 0;
        do {
            ParsableByteArray parsableByteArray = this.d;
            DefaultExtractorInput defaultExtractorInput = (DefaultExtractorInput) extractorInput;
            defaultExtractorInput.i(false, 0, 2, parsableByteArray.f14194a);
            parsableByteArray.N(0);
            if ((parsableByteArray.H() & 65526) == 65520) {
                i3++;
                if (i3 >= 4 && i4 > 188) {
                    return true;
                }
                defaultExtractorInput.i(false, 0, 4, parsableByteArray.f14194a);
                ParsableBitArray parsableBitArray = this.f16961e;
                parsableBitArray.m(14);
                int iG2 = parsableBitArray.g(13);
                if (iG2 <= 6) {
                    i2++;
                    defaultExtractorInput.f16125f = 0;
                    defaultExtractorInput.n(i2, false);
                } else {
                    defaultExtractorInput.n(iG2 - 6, false);
                    i4 += iG2;
                }
            } else {
                i2++;
                defaultExtractorInput.f16125f = 0;
                defaultExtractorInput.n(i2, false);
            }
            i3 = 0;
            i4 = 0;
        } while (i2 - iG < 8192);
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:45:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:65:0x00de  */
    /* JADX WARN: Code duplicated, block: B:76:0x010b  */
    @Override // androidx.media3.extractor.Extractor
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) throws ParserException {
        boolean z;
        this.f16962f.getClass();
        long length = extractorInput.getLength();
        int i2 = this.f16958a;
        int i3 = i2 & 2;
        int i4 = -1;
        int i5 = 0;
        if (i3 != 0 || ((i2 & 1) != 0 && length != -1)) {
            ParsableBitArray parsableBitArray = this.f16961e;
            ParsableByteArray parsableByteArray = this.d;
            if (!this.f16965j) {
                this.f16964i = -1;
                extractorInput.g();
                long j2 = 0;
                if (extractorInput.getPosition() == 0) {
                    g(extractorInput);
                }
                int i6 = 0;
                while (true) {
                    try {
                        if (extractorInput.i(true, i5, 2, parsableByteArray.f14194a)) {
                            parsableByteArray.N(i5);
                            if (((parsableByteArray.H() & 65526) == 65520 ? 1 : i5) == 0) {
                                i6 = i5;
                            } else if (extractorInput.i(true, i5, 4, parsableByteArray.f14194a)) {
                                parsableBitArray.m(14);
                                int iG = parsableBitArray.g(13);
                                if (iG > 6) {
                                    j2 += (long) iG;
                                    i6++;
                                    if (i6 != 1000) {
                                        try {
                                            if (extractorInput.n(iG - 6, true)) {
                                                i5 = 0;
                                            }
                                        } catch (EOFException unused) {
                                        }
                                    }
                                } else {
                                    try {
                                        this.f16965j = true;
                                        throw ParserException.a(null, "Malformed ADTS stream");
                                    } catch (EOFException unused2) {
                                    }
                                }
                            }
                            extractorInput.g();
                            if (i6 > 0) {
                                this.f16964i = (int) (j2 / ((long) i6));
                            } else {
                                this.f16964i = -1;
                            }
                            this.f16965j = true;
                        }
                        j2 = j2;
                    } catch (EOFException unused3) {
                    }
                    extractorInput.g();
                    if (i6 > 0) {
                        this.f16964i = (int) (j2 / ((long) i6));
                    } else {
                        this.f16964i = -1;
                    }
                    this.f16965j = true;
                }
            }
        }
        ParsableByteArray parsableByteArray2 = this.f16960c;
        int i7 = extractorInput.read(parsableByteArray2.f14194a, 0, 2048);
        boolean z2 = i7 == -1;
        boolean z3 = this.l;
        AdtsReader adtsReader = this.f16959b;
        if (z3) {
            i4 = -1;
            z = true;
        } else {
            boolean z4 = (i2 & 1) != 0 && this.f16964i > 0;
            if (z4 && adtsReader.s == -9223372036854775807L && !z2) {
                i4 = -1;
                z = true;
            } else {
                if (z4) {
                    long j3 = adtsReader.s;
                    if (j3 != -9223372036854775807L) {
                        ExtractorOutput extractorOutput = this.f16962f;
                        boolean z5 = i3 != 0;
                        int i8 = this.f16964i;
                        extractorOutput.j(new ConstantBitrateSeekMap(length, this.f16963h, (int) ((((long) i8) * 8000000) / j3), i8, z5));
                    } else {
                        this.f16962f.j(new SeekMap.Unseekable(-9223372036854775807L));
                    }
                } else {
                    this.f16962f.j(new SeekMap.Unseekable(-9223372036854775807L));
                }
                z = true;
                this.l = true;
            }
        }
        if (z2) {
            return i4;
        }
        parsableByteArray2.N(0);
        parsableByteArray2.M(i7);
        if (!this.f16966k) {
            adtsReader.u = this.g;
            this.f16966k = z;
        }
        adtsReader.a(parsableByteArray2);
        return 0;
    }

    public final int g(ExtractorInput extractorInput) {
        int i2 = 0;
        while (true) {
            ParsableByteArray parsableByteArray = this.d;
            extractorInput.b(0, 10, parsableByteArray.f14194a);
            parsableByteArray.N(0);
            if (parsableByteArray.D() != 4801587) {
                break;
            }
            parsableByteArray.O(3);
            int iZ = parsableByteArray.z();
            i2 += iZ + 10;
            extractorInput.k(iZ);
        }
        extractorInput.g();
        extractorInput.k(i2);
        if (this.f16963h == -1) {
            this.f16963h = i2;
        }
        return i2;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void release() {
    }

    public AdtsExtractor() {
        this(0);
    }
}
