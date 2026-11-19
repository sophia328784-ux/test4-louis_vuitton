package androidx.media3.datasource.cache;

import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import java.io.BufferedOutputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
final class ReusableBufferedOutputStream extends BufferedOutputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f14518b;

    public ReusableBufferedOutputStream(OutputStream outputStream) {
        super(outputStream);
    }

    public final void c(OutputStream outputStream) {
        Preconditions.q(this.f14518b);
        ((BufferedOutputStream) this).out = outputStream;
        ((BufferedOutputStream) this).count = 0;
        this.f14518b = false;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws Throwable {
        this.f14518b = true;
        flush();
        th = null;
        try {
            ((BufferedOutputStream) this).out.close();
        } catch (Throwable th) {
            if (th == null) {
                th = th;
            }
        }
        if (th == null) {
            return;
        }
        String str = Util.f14242a;
        throw th;
    }

    public ReusableBufferedOutputStream(OutputStream outputStream, int i2) {
        super(outputStream, i2);
    }
}
