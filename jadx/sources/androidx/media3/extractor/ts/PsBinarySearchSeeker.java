package androidx.media3.extractor.ts;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.BinarySearchSeeker;
import androidx.media3.extractor.ExtractorInput;
import com.networkbench.agent.impl.util.r;

/* JADX INFO: loaded from: classes.dex */
final class PsBinarySearchSeeker extends BinarySearchSeeker {

    public static final class PsScrSeeker implements BinarySearchSeeker.TimestampSeeker {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TimestampAdjuster f17121a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ParsableByteArray f17122b = new ParsableByteArray();

        public PsScrSeeker(TimestampAdjuster timestampAdjuster) {
            this.f17121a = timestampAdjuster;
        }

        /* JADX WARN: Code duplicated, block: B:39:0x00e0  */
        @Override // androidx.media3.extractor.BinarySearchSeeker.TimestampSeeker
        public final BinarySearchSeeker.TimestampSearchResult a(ExtractorInput extractorInput, long j2) {
            int iD;
            long position = extractorInput.getPosition();
            int iMin = (int) Math.min(r.x, extractorInput.getLength() - position);
            ParsableByteArray parsableByteArray = this.f17122b;
            parsableByteArray.K(iMin);
            extractorInput.b(0, iMin, parsableByteArray.f14194a);
            int i2 = -1;
            int i3 = -1;
            long j3 = -9223372036854775807L;
            while (parsableByteArray.a() >= 4) {
                if (PsBinarySearchSeeker.d(parsableByteArray.f14195b, parsableByteArray.f14194a) != 442) {
                    parsableByteArray.O(1);
                } else {
                    parsableByteArray.O(4);
                    long jC = PsDurationReader.c(parsableByteArray);
                    if (jC != -9223372036854775807L) {
                        long jB = this.f17121a.b(jC);
                        if (jB > j2) {
                            return j3 == -9223372036854775807L ? new BinarySearchSeeker.TimestampSearchResult(-1, jB, position) : new BinarySearchSeeker.TimestampSearchResult(0, -9223372036854775807L, position + ((long) i3));
                        }
                        j3 = jB;
                        long j4 = 100000 + j3;
                        i3 = parsableByteArray.f14195b;
                        if (j4 > j2) {
                            return new BinarySearchSeeker.TimestampSearchResult(0, -9223372036854775807L, position + ((long) i3));
                        }
                    }
                    int i4 = parsableByteArray.f14196c;
                    if (parsableByteArray.a() >= 10) {
                        parsableByteArray.O(9);
                        int iA = parsableByteArray.A() & 7;
                        if (parsableByteArray.a() >= iA) {
                            parsableByteArray.O(iA);
                            if (parsableByteArray.a() >= 4) {
                                if (PsBinarySearchSeeker.d(parsableByteArray.f14195b, parsableByteArray.f14194a) != 443) {
                                    while (parsableByteArray.a() >= 4) {
                                        iD = PsBinarySearchSeeker.d(parsableByteArray.f14195b, parsableByteArray.f14194a);
                                        if (iD == 442) {
                                            break;
                                        }
                                        break;
                                    }
                                }
                                parsableByteArray.O(4);
                                int iH = parsableByteArray.H();
                                if (parsableByteArray.a() < iH) {
                                    parsableByteArray.N(i4);
                                } else {
                                    parsableByteArray.O(iH);
                                    while (parsableByteArray.a() >= 4) {
                                        iD = PsBinarySearchSeeker.d(parsableByteArray.f14195b, parsableByteArray.f14194a);
                                        if (iD == 442 || iD == 441 || (iD >>> 8) != 1) {
                                            break;
                                        }
                                        parsableByteArray.O(4);
                                        if (parsableByteArray.a() < 2) {
                                            parsableByteArray.N(i4);
                                            break;
                                        }
                                        parsableByteArray.N(Math.min(parsableByteArray.f14196c, parsableByteArray.f14195b + parsableByteArray.H()));
                                    }
                                }
                            } else {
                                parsableByteArray.N(i4);
                            }
                        } else {
                            parsableByteArray.N(i4);
                        }
                    } else {
                        parsableByteArray.N(i4);
                    }
                    i2 = parsableByteArray.f14195b;
                }
            }
            return j3 != -9223372036854775807L ? new BinarySearchSeeker.TimestampSearchResult(-2, j3, position + ((long) i2)) : BinarySearchSeeker.TimestampSearchResult.d;
        }

        @Override // androidx.media3.extractor.BinarySearchSeeker.TimestampSeeker
        public final void b() {
            byte[] bArr = Util.f14243b;
            ParsableByteArray parsableByteArray = this.f17122b;
            parsableByteArray.getClass();
            parsableByteArray.L(bArr.length, bArr);
        }
    }

    public PsBinarySearchSeeker(TimestampAdjuster timestampAdjuster, long j2, long j3) {
        super(new BinarySearchSeeker.DefaultSeekTimestampConverter(), new PsScrSeeker(timestampAdjuster), j2, j2 + 1, 0L, j3, 188L, 1000);
    }

    public static int d(int i2, byte[] bArr) {
        return (bArr[i2 + 3] & 255) | ((bArr[i2] & 255) << 24) | ((bArr[i2 + 1] & 255) << 16) | ((bArr[i2 + 2] & 255) << 8);
    }
}
