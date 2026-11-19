package okhttp3.internal.ws;

import defpackage.md;
import defpackage.n00;
import defpackage.pq0;
import kotlin.Metadata;
import okio.Buffer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/ws/WebSocketProtocol;", "", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class WebSocketProtocol {
    public static String a(int i2) {
        if (i2 < 1000 || i2 >= 5000) {
            return pq0.k(i2, "Code must be in range [1000,5000): ");
        }
        if ((1004 > i2 || i2 >= 1007) && (1015 > i2 || i2 >= 3000)) {
            return null;
        }
        return n00.m(i2, "Code ", " is reserved and may not be used.");
    }

    public static void b(Buffer.UnsafeCursor unsafeCursor, byte[] bArr) {
        long j2;
        unsafeCursor.getClass();
        bArr.getClass();
        int length = bArr.length;
        int i2 = 0;
        do {
            byte[] bArr2 = unsafeCursor.f77394f;
            int i3 = unsafeCursor.g;
            int i4 = unsafeCursor.f77395h;
            if (bArr2 != null) {
                while (i3 < i4) {
                    int i5 = i2 % length;
                    bArr2[i3] = (byte) (bArr2[i3] ^ bArr[i5]);
                    i3++;
                    i2 = i5 + 1;
                }
            }
            long j3 = unsafeCursor.f77393e;
            Buffer buffer = unsafeCursor.f77391b;
            buffer.getClass();
            if (j3 == buffer.f77390c) {
                md.k("no more bytes");
                return;
            }
            j2 = unsafeCursor.f77393e;
        } while (unsafeCursor.d(j2 == -1 ? 0L : j2 + ((long) (unsafeCursor.f77395h - unsafeCursor.g))) != -1);
    }
}
