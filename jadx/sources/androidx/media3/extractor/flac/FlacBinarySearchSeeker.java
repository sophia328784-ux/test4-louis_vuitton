package androidx.media3.extractor.flac;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.BinarySearchSeeker;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.FlacFrameReader;
import androidx.media3.extractor.FlacStreamMetadata;
import defpackage.fw;
import java.nio.ByteOrder;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
final class FlacBinarySearchSeeker extends BinarySearchSeeker {

    public static final class FlacTimestampSeeker implements BinarySearchSeeker.TimestampSeeker {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final FlacStreamMetadata f16275a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f16276b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final FlacFrameReader.SampleNumberHolder f16277c = new FlacFrameReader.SampleNumberHolder();

        public FlacTimestampSeeker(FlacStreamMetadata flacStreamMetadata, int i2) {
            this.f16275a = flacStreamMetadata;
            this.f16276b = i2;
        }

        @Override // androidx.media3.extractor.BinarySearchSeeker.TimestampSeeker
        public final BinarySearchSeeker.TimestampSearchResult a(ExtractorInput extractorInput, long j2) {
            long position = extractorInput.getPosition();
            long jC = c(extractorInput);
            long j3 = extractorInput.j();
            extractorInput.k(Math.max(6, this.f16275a.f16152c));
            long jC2 = c(extractorInput);
            long j4 = extractorInput.j();
            if (jC > j2 || jC2 <= j2) {
                return jC2 <= j2 ? new BinarySearchSeeker.TimestampSearchResult(-2, jC2, j4) : new BinarySearchSeeker.TimestampSearchResult(-1, jC, position);
            }
            return new BinarySearchSeeker.TimestampSearchResult(0, -9223372036854775807L, j3);
        }

        public final long c(ExtractorInput extractorInput) {
            FlacFrameReader.SampleNumberHolder sampleNumberHolder;
            FlacStreamMetadata flacStreamMetadata;
            int iD;
            while (true) {
                long j2 = extractorInput.j();
                long length = extractorInput.getLength() - 6;
                sampleNumberHolder = this.f16277c;
                flacStreamMetadata = this.f16275a;
                if (j2 >= length) {
                    break;
                }
                long j3 = extractorInput.j();
                ParsableByteArray parsableByteArray = new ParsableByteArray(17);
                int i2 = 0;
                boolean zB = false;
                extractorInput.b(0, 2, parsableByteArray.f14194a);
                char cG = parsableByteArray.g(0, ByteOrder.BIG_ENDIAN);
                int i3 = this.f16276b;
                if (cG != i3) {
                    extractorInput.g();
                    extractorInput.k((int) (j3 - extractorInput.getPosition()));
                } else {
                    byte[] bArr = parsableByteArray.f14194a;
                    while (i2 < 15 && (iD = extractorInput.d(2 + i2, 15 - i2, bArr)) != -1) {
                        i2 += iD;
                    }
                    parsableByteArray.M(i2 + 2);
                    extractorInput.g();
                    extractorInput.k((int) (j3 - extractorInput.getPosition()));
                    zB = FlacFrameReader.b(parsableByteArray, flacStreamMetadata, i3, sampleNumberHolder);
                }
                if (zB) {
                    break;
                }
                extractorInput.k(1);
            }
            if (extractorInput.j() < extractorInput.getLength() - 6) {
                return sampleNumberHolder.f16146a;
            }
            extractorInput.k((int) (extractorInput.getLength() - extractorInput.j()));
            return flacStreamMetadata.f16157j;
        }
    }

    public FlacBinarySearchSeeker(FlacStreamMetadata flacStreamMetadata, int i2, long j2, long j3) {
        long j4;
        long j5;
        Objects.requireNonNull(flacStreamMetadata);
        int i3 = flacStreamMetadata.f16152c;
        fw fwVar = new fw(flacStreamMetadata, 3);
        FlacTimestampSeeker flacTimestampSeeker = new FlacTimestampSeeker(flacStreamMetadata, i2);
        long jB = flacStreamMetadata.b();
        long j6 = flacStreamMetadata.f16157j;
        int i4 = flacStreamMetadata.d;
        if (i4 > 0) {
            j4 = (((long) i4) + ((long) i3)) / 2;
            j5 = 1;
        } else {
            int i5 = flacStreamMetadata.f16150a;
            j4 = ((((i5 != flacStreamMetadata.f16151b || i5 <= 0) ? 4096L : i5) * ((long) flacStreamMetadata.g)) * ((long) flacStreamMetadata.f16155h)) / 8;
            j5 = 64;
        }
        super(fwVar, flacTimestampSeeker, jB, j6, j2, j3, j4 + j5, Math.max(6, i3));
    }
}
