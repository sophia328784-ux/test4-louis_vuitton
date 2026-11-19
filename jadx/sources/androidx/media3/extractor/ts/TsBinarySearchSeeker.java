package androidx.media3.extractor.ts;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.BinarySearchSeeker;
import androidx.media3.extractor.ExtractorInput;

/* JADX INFO: loaded from: classes.dex */
final class TsBinarySearchSeeker extends BinarySearchSeeker {

    public static final class TsPcrSeeker implements BinarySearchSeeker.TimestampSeeker {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TimestampAdjuster f17151a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ParsableByteArray f17152b = new ParsableByteArray();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f17153c;
        public final int d;

        public TsPcrSeeker(int i2, TimestampAdjuster timestampAdjuster, int i3) {
            this.f17153c = i2;
            this.f17151a = timestampAdjuster;
            this.d = i3;
        }

        @Override // androidx.media3.extractor.BinarySearchSeeker.TimestampSeeker
        public final BinarySearchSeeker.TimestampSearchResult a(ExtractorInput extractorInput, long j2) {
            long j3;
            long position = extractorInput.getPosition();
            int iMin = (int) Math.min(this.d, extractorInput.getLength() - position);
            ParsableByteArray parsableByteArray = this.f17152b;
            parsableByteArray.K(iMin);
            extractorInput.b(0, iMin, parsableByteArray.f14194a);
            int i2 = parsableByteArray.f14196c;
            long j4 = -1;
            long j5 = -1;
            long j6 = -9223372036854775807L;
            while (true) {
                if (parsableByteArray.a() < 188) {
                    j3 = -9223372036854775807L;
                    break;
                }
                byte[] bArr = parsableByteArray.f14194a;
                int i3 = parsableByteArray.f14195b;
                while (true) {
                    if (i3 >= i2) {
                        j3 = -9223372036854775807L;
                        break;
                    }
                    j3 = -9223372036854775807L;
                    if (bArr[i3] == 71) {
                        break;
                    }
                    i3++;
                }
                int i4 = i3 + 188;
                if (i4 > i2) {
                    break;
                }
                long jA = TsUtil.a(parsableByteArray, i3, this.f17153c);
                if (jA != j3) {
                    long jB = this.f17151a.b(jA);
                    if (jB > j2) {
                        return j6 == j3 ? new BinarySearchSeeker.TimestampSearchResult(-1, jB, position) : new BinarySearchSeeker.TimestampSearchResult(0, -9223372036854775807L, position + j5);
                    }
                    j6 = jB;
                    if (100000 + j6 > j2) {
                        return new BinarySearchSeeker.TimestampSearchResult(0, -9223372036854775807L, position + ((long) i3));
                    }
                    j5 = i3;
                }
                parsableByteArray.N(i4);
                j4 = i4;
            }
            return j6 != j3 ? new BinarySearchSeeker.TimestampSearchResult(-2, j6, position + j4) : BinarySearchSeeker.TimestampSearchResult.d;
        }

        @Override // androidx.media3.extractor.BinarySearchSeeker.TimestampSeeker
        public final void b() {
            byte[] bArr = Util.f14243b;
            ParsableByteArray parsableByteArray = this.f17152b;
            parsableByteArray.getClass();
            parsableByteArray.L(bArr.length, bArr);
        }
    }

    public TsBinarySearchSeeker(TimestampAdjuster timestampAdjuster, long j2, long j3, int i2, int i3) {
        super(new BinarySearchSeeker.DefaultSeekTimestampConverter(), new TsPcrSeeker(i2, timestampAdjuster, i3), j2, j2 + 1, 0L, j3, 188L, 940);
    }
}
