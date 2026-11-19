package androidx.media3.extractor.ogg;

import androidx.media3.common.util.Util;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;
import com.google.common.base.Preconditions;
import defpackage.az;
import defpackage.md;
import defpackage.r81;
import java.io.EOFException;
import java.io.IOException;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes.dex */
final class DefaultOggSeeker implements OggSeeker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final OggPageHeader f16623a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f16624b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f16625c;
    public final StreamReader d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f16626e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f16627f;
    public long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f16628h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f16629i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f16630j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f16631k;
    public long l;

    public final class OggSeekMap implements SeekMap {
        public OggSeekMap() {
        }

        @Override // androidx.media3.extractor.SeekMap
        public final SeekMap.SeekPoints c(long j2) {
            DefaultOggSeeker defaultOggSeeker = DefaultOggSeeker.this;
            long j3 = (((long) defaultOggSeeker.d.f16654i) * j2) / 1000000;
            long j4 = defaultOggSeeker.f16624b;
            BigInteger bigIntegerValueOf = BigInteger.valueOf(j3);
            long j5 = defaultOggSeeker.f16625c;
            return new SeekMap.SeekPoints(new SeekPoint(j2, Util.k((bigIntegerValueOf.multiply(BigInteger.valueOf(j5 - j4)).divide(BigInteger.valueOf(defaultOggSeeker.f16627f)).longValue() + j4) - 30000, defaultOggSeeker.f16624b, j5 - 1)));
        }

        @Override // androidx.media3.extractor.SeekMap
        public final boolean e() {
            return true;
        }

        @Override // androidx.media3.extractor.SeekMap
        public final long h() {
            DefaultOggSeeker defaultOggSeeker = DefaultOggSeeker.this;
            return (defaultOggSeeker.f16627f * 1000000) / ((long) defaultOggSeeker.d.f16654i);
        }
    }

    public DefaultOggSeeker(StreamReader streamReader, long j2, long j3, long j4, long j5, boolean z) {
        Preconditions.g(j2 >= 0 && j3 > j2);
        this.d = streamReader;
        this.f16624b = j2;
        this.f16625c = j3;
        if (j4 == j3 - j2 || z) {
            this.f16627f = j5;
            this.f16626e = 4;
        } else {
            this.f16626e = 0;
        }
        this.f16623a = new OggPageHeader();
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00c1 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:44:0x00c2  */
    @Override // androidx.media3.extractor.ogg.OggSeeker
    public final long a(ExtractorInput extractorInput) throws IOException {
        long j2;
        long jK;
        int i2 = this.f16626e;
        long j3 = this.f16625c;
        OggPageHeader oggPageHeader = this.f16623a;
        if (i2 == 0) {
            long position = extractorInput.getPosition();
            this.g = position;
            this.f16626e = 1;
            long j4 = j3 - 65307;
            if (j4 > position) {
                return j4;
            }
        } else if (i2 != 1) {
            if (i2 == 2) {
                if (this.f16629i == this.f16630j) {
                    jK = -1;
                } else {
                    long position2 = extractorInput.getPosition();
                    if (oggPageHeader.b(extractorInput, this.f16630j)) {
                        oggPageHeader.a(extractorInput, false);
                        extractorInput.g();
                        long j5 = this.f16628h;
                        long j6 = oggPageHeader.f16644b;
                        long j7 = j5 - j6;
                        j2 = 2;
                        int i3 = oggPageHeader.d + oggPageHeader.f16646e;
                        if (0 > j7 || j7 >= 72000) {
                            if (j7 < 0) {
                                this.f16630j = position2;
                                this.l = j6;
                            } else {
                                this.f16629i = extractorInput.getPosition() + ((long) i3);
                                this.f16631k = oggPageHeader.f16644b;
                            }
                            long j8 = this.f16630j;
                            long j9 = this.f16629i;
                            if (j8 - j9 < 100000) {
                                this.f16630j = j9;
                                jK = j9;
                            } else {
                                long position3 = extractorInput.getPosition() - (((long) i3) * (j7 <= 0 ? 2L : 1L));
                                long j10 = this.f16630j;
                                long j11 = this.f16629i;
                                jK = Util.k((((j10 - j11) * j7) / (this.l - this.f16631k)) + position3, j11, j10 - 1);
                            }
                        } else {
                            jK = -1;
                        }
                    } else {
                        jK = this.f16629i;
                        if (jK == position2) {
                            az.o("No ogg page can be found.");
                            return 0L;
                        }
                    }
                    if (jK != -1) {
                        return jK;
                    }
                    this.f16626e = 3;
                }
                j2 = 2;
                if (jK != -1) {
                    return jK;
                }
                this.f16626e = 3;
            } else {
                if (i2 != 3) {
                    if (i2 == 4) {
                        return -1L;
                    }
                    r81.b();
                    return 0L;
                }
                j2 = 2;
            }
            while (true) {
                oggPageHeader.b(extractorInput, -1L);
                oggPageHeader.a(extractorInput, false);
                if (oggPageHeader.f16644b > this.f16628h) {
                    extractorInput.g();
                    this.f16626e = 4;
                    return -(this.f16631k + j2);
                }
                extractorInput.m(oggPageHeader.d + oggPageHeader.f16646e);
                this.f16629i = extractorInput.getPosition();
                this.f16631k = oggPageHeader.f16644b;
            }
        }
        oggPageHeader.f16643a = 0;
        oggPageHeader.f16644b = 0L;
        oggPageHeader.f16645c = 0;
        oggPageHeader.d = 0;
        oggPageHeader.f16646e = 0;
        if (!oggPageHeader.b(extractorInput, -1L)) {
            md.e();
            return 0L;
        }
        oggPageHeader.a(extractorInput, false);
        extractorInput.m(oggPageHeader.d + oggPageHeader.f16646e);
        long j12 = oggPageHeader.f16644b;
        while ((oggPageHeader.f16643a & 4) != 4 && oggPageHeader.b(extractorInput, -1L) && extractorInput.getPosition() < j3 && oggPageHeader.a(extractorInput, true)) {
            try {
                extractorInput.m(oggPageHeader.d + oggPageHeader.f16646e);
                j12 = oggPageHeader.f16644b;
            } catch (EOFException unused) {
            }
        }
        this.f16627f = j12;
        this.f16626e = 4;
        return this.g;
    }

    @Override // androidx.media3.extractor.ogg.OggSeeker
    public final SeekMap b() {
        if (this.f16627f != 0) {
            return new OggSeekMap();
        }
        return null;
    }

    @Override // androidx.media3.extractor.ogg.OggSeeker
    public final void c(long j2) {
        this.f16628h = Util.k(j2, 0L, this.f16627f - 1);
        this.f16626e = 2;
        this.f16629i = this.f16624b;
        this.f16630j = this.f16625c;
        this.f16631k = 0L;
        this.l = this.f16627f;
    }
}
