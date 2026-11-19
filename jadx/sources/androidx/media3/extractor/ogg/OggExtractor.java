package androidx.media3.extractor.ogg;

import androidx.media3.common.Format;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.VorbisUtil;
import defpackage.r81;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class OggExtractor implements Extractor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ExtractorOutput f16636a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public StreamReader f16637b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f16638c;

    @Override // androidx.media3.extractor.Extractor
    public final void a(long j2, long j3) {
        StreamReader streamReader = this.f16637b;
        if (streamReader != null) {
            OggPacket oggPacket = streamReader.f16648a;
            OggPageHeader oggPageHeader = oggPacket.f16639a;
            oggPageHeader.f16643a = 0;
            oggPageHeader.f16644b = 0L;
            oggPageHeader.f16645c = 0;
            oggPageHeader.d = 0;
            oggPageHeader.f16646e = 0;
            oggPacket.f16640b.K(0);
            oggPacket.f16641c = -1;
            oggPacket.f16642e = false;
            if (j2 == 0) {
                streamReader.d(!streamReader.l);
                return;
            }
            if (streamReader.f16653h != 0) {
                long j4 = (((long) streamReader.f16654i) * j3) / 1000000;
                streamReader.f16651e = j4;
                OggSeeker oggSeeker = streamReader.d;
                String str = Util.f14242a;
                oggSeeker.c(j4);
                streamReader.f16653h = 2;
            }
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final void b(ExtractorOutput extractorOutput) {
        this.f16636a = extractorOutput;
    }

    @Override // androidx.media3.extractor.Extractor
    public final boolean d(ExtractorInput extractorInput) {
        try {
            return g(extractorInput);
        } catch (ParserException unused) {
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:70:0x016c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:71:0x016d  */
    @Override // androidx.media3.extractor.Extractor
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) throws ParserException {
        byte[] bArr;
        this.f16636a.getClass();
        if (this.f16637b == null) {
            if (!g(extractorInput)) {
                throw ParserException.a(null, "Failed to determine bitstream type");
            }
            extractorInput.g();
        }
        if (!this.f16638c) {
            TrackOutput trackOutputR = this.f16636a.r(0, 1);
            this.f16636a.n();
            StreamReader streamReader = this.f16637b;
            streamReader.f16650c = this.f16636a;
            streamReader.f16649b = trackOutputR;
            streamReader.d(true);
            this.f16638c = true;
        }
        StreamReader streamReader2 = this.f16637b;
        OggPacket oggPacket = streamReader2.f16648a;
        streamReader2.f16649b.getClass();
        String str = Util.f14242a;
        int i2 = streamReader2.f16653h;
        if (i2 != 0) {
            if (i2 == 1) {
                extractorInput.m((int) streamReader2.f16652f);
                streamReader2.f16653h = 2;
                return 0;
            }
            if (i2 != 2) {
                if (i2 == 3) {
                    return -1;
                }
                r81.b();
                return 0;
            }
            long jA = streamReader2.d.a(extractorInput);
            if (jA >= 0) {
                positionHolder.f16190a = jA;
                return 1;
            }
            if (jA < -1) {
                streamReader2.a(-(jA + 2));
            }
            if (!streamReader2.l) {
                SeekMap seekMapB = streamReader2.d.b();
                seekMapB.getClass();
                streamReader2.f16650c.j(seekMapB);
                streamReader2.f16649b.e(seekMapB.h());
                streamReader2.l = true;
            }
            if (streamReader2.f16656k <= 0 && !oggPacket.b(extractorInput)) {
                streamReader2.f16653h = 3;
                return -1;
            }
            streamReader2.f16656k = 0L;
            ParsableByteArray parsableByteArray = oggPacket.f16640b;
            long jB = streamReader2.b(parsableByteArray);
            if (jB >= 0) {
                long j2 = streamReader2.g;
                if (j2 + jB >= streamReader2.f16651e) {
                    long j3 = (j2 * 1000000) / ((long) streamReader2.f16654i);
                    streamReader2.f16649b.f(parsableByteArray.f14196c, parsableByteArray);
                    streamReader2.f16649b.g(j3, 1, parsableByteArray.f14196c, 0, null);
                    streamReader2.f16651e = -1L;
                }
            }
            streamReader2.g += jB;
            return 0;
        }
        while (true) {
            boolean zB = oggPacket.b(extractorInput);
            ParsableByteArray parsableByteArray2 = oggPacket.f16640b;
            if (!zB) {
                streamReader2.f16653h = 3;
                return -1;
            }
            long position = extractorInput.getPosition();
            long j4 = streamReader2.f16652f;
            streamReader2.f16656k = position - j4;
            if (!streamReader2.c(parsableByteArray2, j4, streamReader2.f16655j)) {
                Format format = streamReader2.f16655j.f16657a;
                streamReader2.f16654i = format.H;
                if (!streamReader2.m) {
                    streamReader2.f16649b.b(format);
                    streamReader2.m = true;
                }
                FlacReader.FlacOggSeeker flacOggSeeker = streamReader2.f16655j.f16658b;
                if (flacOggSeeker == null) {
                    if (extractorInput.getLength() == -1) {
                        streamReader2.d = new StreamReader.UnseekableOggSeeker();
                    } else {
                        OggPageHeader oggPageHeader = oggPacket.f16639a;
                        streamReader2.d = new DefaultOggSeeker(streamReader2, streamReader2.f16652f, extractorInput.getLength(), oggPageHeader.d + oggPageHeader.f16646e, oggPageHeader.f16644b, (oggPageHeader.f16643a & 4) != 0);
                    }
                    streamReader2.f16653h = 2;
                    bArr = parsableByteArray2.f14194a;
                    if (bArr.length == 65025) {
                        return 0;
                    }
                    parsableByteArray2.L(parsableByteArray2.f14196c, Arrays.copyOf(bArr, Math.max(65025, parsableByteArray2.f14196c)));
                    return 0;
                }
                streamReader2.d = flacOggSeeker;
                streamReader2.f16653h = 2;
                bArr = parsableByteArray2.f14194a;
                if (bArr.length == 65025) {
                    return 0;
                }
                parsableByteArray2.L(parsableByteArray2.f14196c, Arrays.copyOf(bArr, Math.max(65025, parsableByteArray2.f14196c)));
                return 0;
            }
            streamReader2.f16652f = extractorInput.getPosition();
        }
    }

    public final boolean g(ExtractorInput extractorInput) {
        boolean zC;
        OggPageHeader oggPageHeader = new OggPageHeader();
        if (oggPageHeader.a(extractorInput, true) && (oggPageHeader.f16643a & 2) == 2) {
            int iMin = Math.min(oggPageHeader.f16646e, 8);
            ParsableByteArray parsableByteArray = new ParsableByteArray(iMin);
            extractorInput.b(0, iMin, parsableByteArray.f14194a);
            parsableByteArray.N(0);
            if (parsableByteArray.a() >= 5 && parsableByteArray.A() == 127 && parsableByteArray.C() == 1179402563) {
                this.f16637b = new FlacReader();
                return true;
            }
            parsableByteArray.N(0);
            try {
                zC = VorbisUtil.c(1, parsableByteArray, true);
            } catch (ParserException unused) {
                zC = false;
            }
            if (zC) {
                this.f16637b = new VorbisReader();
            } else {
                parsableByteArray.N(0);
                if (OpusReader.e(parsableByteArray, OpusReader.o)) {
                    this.f16637b = new OpusReader();
                }
            }
            return true;
        }
        return false;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void release() {
    }
}
