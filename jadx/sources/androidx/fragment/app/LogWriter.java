package androidx.fragment.app;

import java.io.Writer;

/* JADX INFO: loaded from: classes.dex */
final class LogWriter extends Writer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StringBuilder f13359b = new StringBuilder(128);

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        h();
    }

    @Override // java.io.Writer, java.io.Flushable
    public final void flush() {
        h();
    }

    public final void h() {
        StringBuilder sb = this.f13359b;
        if (sb.length() > 0) {
            sb.toString();
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer
    public final void write(char[] cArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            char c2 = cArr[i2 + i4];
            if (c2 == '\n') {
                h();
            } else {
                this.f13359b.append(c2);
            }
        }
    }
}
