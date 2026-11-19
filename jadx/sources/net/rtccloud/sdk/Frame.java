package net.rtccloud.sdk;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes3.dex */
public class Frame {
    public static final int MAIN_SPEAKER_PID = -1;
    public Bitmap bitmap;
    public final Integer id;
    public final int pid;

    public Frame(Integer num, Bitmap bitmap) {
        this.id = num;
        this.pid = num.intValue();
        this.bitmap = bitmap;
    }

    public static Frame create(Integer num, int i2, int i3) {
        return new Frame(num, createBitmap(i2, i3));
    }

    private static Bitmap createBitmap(int i2, int i3) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
        bitmapCreateBitmap.setHasAlpha(false);
        return bitmapCreateBitmap;
    }

    public void resizeBitmap(int i2, int i3) {
        this.bitmap.recycle();
        this.bitmap = createBitmap(i2, i3);
    }

    public String toString() {
        return "Frame{id=" + this.id + ", pid=" + this.pid + ", bitmap=" + this.bitmap.getWidth() + "x" + this.bitmap.getHeight() + '}';
    }
}
