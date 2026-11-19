package androidx.media3.extractor.ogg;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.FlacFrameReader;
import androidx.media3.extractor.FlacMetadataReader;
import androidx.media3.extractor.FlacSeekTableSeekMap;
import androidx.media3.extractor.FlacStreamMetadata;
import androidx.media3.extractor.SeekMap;
import com.google.common.base.Preconditions;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class FlacReader extends StreamReader {
    public FlacStreamMetadata n;
    public FlacOggSeeker o;

    public static final class FlacOggSeeker implements OggSeeker {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final FlacStreamMetadata f16633a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final FlacStreamMetadata.SeekTable f16634b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f16635c = -1;
        public long d = -1;

        public FlacOggSeeker(FlacStreamMetadata flacStreamMetadata, FlacStreamMetadata.SeekTable seekTable) {
            this.f16633a = flacStreamMetadata;
            this.f16634b = seekTable;
        }

        @Override // androidx.media3.extractor.ogg.OggSeeker
        public final long a(ExtractorInput extractorInput) {
            long j2 = this.d;
            if (j2 < 0) {
                return -1L;
            }
            long j3 = -(j2 + 2);
            this.d = -1L;
            return j3;
        }

        @Override // androidx.media3.extractor.ogg.OggSeeker
        public final SeekMap b() {
            Preconditions.q(this.f16635c != -1);
            return new FlacSeekTableSeekMap(this.f16633a, this.f16635c);
        }

        @Override // androidx.media3.extractor.ogg.OggSeeker
        public final void c(long j2) {
            long[] jArr = this.f16634b.f16159a;
            this.d = jArr[Util.f(jArr, j2, true)];
        }
    }

    @Override // androidx.media3.extractor.ogg.StreamReader
    public final long b(ParsableByteArray parsableByteArray) {
        byte[] bArr = parsableByteArray.f14194a;
        if (bArr[0] != -1) {
            return -1L;
        }
        int i2 = (bArr[2] & 255) >> 4;
        if (i2 == 6 || i2 == 7) {
            parsableByteArray.O(4);
            parsableByteArray.I();
        }
        int iC = FlacFrameReader.c(i2, parsableByteArray);
        parsableByteArray.N(0);
        return iC;
    }

    @Override // androidx.media3.extractor.ogg.StreamReader
    public final boolean c(ParsableByteArray parsableByteArray, long j2, StreamReader.SetupData setupData) {
        byte[] bArr = parsableByteArray.f14194a;
        FlacStreamMetadata flacStreamMetadata = this.n;
        if (flacStreamMetadata == null) {
            FlacStreamMetadata flacStreamMetadata2 = new FlacStreamMetadata(bArr, 17);
            this.n = flacStreamMetadata2;
            Format.Builder builderA = flacStreamMetadata2.c(Arrays.copyOfRange(bArr, 9, parsableByteArray.f14196c), null).a();
            builderA.m = MimeTypes.p("audio/ogg");
            setupData.f16657a = new Format(builderA);
            return true;
        }
        byte b2 = bArr[0];
        if ((b2 & 127) == 3) {
            FlacStreamMetadata.SeekTable seekTableA = FlacMetadataReader.a(parsableByteArray);
            FlacStreamMetadata flacStreamMetadata3 = new FlacStreamMetadata(flacStreamMetadata.f16150a, flacStreamMetadata.f16151b, flacStreamMetadata.f16152c, flacStreamMetadata.d, flacStreamMetadata.f16153e, flacStreamMetadata.g, flacStreamMetadata.f16155h, flacStreamMetadata.f16157j, seekTableA, flacStreamMetadata.l);
            this.n = flacStreamMetadata3;
            this.o = new FlacOggSeeker(flacStreamMetadata3, seekTableA);
            return true;
        }
        if (b2 != -1) {
            return true;
        }
        FlacOggSeeker flacOggSeeker = this.o;
        if (flacOggSeeker != null) {
            flacOggSeeker.f16635c = j2;
            setupData.f16658b = flacOggSeeker;
        }
        setupData.f16657a.getClass();
        return false;
    }

    @Override // androidx.media3.extractor.ogg.StreamReader
    public final void d(boolean z) {
        super.d(z);
        if (z) {
            this.n = null;
            this.o = null;
        }
    }
}
