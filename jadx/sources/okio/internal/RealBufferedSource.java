package okio.internal;

import defpackage.md;
import kotlin.Metadata;
import okio.Buffer;
import okio.ByteString;
import okio.SegmentedByteString;

/* JADX INFO: renamed from: okio.internal.-RealBufferedSource, reason: invalid class name */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"okio"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class RealBufferedSource {
    public static final long a(okio.RealBufferedSource realBufferedSource, ByteString byteString, int i2, long j2) {
        long j3;
        byteString.getClass();
        int i3 = i2;
        long j4 = i3;
        SegmentedByteString.b(byteString.e(), 0L, j4);
        boolean z = realBufferedSource.d;
        Buffer buffer = realBufferedSource.f77444c;
        if (z) {
            md.k("closed");
            return 0L;
        }
        long jMax = 0;
        while (true) {
            long jA = Buffer.a(realBufferedSource.f77444c, byteString, jMax, j2, i3);
            long j5 = -1;
            if (jA != -1) {
                return jA;
            }
            long j6 = buffer.f77390c;
            long j7 = (j6 - j4) + 1;
            if (j7 < j2) {
                if (j6 < j2) {
                    j3 = -1;
                } else {
                    int iMax = (int) Math.max(1L, (j6 - j2) + 1);
                    int iMin = ((int) Math.min(j4, (buffer.f77390c - jMax) + 1)) - 1;
                    if (iMax <= iMin) {
                        while (true) {
                            j3 = j5;
                            if (buffer.B(iMin, byteString, buffer.f77390c - ((long) iMin))) {
                                break;
                            }
                            if (iMin == iMax) {
                                return j3;
                            }
                            iMin--;
                            j5 = j3;
                        }
                    }
                }
                if (realBufferedSource.f77443b.read(buffer, 8192L) == j3) {
                    return j3;
                }
                jMax = Math.max(jMax, j7);
                i3 = i2;
            }
            return -1L;
        }
    }
}
