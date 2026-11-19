package androidx.media3.extractor;

import androidx.media3.common.util.Util;
import defpackage.md;

/* JADX INFO: loaded from: classes.dex */
public abstract class BinarySearchSeeker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BinarySearchSeekMap f16092a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TimestampSeeker f16093b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SeekOperationParams f16094c;
    public final int d;

    public static class BinarySearchSeekMap implements SeekMap {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SeekTimestampConverter f16095a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f16096b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f16097c;
        public final long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final long f16098e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final long f16099f;
        public final long g;

        public BinarySearchSeekMap(SeekTimestampConverter seekTimestampConverter, long j2, long j3, long j4, long j5, long j6, long j7) {
            this.f16095a = seekTimestampConverter;
            this.f16096b = j2;
            this.f16097c = j3;
            this.d = j4;
            this.f16098e = j5;
            this.f16099f = j6;
            this.g = j7;
        }

        @Override // androidx.media3.extractor.SeekMap
        public final SeekMap.SeekPoints c(long j2) {
            return new SeekMap.SeekPoints(new SeekPoint(j2, SeekOperationParams.a(this.f16095a.a(j2), this.f16097c, this.d, this.f16098e, this.f16099f, this.g)));
        }

        @Override // androidx.media3.extractor.SeekMap
        public final boolean e() {
            return true;
        }

        @Override // androidx.media3.extractor.SeekMap
        public final long h() {
            return this.f16096b;
        }
    }

    public static final class DefaultSeekTimestampConverter implements SeekTimestampConverter {
        @Override // androidx.media3.extractor.BinarySearchSeeker.SeekTimestampConverter
        public final long a(long j2) {
            return j2;
        }
    }

    public static class SeekOperationParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f16100a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f16101b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f16102c;
        public long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f16103e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f16104f;
        public long g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public long f16105h;

        public SeekOperationParams(long j2, long j3, long j4, long j5, long j6, long j7, long j8) {
            this.f16100a = j2;
            this.f16101b = j3;
            this.d = j4;
            this.f16103e = j5;
            this.f16104f = j6;
            this.g = j7;
            this.f16102c = j8;
            this.f16105h = a(j3, j4, j5, j6, j7, j8);
        }

        public static long a(long j2, long j3, long j4, long j5, long j6, long j7) {
            if (j5 + 1 >= j6 || j3 + 1 >= j4) {
                return j5;
            }
            long j8 = (long) ((j2 - j3) * ((j6 - j5) / (j4 - j3)));
            return Util.k(((j8 + j5) - j7) - (j8 / 20), j5, j6 - 1);
        }
    }

    public interface SeekTimestampConverter {
        long a(long j2);
    }

    public static final class TimestampSearchResult {
        public static final TimestampSearchResult d = new TimestampSearchResult(-3, -9223372036854775807L, -1);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f16106a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f16107b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f16108c;

        public TimestampSearchResult(int i2, long j2, long j3) {
            this.f16106a = i2;
            this.f16107b = j2;
            this.f16108c = j3;
        }
    }

    public interface TimestampSeeker {
        TimestampSearchResult a(ExtractorInput extractorInput, long j2);

        default void b() {
        }
    }

    public BinarySearchSeeker(SeekTimestampConverter seekTimestampConverter, TimestampSeeker timestampSeeker, long j2, long j3, long j4, long j5, long j6, int i2) {
        this.f16093b = timestampSeeker;
        this.d = i2;
        this.f16092a = new BinarySearchSeekMap(seekTimestampConverter, j2, 0L, j3, j4, j5, j6);
    }

    public static int b(ExtractorInput extractorInput, long j2, PositionHolder positionHolder) {
        if (j2 == extractorInput.getPosition()) {
            return 0;
        }
        positionHolder.f16190a = j2;
        return 1;
    }

    public final int a(ExtractorInput extractorInput, PositionHolder positionHolder) {
        while (true) {
            SeekOperationParams seekOperationParams = this.f16094c;
            seekOperationParams.getClass();
            long j2 = seekOperationParams.f16104f;
            long j3 = seekOperationParams.g;
            long j4 = seekOperationParams.f16105h;
            long j5 = j3 - j2;
            long j6 = this.d;
            TimestampSeeker timestampSeeker = this.f16093b;
            if (j5 <= j6) {
                this.f16094c = null;
                timestampSeeker.b();
                return b(extractorInput, j2, positionHolder);
            }
            long position = j4 - extractorInput.getPosition();
            if (position < 0 || position > 262144) {
                return b(extractorInput, j4, positionHolder);
            }
            extractorInput.m((int) position);
            extractorInput.g();
            TimestampSearchResult timestampSearchResultA = timestampSeeker.a(extractorInput, seekOperationParams.f16101b);
            int i2 = timestampSearchResultA.f16106a;
            long j7 = timestampSearchResultA.f16107b;
            long j8 = timestampSearchResultA.f16108c;
            if (i2 == -3) {
                this.f16094c = null;
                timestampSeeker.b();
                return b(extractorInput, j4, positionHolder);
            }
            if (i2 == -2) {
                seekOperationParams.d = j7;
                seekOperationParams.f16104f = j8;
                seekOperationParams.f16105h = SeekOperationParams.a(seekOperationParams.f16101b, j7, seekOperationParams.f16103e, j8, seekOperationParams.g, seekOperationParams.f16102c);
            } else {
                if (i2 != -1) {
                    if (i2 != 0) {
                        md.k("Invalid case");
                        return 0;
                    }
                    long position2 = j8 - extractorInput.getPosition();
                    if (position2 >= 0 && position2 <= 262144) {
                        extractorInput.m((int) position2);
                    }
                    this.f16094c = null;
                    timestampSeeker.b();
                    return b(extractorInput, j8, positionHolder);
                }
                seekOperationParams.f16103e = j7;
                seekOperationParams.g = j8;
                seekOperationParams.f16105h = SeekOperationParams.a(seekOperationParams.f16101b, seekOperationParams.d, j7, seekOperationParams.f16104f, j8, seekOperationParams.f16102c);
            }
        }
    }

    public final void c(long j2) {
        SeekOperationParams seekOperationParams = this.f16094c;
        if (seekOperationParams == null || seekOperationParams.f16100a != j2) {
            BinarySearchSeekMap binarySearchSeekMap = this.f16092a;
            this.f16094c = new SeekOperationParams(j2, binarySearchSeekMap.f16095a.a(j2), binarySearchSeekMap.f16097c, binarySearchSeekMap.d, binarySearchSeekMap.f16098e, binarySearchSeekMap.f16099f, binarySearchSeekMap.g);
        }
    }
}
