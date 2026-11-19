package okio;

import com.linkplay.medialib.ContentTree;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.collections.AbstractList;

/* JADX INFO: renamed from: okio.-SegmentedByteString, reason: invalid class name */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"okio"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SegmentedByteString {
    public static final boolean a(int i2, byte[] bArr, int i3, byte[] bArr2, int i4) {
        bArr.getClass();
        bArr2.getClass();
        for (int i5 = 0; i5 < i4; i5++) {
            if (bArr[i5 + i2] != bArr2[i5 + i3]) {
                return false;
            }
        }
        return true;
    }

    public static final void b(long j2, long j3, long j4) {
        if ((j3 | j4) < 0 || j3 > j2 || j2 - j3 < j4) {
            StringBuilder sbQ = pq0.q(j2, "size=", " offset=");
            sbQ.append(j3);
            sbQ.append(" byteCount=");
            sbQ.append(j4);
            throw new ArrayIndexOutOfBoundsException(sbQ.toString());
        }
    }

    public static final int c(int i2) {
        return ((i2 & 255) << 24) | (((-16777216) & i2) >>> 24) | ((16711680 & i2) >>> 8) | ((65280 & i2) << 8);
    }

    public static final long d(long j2) {
        return ((j2 & 255) << 56) | (((-72057594037927936L) & j2) >>> 56) | ((71776119061217280L & j2) >>> 40) | ((280375465082880L & j2) >>> 24) | ((1095216660480L & j2) >>> 8) | ((4278190080L & j2) << 8) | ((16711680 & j2) << 24) | ((65280 & j2) << 40);
    }

    public static final String e(byte b2) {
        char[] cArr = okio.internal.ByteString.f77462a;
        return new String(new char[]{cArr[(b2 >> 4) & 15], cArr[b2 & 15]});
    }

    public static final String f(int i2) {
        if (i2 == 0) {
            return ContentTree.ROOT_ID;
        }
        char[] cArr = okio.internal.ByteString.f77462a;
        int i3 = 0;
        char[] cArr2 = {cArr[(i2 >> 28) & 15], cArr[(i2 >> 24) & 15], cArr[(i2 >> 20) & 15], cArr[(i2 >> 16) & 15], cArr[(i2 >> 12) & 15], cArr[(i2 >> 8) & 15], cArr[(i2 >> 4) & 15], cArr[i2 & 15]};
        while (i3 < 8 && cArr2[i3] == '0') {
            i3++;
        }
        AbstractList.INSTANCE.getClass();
        AbstractList.Companion.a(i3, 8, 8);
        return new String(cArr2, i3, 8 - i3);
    }
}
