package androidx.media3.extractor.flac;

import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.DefaultExtractorInput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.FlacFrameReader;
import androidx.media3.extractor.FlacMetadataReader;
import androidx.media3.extractor.FlacSeekTableSeekMap;
import androidx.media3.extractor.FlacStreamMetadata;
import androidx.media3.extractor.Id3Peeker;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.VorbisUtil;
import androidx.media3.extractor.metadata.flac.PictureFrame;
import androidx.media3.extractor.metadata.id3.Id3Decoder;
import com.google.common.collect.ImmutableList;
import defpackage.ct0;
import defpackage.d21;
import defpackage.r81;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class FlacExtractor implements Extractor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f16278a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ParsableByteArray f16279b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f16280c;
    public final FlacFrameReader.SampleNumberHolder d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ExtractorOutput f16281e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public TrackOutput f16282f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Metadata f16283h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public FlacStreamMetadata f16284i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f16285j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f16286k;
    public FlacBinarySearchSeeker l;
    public int m;
    public long n;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    public FlacExtractor(int i2) {
        this.f16278a = new byte[42];
        this.f16279b = new ParsableByteArray(new byte[32768], 0);
        this.f16280c = (i2 & 1) != 0;
        this.d = new FlacFrameReader.SampleNumberHolder();
        this.g = 0;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void a(long j2, long j3) {
        if (j2 == 0) {
            this.g = 0;
        } else {
            FlacBinarySearchSeeker flacBinarySearchSeeker = this.l;
            if (flacBinarySearchSeeker != null) {
                flacBinarySearchSeeker.c(j3);
            }
        }
        this.n = j3 != 0 ? -1L : 0L;
        this.m = 0;
        this.f16279b.K(0);
    }

    @Override // androidx.media3.extractor.Extractor
    public final void b(ExtractorOutput extractorOutput) {
        this.f16281e = extractorOutput;
        this.f16282f = extractorOutput.r(0, 1);
        extractorOutput.n();
    }

    @Override // androidx.media3.extractor.Extractor
    public final boolean d(ExtractorInput extractorInput) {
        Metadata metadataA = new Id3Peeker().a(extractorInput, Id3Decoder.f16379b, 0);
        if (metadataA != null) {
            int length = metadataA.f13897a.length;
        }
        ParsableByteArray parsableByteArray = new ParsableByteArray(4);
        ((DefaultExtractorInput) extractorInput).i(false, 0, 4, parsableByteArray.f14194a);
        return parsableByteArray.C() == 1716281667;
    }

    @Override // androidx.media3.extractor.Extractor
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) throws ParserException {
        byte[] bArr;
        SeekMap unseekable;
        boolean z;
        long j2;
        boolean zB;
        int i2 = this.g;
        Metadata metadata = null;
        int i3 = 0;
        if (i2 == 0) {
            extractorInput.g();
            long j3 = extractorInput.j();
            Metadata metadataA = new Id3Peeker().a(extractorInput, !this.f16280c ? null : Id3Decoder.f16379b, 0);
            if (metadataA != null && metadataA.f13897a.length != 0) {
                metadata = metadataA;
            }
            extractorInput.m((int) (extractorInput.j() - j3));
            this.f16283h = metadata;
            this.g = 1;
            return 0;
        }
        byte[] bArr2 = this.f16278a;
        if (i2 == 1) {
            extractorInput.b(0, bArr2.length, bArr2);
            extractorInput.g();
            this.g = 2;
            return 0;
        }
        int i4 = 3;
        if (i2 == 2) {
            ParsableByteArray parsableByteArray = new ParsableByteArray(4);
            extractorInput.readFully(parsableByteArray.f14194a, 0, 4);
            if (parsableByteArray.C() != 1716281667) {
                throw ParserException.a(null, "Failed to read FLAC stream marker.");
            }
            this.g = 3;
            return 0;
        }
        int i5 = 7;
        if (i2 == 3) {
            FlacMetadataReader.FlacStreamMetadataHolder flacStreamMetadataHolder = new FlacMetadataReader.FlacStreamMetadataHolder(this.f16284i);
            boolean z2 = false;
            while (!z2) {
                extractorInput.g();
                ParsableBitArray parsableBitArray = new ParsableBitArray(new byte[4]);
                extractorInput.b(i3, 4, parsableBitArray.f14189a);
                boolean zF = parsableBitArray.f();
                int iG = parsableBitArray.g(i5);
                int iG2 = parsableBitArray.g(24) + 4;
                if (iG == 0) {
                    byte[] bArr3 = new byte[38];
                    extractorInput.readFully(bArr3, i3, 38);
                    flacStreamMetadataHolder.f16147a = new FlacStreamMetadata(bArr3, 4);
                    bArr = bArr2;
                } else {
                    FlacStreamMetadata flacStreamMetadata = flacStreamMetadataHolder.f16147a;
                    if (flacStreamMetadata == null) {
                        ct0.c();
                        return 0;
                    }
                    Metadata metadata2 = flacStreamMetadata.l;
                    if (iG == i4) {
                        ParsableByteArray parsableByteArray2 = new ParsableByteArray(iG2);
                        extractorInput.readFully(parsableByteArray2.f14194a, i3, iG2);
                        bArr = bArr2;
                        flacStreamMetadataHolder.f16147a = new FlacStreamMetadata(flacStreamMetadata.f16150a, flacStreamMetadata.f16151b, flacStreamMetadata.f16152c, flacStreamMetadata.d, flacStreamMetadata.f16153e, flacStreamMetadata.g, flacStreamMetadata.f16155h, flacStreamMetadata.f16157j, FlacMetadataReader.a(parsableByteArray2), flacStreamMetadata.l);
                    } else {
                        bArr = bArr2;
                        if (iG == 4) {
                            ParsableByteArray parsableByteArray3 = new ParsableByteArray(iG2);
                            extractorInput.readFully(parsableByteArray3.f14194a, 0, iG2);
                            parsableByteArray3.O(4);
                            Metadata metadataA2 = VorbisUtil.a(Arrays.asList(VorbisUtil.b(parsableByteArray3, false, false).f16221a));
                            if (metadata2 != null) {
                                metadataA2 = metadata2.b(metadataA2);
                            }
                            flacStreamMetadataHolder.f16147a = new FlacStreamMetadata(flacStreamMetadata.f16150a, flacStreamMetadata.f16151b, flacStreamMetadata.f16152c, flacStreamMetadata.d, flacStreamMetadata.f16153e, flacStreamMetadata.g, flacStreamMetadata.f16155h, flacStreamMetadata.f16157j, flacStreamMetadata.f16158k, metadataA2);
                        } else if (iG == 6) {
                            ParsableByteArray parsableByteArray4 = new ParsableByteArray(iG2);
                            extractorInput.readFully(parsableByteArray4.f14194a, 0, iG2);
                            parsableByteArray4.O(4);
                            Metadata metadata3 = new Metadata(ImmutableList.A(PictureFrame.d(parsableByteArray4)));
                            if (metadata2 != null) {
                                metadata3 = metadata2.b(metadata3);
                            }
                            flacStreamMetadataHolder.f16147a = new FlacStreamMetadata(flacStreamMetadata.f16150a, flacStreamMetadata.f16151b, flacStreamMetadata.f16152c, flacStreamMetadata.d, flacStreamMetadata.f16153e, flacStreamMetadata.g, flacStreamMetadata.f16155h, flacStreamMetadata.f16157j, flacStreamMetadata.f16158k, metadata3);
                        } else {
                            extractorInput.m(iG2);
                        }
                    }
                }
                FlacStreamMetadata flacStreamMetadata2 = flacStreamMetadataHolder.f16147a;
                String str = Util.f14242a;
                this.f16284i = flacStreamMetadata2;
                z2 = zF;
                bArr2 = bArr;
                i3 = 0;
                i4 = 3;
                i5 = 7;
            }
            this.f16284i.getClass();
            this.f16285j = Math.max(this.f16284i.f16152c, 6);
            Format formatC = this.f16284i.c(bArr2, this.f16283h);
            TrackOutput trackOutput = this.f16282f;
            Format.Builder builderA = formatC.a();
            builderA.m = MimeTypes.p("audio/flac");
            d21.w(builderA, trackOutput);
            this.f16282f.e(this.f16284i.b());
            this.g = 4;
            return 0;
        }
        if (i2 == 4) {
            extractorInput.g();
            ParsableByteArray parsableByteArray5 = new ParsableByteArray(2);
            extractorInput.b(0, 2, parsableByteArray5.f14194a);
            int iH = parsableByteArray5.H();
            if ((iH >> 2) != 16382) {
                extractorInput.g();
                throw ParserException.a(null, "First frame does not start with sync code.");
            }
            extractorInput.g();
            this.f16286k = iH;
            ExtractorOutput extractorOutput = this.f16281e;
            String str2 = Util.f14242a;
            long position = extractorInput.getPosition();
            long length = extractorInput.getLength();
            this.f16284i.getClass();
            FlacStreamMetadata flacStreamMetadata3 = this.f16284i;
            FlacStreamMetadata.SeekTable seekTable = flacStreamMetadata3.f16158k;
            if (seekTable != null && seekTable.f16159a.length > 0) {
                unseekable = new FlacSeekTableSeekMap(flacStreamMetadata3, position);
            } else if (length == -1 || flacStreamMetadata3.f16157j <= 0) {
                unseekable = new SeekMap.Unseekable(flacStreamMetadata3.b());
            } else {
                FlacBinarySearchSeeker flacBinarySearchSeeker = new FlacBinarySearchSeeker(flacStreamMetadata3, this.f16286k, position, length);
                this.l = flacBinarySearchSeeker;
                unseekable = flacBinarySearchSeeker.f16092a;
            }
            extractorOutput.j(unseekable);
            this.g = 5;
            return 0;
        }
        if (i2 != 5) {
            r81.b();
            return 0;
        }
        this.f16282f.getClass();
        this.f16284i.getClass();
        FlacBinarySearchSeeker flacBinarySearchSeeker2 = this.l;
        if (flacBinarySearchSeeker2 != null && flacBinarySearchSeeker2.f16094c != null) {
            return flacBinarySearchSeeker2.a(extractorInput, positionHolder);
        }
        if (this.n == -1) {
            FlacStreamMetadata flacStreamMetadata4 = this.f16284i;
            extractorInput.g();
            extractorInput.k(1);
            byte[] bArr4 = new byte[1];
            extractorInput.b(0, 1, bArr4);
            z = (bArr4[0] & 1) == 1;
            extractorInput.k(2);
            int i6 = z ? 7 : 6;
            ParsableByteArray parsableByteArray6 = new ParsableByteArray(i6);
            byte[] bArr5 = parsableByteArray6.f14194a;
            int i7 = 0;
            while (i7 < i6) {
                int iD = extractorInput.d(i7, i6 - i7, bArr5);
                if (iD == -1) {
                    break;
                }
                i7 += iD;
            }
            parsableByteArray6.M(i7);
            extractorInput.g();
            FlacFrameReader.SampleNumberHolder sampleNumberHolder = new FlacFrameReader.SampleNumberHolder();
            if (!FlacFrameReader.a(parsableByteArray6, flacStreamMetadata4, z, sampleNumberHolder)) {
                throw ParserException.a(null, null);
            }
            this.n = sampleNumberHolder.f16146a;
            return 0;
        }
        ParsableByteArray parsableByteArray7 = this.f16279b;
        int i8 = parsableByteArray7.f14196c;
        if (i8 < 32768) {
            int i9 = extractorInput.read(parsableByteArray7.f14194a, i8, 32768 - i8);
            z = i9 == -1;
            if (!z) {
                parsableByteArray7.M(i8 + i9);
            } else if (parsableByteArray7.a() == 0) {
                long j4 = this.n * 1000000;
                FlacStreamMetadata flacStreamMetadata5 = this.f16284i;
                String str3 = Util.f14242a;
                this.f16282f.g(j4 / ((long) flacStreamMetadata5.f16153e), 1, this.m, 0, null);
                return -1;
            }
        } else {
            z = false;
        }
        int i10 = parsableByteArray7.f14195b;
        int i11 = this.m;
        int i12 = this.f16285j;
        if (i11 < i12) {
            parsableByteArray7.O(Math.min(i12 - i11, parsableByteArray7.a()));
        }
        this.f16284i.getClass();
        int i13 = parsableByteArray7.f14195b;
        while (true) {
            int i14 = parsableByteArray7.f14196c - 16;
            FlacFrameReader.SampleNumberHolder sampleNumberHolder2 = this.d;
            if (i13 > i14) {
                if (z) {
                    while (true) {
                        int i15 = parsableByteArray7.f14196c;
                        if (i13 <= i15 - this.f16285j) {
                            parsableByteArray7.N(i13);
                            try {
                                zB = FlacFrameReader.b(parsableByteArray7, this.f16284i, this.f16286k, sampleNumberHolder2);
                            } catch (IndexOutOfBoundsException unused) {
                                zB = false;
                            }
                            if (parsableByteArray7.f14195b > parsableByteArray7.f14196c) {
                                zB = false;
                            }
                            if (zB) {
                                parsableByteArray7.N(i13);
                                j2 = sampleNumberHolder2.f16146a;
                                break;
                            }
                            i13++;
                        } else {
                            parsableByteArray7.N(i15);
                        }
                    }
                } else {
                    parsableByteArray7.N(i13);
                }
                j2 = -1;
                break;
            }
            parsableByteArray7.N(i13);
            if (FlacFrameReader.b(parsableByteArray7, this.f16284i, this.f16286k, sampleNumberHolder2)) {
                parsableByteArray7.N(i13);
                j2 = sampleNumberHolder2.f16146a;
                break;
            }
            i13++;
        }
        int i16 = parsableByteArray7.f14195b - i10;
        parsableByteArray7.N(i10);
        this.f16282f.f(i16, parsableByteArray7);
        int i17 = this.m + i16;
        this.m = i17;
        if (j2 != -1) {
            long j5 = this.n * 1000000;
            FlacStreamMetadata flacStreamMetadata6 = this.f16284i;
            String str4 = Util.f14242a;
            this.f16282f.g(j5 / ((long) flacStreamMetadata6.f16153e), 1, i17, 0, null);
            this.m = 0;
            this.n = j2;
        }
        int length2 = parsableByteArray7.f14194a.length - parsableByteArray7.f14196c;
        if (parsableByteArray7.a() < 16 && length2 < 16) {
            int iA = parsableByteArray7.a();
            byte[] bArr6 = parsableByteArray7.f14194a;
            System.arraycopy(bArr6, parsableByteArray7.f14195b, bArr6, 0, iA);
            parsableByteArray7.N(0);
            parsableByteArray7.M(iA);
        }
        return 0;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void release() {
    }

    public FlacExtractor() {
        this(0);
    }
}
