package com.google.android.exoplayer2.ui;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public interface TimeBar {

    /* JADX INFO: loaded from: classes.dex */
    public interface OnScrubListener {
        void e(long j2);

        void x(long j2);

        void z(long j2, boolean z);
    }

    void a(OnScrubListener onScrubListener);

    long getPreferredUpdateDelay();

    void setBufferedPosition(long j2);

    void setEnabled(boolean z);

    void setPosition(long j2);
}
