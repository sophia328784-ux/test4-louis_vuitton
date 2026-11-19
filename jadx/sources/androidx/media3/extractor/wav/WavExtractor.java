package androidx.media3.extractor.wav;

import android.util.Pair;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.TrackOutput;
import com.github.druk.dnssd.NSType;
import com.google.common.base.Preconditions;
import defpackage.r81;
import java.math.RoundingMode;
import java.nio.ByteOrder;
import java.util.Arrays;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
public final class WavExtractor implements Extractor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ExtractorOutput f17190a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public TrackOutput f17191b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public OutputWriter f17193e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f17192c = 0;
    public long d = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f17194f = -1;
    public long g = -1;

    public static final class ImaAdPcmOutputWriter implements OutputWriter {
        public static final int[] m = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};
        public static final int[] n = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130, 143, 157, 173, 190, 209, 230, NSType.MAILB, 279, 307, 337, 371, 408, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ExtractorOutput f17195a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TrackOutput f17196b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final WavFormat f17197c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final byte[] f17198e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final ParsableByteArray f17199f;
        public final int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Format f17200h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f17201i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public long f17202j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f17203k;
        public long l;

        public ImaAdPcmOutputWriter(ExtractorOutput extractorOutput, TrackOutput trackOutput, WavFormat wavFormat) throws ParserException {
            this.f17195a = extractorOutput;
            this.f17196b = trackOutput;
            this.f17197c = wavFormat;
            int i2 = wavFormat.f17212c;
            int iMax = Math.max(1, i2 / 10);
            this.g = iMax;
            ParsableByteArray parsableByteArray = new ParsableByteArray(wavFormat.f17214f);
            parsableByteArray.t();
            int iT = parsableByteArray.t();
            this.d = iT;
            int i3 = wavFormat.f17211b;
            int i4 = wavFormat.d;
            int i5 = (((i4 - (i3 * 4)) * 8) / (wavFormat.f17213e * i3)) + 1;
            if (iT != i5) {
                throw ParserException.a(null, "Expected frames per block: " + i5 + "; got: " + iT);
            }
            int iG = Util.g(iMax, iT);
            this.f17198e = new byte[iG * i4];
            this.f17199f = new ParsableByteArray(iT * 2 * i3 * iG);
            int i6 = ((i4 * i2) * 8) / iT;
            Format.Builder builder = new Format.Builder();
            builder.n = MimeTypes.p("audio/raw");
            builder.f13769h = i6;
            builder.f13770i = i6;
            builder.o = iMax * 2 * i3;
            builder.F = i3;
            builder.G = i2;
            builder.H = 2;
            this.f17200h = new Format(builder);
        }

        /* JADX WARN: Code duplicated, block: B:16:0x004c  */
        /* JADX WARN: Code duplicated, block: B:19:0x0051  */
        /* JADX WARN: Code duplicated, block: B:22:0x0056  */
        /* JADX WARN: Code duplicated, block: B:25:0x00a5  */
        /* JADX WARN: Code duplicated, block: B:27:0x00bb  */
        /* JADX WARN: Code duplicated, block: B:28:0x00be  */
        /* JADX WARN: Code duplicated, block: B:31:0x00ce  */
        /* JADX WARN: Code duplicated, block: B:37:0x0137  */
        /* JADX WARN: Code duplicated, block: B:43:0x0047 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:47:0x010d A[EDGE_INSN: B:47:0x010d->B:35:0x010d BREAK  A[LOOP:1: B:17:0x004d->B:34:0x0103], SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:51:0x00cf A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:8:0x0029  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x003e -> B:4:0x0022). Please report as a decompilation issue!!! */
        @Override // androidx.media3.extractor.wav.WavExtractor.OutputWriter
        public final boolean a(ExtractorInput extractorInput, long j2) {
            byte[] bArr;
            int i2;
            int i3;
            int i4;
            ParsableByteArray parsableByteArray;
            int i5;
            int i6;
            int i7;
            byte[] bArr2;
            int i8;
            int i9;
            int iJ;
            int iMin;
            int[] iArr;
            int i10;
            int i11;
            int i12;
            byte b2;
            int i13;
            int i14;
            int i15;
            int i16;
            int i17;
            int i18;
            int i19 = this.f17203k;
            WavFormat wavFormat = this.f17197c;
            int i20 = i19 / (wavFormat.f17211b * 2);
            int i21 = this.g;
            int i22 = this.d;
            int iG = Util.g(i21 - i20, i22);
            int i23 = wavFormat.d;
            int i24 = wavFormat.d;
            int i25 = iG * i23;
            boolean z = j2 == 0;
            while (true) {
                bArr = this.f17198e;
                if (z && (i17 = this.f17201i) < i25) {
                    i18 = extractorInput.read(bArr, this.f17201i, (int) Math.min(i25 - i17, j2));
                    if (i18 == -1) {
                        break;
                    }
                    this.f17201i += i18;
                    bArr = this.f17198e;
                    if (z) {
                    }
                }
                i2 = this.f17201i / i24;
                if (i2 > 0) {
                    i4 = 0;
                    while (true) {
                        parsableByteArray = this.f17199f;
                        if (i4 < i2) {
                            break;
                        }
                        i6 = 0;
                        while (true) {
                            i7 = wavFormat.f17211b;
                            if (i6 < i7) {
                                bArr2 = parsableByteArray.f14194a;
                                int i26 = (i6 * 4) + (i4 * i24);
                                i8 = (i7 * 4) + i26;
                                i9 = (i24 / i7) - 4;
                                iJ = (short) ((bArr[i26] & 255) | ((bArr[i26 + 1] & 255) << 8));
                                int i27 = i2;
                                iMin = Math.min(bArr[i26 + 2] & 255, 88);
                                iArr = n;
                                i10 = iArr[iMin];
                                i11 = ((i4 * i22 * i7) + i6) * 2;
                                bArr2[i11] = (byte) (iJ & 255);
                                bArr2[i11 + 1] = (byte) (iJ >> 8);
                                int i28 = i4;
                                i12 = 0;
                                while (i12 < i9 * 2) {
                                    b2 = bArr[((i12 / 8) * i7 * 4) + i8 + ((i12 / 2) % 4)];
                                    i13 = i12;
                                    i14 = b2 & 255;
                                    if (i13 % 2 == 0) {
                                        i15 = b2 & 15;
                                    } else {
                                        i15 = i14 >> 4;
                                    }
                                    i16 = ((((i15 & 7) * 2) + 1) * i10) >> 3;
                                    if ((i15 & 8) != 0) {
                                        i16 = -i16;
                                    }
                                    iJ = Util.j(iJ + i16, -32768, 32767);
                                    i11 = (i7 * 2) + i11;
                                    bArr2[i11] = (byte) (iJ & 255);
                                    bArr2[i11 + 1] = (byte) (iJ >> 8);
                                    iMin = Util.j(iMin + m[i15], 0, 88);
                                    i10 = iArr[iMin];
                                    i12 = i13 + 1;
                                }
                                i6++;
                                i2 = i27;
                                i4 = i28;
                            }
                        }
                        i4++;
                    }
                    int i29 = i2;
                    int i30 = i22 * i29 * 2 * wavFormat.f17211b;
                    parsableByteArray.N(0);
                    parsableByteArray.M(i30);
                    this.f17201i -= i29 * i24;
                    int i31 = parsableByteArray.f14196c;
                    this.f17196b.f(i31, parsableByteArray);
                    i5 = this.f17203k + i31;
                    this.f17203k = i5;
                    if (i5 / (wavFormat.f17211b * 2) >= i21) {
                        d(i21);
                    }
                }
                if (z && (i3 = this.f17203k / (wavFormat.f17211b * 2)) > 0) {
                    d(i3);
                }
                return z;
            }
            while (true) {
                bArr = this.f17198e;
                if (z) {
                }
                i2 = this.f17201i / i24;
                if (i2 > 0) {
                    i4 = 0;
                    while (true) {
                        parsableByteArray = this.f17199f;
                        if (i4 < i2) {
                            break;
                            break;
                        }
                        i6 = 0;
                        while (true) {
                            i7 = wavFormat.f17211b;
                            if (i6 < i7) {
                                bArr2 = parsableByteArray.f14194a;
                                int i210 = (i6 * 4) + (i4 * i24);
                                i8 = (i7 * 4) + i210;
                                i9 = (i24 / i7) - 4;
                                iJ = (short) ((bArr[i210] & 255) | ((bArr[i210 + 1] & 255) << 8));
                                int i211 = i2;
                                iMin = Math.min(bArr[i210 + 2] & 255, 88);
                                iArr = n;
                                i10 = iArr[iMin];
                                i11 = ((i4 * i22 * i7) + i6) * 2;
                                bArr2[i11] = (byte) (iJ & 255);
                                bArr2[i11 + 1] = (byte) (iJ >> 8);
                                int i212 = i4;
                                i12 = 0;
                                while (i12 < i9 * 2) {
                                    b2 = bArr[((i12 / 8) * i7 * 4) + i8 + ((i12 / 2) % 4)];
                                    i13 = i12;
                                    i14 = b2 & 255;
                                    if (i13 % 2 == 0) {
                                        i15 = b2 & 15;
                                    } else {
                                        i15 = i14 >> 4;
                                    }
                                    i16 = ((((i15 & 7) * 2) + 1) * i10) >> 3;
                                    if ((i15 & 8) != 0) {
                                        i16 = -i16;
                                    }
                                    iJ = Util.j(iJ + i16, -32768, 32767);
                                    i11 = (i7 * 2) + i11;
                                    bArr2[i11] = (byte) (iJ & 255);
                                    bArr2[i11 + 1] = (byte) (iJ >> 8);
                                    iMin = Util.j(iMin + m[i15], 0, 88);
                                    i10 = iArr[iMin];
                                    i12 = i13 + 1;
                                }
                                i6++;
                                i2 = i211;
                                i4 = i212;
                            }
                        }
                        i4++;
                    }
                    int i213 = i2;
                    int i32 = i22 * i213 * 2 * wavFormat.f17211b;
                    parsableByteArray.N(0);
                    parsableByteArray.M(i32);
                    this.f17201i -= i213 * i24;
                    int i33 = parsableByteArray.f14196c;
                    this.f17196b.f(i33, parsableByteArray);
                    i5 = this.f17203k + i33;
                    this.f17203k = i5;
                    if (i5 / (wavFormat.f17211b * 2) >= i21) {
                        d(i21);
                    }
                }
                if (z) {
                    d(i3);
                }
                return z;
                this.f17201i += i18;
            }
        }

        @Override // androidx.media3.extractor.wav.WavExtractor.OutputWriter
        public final void b(int i2, long j2) {
            WavSeekMap wavSeekMap = new WavSeekMap(this.f17197c, this.d, i2, j2);
            this.f17195a.j(wavSeekMap);
            Format format = this.f17200h;
            TrackOutput trackOutput = this.f17196b;
            trackOutput.b(format);
            trackOutput.e(wavSeekMap.f17222e);
        }

        @Override // androidx.media3.extractor.wav.WavExtractor.OutputWriter
        public final void c(long j2) {
            this.f17201i = 0;
            this.f17202j = j2;
            this.f17203k = 0;
            this.l = 0L;
        }

        public final void d(int i2) {
            long j2 = this.f17202j;
            long j3 = this.l;
            WavFormat wavFormat = this.f17197c;
            long j4 = wavFormat.f17212c;
            String str = Util.f14242a;
            long jZ = j2 + Util.Z(j3, 1000000L, j4, RoundingMode.DOWN);
            int i3 = i2 * 2 * wavFormat.f17211b;
            this.f17196b.g(jZ, 1, i3, this.f17203k - i3, null);
            this.l += (long) i2;
            this.f17203k -= i3;
        }
    }

    public interface OutputWriter {
        boolean a(ExtractorInput extractorInput, long j2);

        void b(int i2, long j2);

        void c(long j2);
    }

    public static final class PassthroughOutputWriter implements OutputWriter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ExtractorOutput f17204a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TrackOutput f17205b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final WavFormat f17206c;
        public final Format d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f17207e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f17208f;
        public int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public long f17209h;

        public PassthroughOutputWriter(ExtractorOutput extractorOutput, TrackOutput trackOutput, WavFormat wavFormat, String str, int i2) throws ParserException {
            this.f17204a = extractorOutput;
            this.f17205b = trackOutput;
            this.f17206c = wavFormat;
            int i3 = wavFormat.f17211b;
            int i4 = wavFormat.f17212c;
            int i5 = (i3 * wavFormat.f17213e) / 8;
            int i6 = wavFormat.d;
            if (i6 != i5) {
                throw ParserException.a(null, "Expected block size: " + i5 + "; got: " + i6);
            }
            int i7 = i4 * i5;
            int i8 = i7 * 8;
            int iMax = Math.max(i5, i7 / 10);
            this.f17207e = iMax;
            Format.Builder builder = new Format.Builder();
            builder.m = MimeTypes.p("audio/wav");
            builder.n = MimeTypes.p(str);
            builder.f13769h = i8;
            builder.f13770i = i8;
            builder.o = iMax;
            builder.F = wavFormat.f17211b;
            builder.G = i4;
            builder.H = i2;
            this.d = new Format(builder);
        }

        @Override // androidx.media3.extractor.wav.WavExtractor.OutputWriter
        public final boolean a(ExtractorInput extractorInput, long j2) {
            int i2;
            int i3;
            long j3 = j2;
            while (j3 > 0 && (i2 = this.g) < (i3 = this.f17207e)) {
                int iC = this.f17205b.c(extractorInput, (int) Math.min(i3 - i2, j3), true);
                if (iC == -1) {
                    j3 = 0;
                } else {
                    this.g += iC;
                    j3 -= (long) iC;
                }
            }
            WavFormat wavFormat = this.f17206c;
            int i4 = wavFormat.d;
            int i5 = this.g / i4;
            if (i5 > 0) {
                long j4 = this.f17208f;
                long j5 = this.f17209h;
                long j6 = wavFormat.f17212c;
                String str = Util.f14242a;
                long jZ = j4 + Util.Z(j5, 1000000L, j6, RoundingMode.DOWN);
                int i6 = i5 * i4;
                int i7 = this.g - i6;
                this.f17205b.g(jZ, 1, i6, i7, null);
                this.f17209h += (long) i5;
                this.g = i7;
            }
            return j3 <= 0;
        }

        @Override // androidx.media3.extractor.wav.WavExtractor.OutputWriter
        public final void b(int i2, long j2) {
            WavSeekMap wavSeekMap = new WavSeekMap(this.f17206c, 1, i2, j2);
            this.f17204a.j(wavSeekMap);
            Format format = this.d;
            TrackOutput trackOutput = this.f17205b;
            trackOutput.b(format);
            trackOutput.e(wavSeekMap.f17222e);
        }

        @Override // androidx.media3.extractor.wav.WavExtractor.OutputWriter
        public final void c(long j2) {
            this.f17208f = j2;
            this.g = 0;
            this.f17209h = 0L;
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final void a(long j2, long j3) {
        this.f17192c = j2 == 0 ? 0 : 4;
        OutputWriter outputWriter = this.f17193e;
        if (outputWriter != null) {
            outputWriter.c(j3);
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final void b(ExtractorOutput extractorOutput) {
        this.f17190a = extractorOutput;
        this.f17191b = extractorOutput.r(0, 1);
        extractorOutput.n();
    }

    @Override // androidx.media3.extractor.Extractor
    public final boolean d(ExtractorInput extractorInput) {
        return WavHeaderReader.a(extractorInput);
    }

    /* JADX WARN: Code duplicated, block: B:84:0x0229  */
    @Override // androidx.media3.extractor.Extractor
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) throws ParserException {
        byte[] bArr;
        int i2;
        this.f17191b.getClass();
        String str = Util.f14242a;
        int i3 = this.f17192c;
        int iC = 4;
        if (i3 == 0) {
            Preconditions.q(extractorInput.getPosition() == 0);
            int i4 = this.f17194f;
            if (i4 != -1) {
                extractorInput.m(i4);
                this.f17192c = 4;
                return 0;
            }
            if (!WavHeaderReader.a(extractorInput)) {
                throw ParserException.a(null, "Unsupported or unrecognized wav file type.");
            }
            extractorInput.m((int) (extractorInput.j() - extractorInput.getPosition()));
            this.f17192c = 1;
            return 0;
        }
        long jP = -1;
        if (i3 == 1) {
            ParsableByteArray parsableByteArray = new ParsableByteArray(8);
            WavHeaderReader.ChunkHeader chunkHeaderA = WavHeaderReader.ChunkHeader.a(extractorInput, parsableByteArray);
            if (chunkHeaderA.f17217a != 1685272116) {
                extractorInput.g();
            } else {
                extractorInput.k(8);
                parsableByteArray.N(0);
                extractorInput.b(0, 8, parsableByteArray.f14194a);
                jP = parsableByteArray.p();
                extractorInput.m(((int) chunkHeaderA.f17218b) + 8);
            }
            this.d = jP;
            this.f17192c = 2;
            return 0;
        }
        if (i3 != 2) {
            if (i3 != 3) {
                if (i3 != 4) {
                    r81.b();
                    return 0;
                }
                Preconditions.q(this.g != -1);
                long position = this.g - extractorInput.getPosition();
                OutputWriter outputWriter = this.f17193e;
                outputWriter.getClass();
                return outputWriter.a(extractorInput, position) ? -1 : 0;
            }
            extractorInput.g();
            WavHeaderReader.ChunkHeader chunkHeaderB = WavHeaderReader.b(1684108385, extractorInput, new ParsableByteArray(8));
            extractorInput.m(8);
            Pair pairCreate = Pair.create(Long.valueOf(extractorInput.getPosition()), Long.valueOf(chunkHeaderB.f17218b));
            this.f17194f = ((Long) pairCreate.first).intValue();
            long jLongValue = ((Long) pairCreate.second).longValue();
            long j2 = this.d;
            if (j2 != -1 && jLongValue == BodyPartID.bodyIdMax) {
                jLongValue = j2;
            }
            this.g = ((long) this.f17194f) + jLongValue;
            long length = extractorInput.getLength();
            if (length != -1 && this.g > length) {
                Log.g("Data exceeds input length: " + this.g + ", " + length);
                this.g = length;
            }
            OutputWriter outputWriter2 = this.f17193e;
            outputWriter2.getClass();
            outputWriter2.b(this.f17194f, this.g);
            this.f17192c = 4;
            return 0;
        }
        ParsableByteArray parsableByteArray2 = new ParsableByteArray(16);
        long j3 = WavHeaderReader.b(1718449184, extractorInput, parsableByteArray2).f17218b;
        Preconditions.q(j3 >= 16);
        extractorInput.b(0, 16, parsableByteArray2.f14194a);
        parsableByteArray2.N(0);
        int iT = parsableByteArray2.t();
        int iT2 = parsableByteArray2.t();
        int iS = parsableByteArray2.s();
        int iS2 = parsableByteArray2.s();
        int iT3 = parsableByteArray2.t();
        int iT4 = parsableByteArray2.t();
        int i5 = ((int) j3) - 16;
        if (i5 > 0) {
            bArr = new byte[i5];
            extractorInput.b(0, i5, bArr);
            if (iT == 65534 && i5 == 24) {
                ParsableByteArray parsableByteArray3 = new ParsableByteArray(bArr);
                parsableByteArray3.t();
                int iT5 = parsableByteArray3.t();
                if (iT5 != 0 && iT5 != iT4) {
                    throw ParserException.c("validBits ( " + iT5 + ")  != bitsPerSample( " + iT4 + ") are not supported");
                }
                int iS3 = parsableByteArray3.s();
                if ((iS3 >> 18) != 0) {
                    throw ParserException.c("invalid channel mask " + iS3);
                }
                if (iS3 != 0 && Integer.bitCount(iS3) != iT2) {
                    throw ParserException.c("invalid number of channels (" + Integer.bitCount(iS3) + ") in channel mask " + iS3);
                }
                iT = parsableByteArray3.t();
                byte[] bArr2 = new byte[14];
                parsableByteArray3.k(0, 14, bArr2);
                if (!Arrays.equals(bArr2, WavHeaderReader.f17215a) && !Arrays.equals(bArr2, WavHeaderReader.f17216b)) {
                    throw ParserException.c("invalid wav format extension guid");
                }
            }
        } else {
            bArr = Util.f14243b;
        }
        byte[] bArr3 = bArr;
        int i6 = iT;
        extractorInput.m((int) (extractorInput.j() - extractorInput.getPosition()));
        WavFormat wavFormat = new WavFormat(i6, iT2, iS, iS2, iT3, iT4, bArr3);
        int i7 = wavFormat.f17210a;
        if (i7 == 17) {
            this.f17193e = new ImaAdPcmOutputWriter(this.f17190a, this.f17191b, wavFormat);
        } else if (i7 == 6) {
            this.f17193e = new PassthroughOutputWriter(this.f17190a, this.f17191b, wavFormat, "audio/g711-alaw", -1);
        } else if (i7 == 7) {
            this.f17193e = new PassthroughOutputWriter(this.f17190a, this.f17191b, wavFormat, "audio/g711-mlaw", -1);
        } else {
            int i8 = wavFormat.f17213e;
            if (i7 == 1) {
                iC = Util.C(i8, ByteOrder.LITTLE_ENDIAN);
                i2 = iC;
            } else {
                if (i7 != 3) {
                    if (i7 == 65534) {
                        iC = Util.C(i8, ByteOrder.LITTLE_ENDIAN);
                        i2 = iC;
                    }
                } else if (i8 == 32) {
                    i2 = iC;
                }
                i2 = 0;
            }
            if (i2 == 0) {
                throw ParserException.c("Unsupported WAV format type: " + i7);
            }
            this.f17193e = new PassthroughOutputWriter(this.f17190a, this.f17191b, wavFormat, "audio/raw", i2);
        }
        this.f17192c = 3;
        return 0;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void release() {
    }
}
