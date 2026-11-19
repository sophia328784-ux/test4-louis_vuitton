package net.rtccloud.sdk.event.call;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes3.dex */
public final class ProgressivexEvent {
    public static int SOURCE_JPEG = 1;
    public static int SOURCE_PROGRESSIVEX;
    private final Bitmap bitmap;
    private final int pid;
    private final int source;

    public ProgressivexEvent(Bitmap bitmap, int i2, int i3) {
        this.bitmap = bitmap;
        this.source = i2;
        this.pid = i3;
    }

    public Bitmap getBitmap() {
        return this.bitmap;
    }

    public int getPid() {
        return this.pid;
    }

    public int getSource() {
        return this.source;
    }
}
