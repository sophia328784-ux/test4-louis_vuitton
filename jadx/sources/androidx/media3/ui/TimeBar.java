package androidx.media3.ui;

/* JADX INFO: loaded from: classes.dex */
public interface TimeBar {

    public interface OnScrubListener {
        void e(long j2);

        void x(long j2);

        void z(long j2, boolean z);
    }

    void a(OnScrubListener onScrubListener);

    void b(long[] jArr, boolean[] zArr, int i2);

    long getPreferredUpdateDelay();

    void setBufferedPosition(long j2);

    void setDuration(long j2);

    void setEnabled(boolean z);

    void setPosition(long j2);
}
