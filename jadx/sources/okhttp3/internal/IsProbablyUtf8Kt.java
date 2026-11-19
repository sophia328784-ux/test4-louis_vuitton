package okhttp3.internal;

import com.batch.android.x0.h;
import java.io.EOFException;
import kotlin.Metadata;
import okio.Buffer;
import okio.RealBufferedSource;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"okhttp"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class IsProbablyUtf8Kt {
    public static final boolean a(Buffer buffer) {
        buffer.getClass();
        try {
            RealBufferedSource realBufferedSourcePeek = buffer.peek();
            for (long j2 = 0; j2 < 16 && !realBufferedSourcePeek.Z0(); j2++) {
                realBufferedSourcePeek.D0(1L);
                Buffer buffer2 = realBufferedSourcePeek.f77444c;
                byte bW = buffer2.w(0L);
                if ((bW & h.a.K) == 192) {
                    realBufferedSourcePeek.D0(2L);
                } else if ((bW & 240) == 224) {
                    realBufferedSourcePeek.D0(3L);
                } else if ((bW & 248) == 240) {
                    realBufferedSourcePeek.D0(4L);
                }
                int iI0 = buffer2.i0();
                if (Character.isISOControl(iI0) && !Character.isWhitespace(iI0)) {
                    return false;
                }
            }
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }
}
