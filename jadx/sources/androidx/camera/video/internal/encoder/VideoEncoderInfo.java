package androidx.camera.video.internal.encoder;

import android.util.Range;

/* JADX INFO: loaded from: classes.dex */
public interface VideoEncoderInfo extends EncoderInfo {

    public interface Finder {
        VideoEncoderInfo find(String str);
    }

    boolean a();

    Range b(int i2);

    int c();

    boolean d(int i2, int i3);

    default boolean e(int i2, int i3) {
        if (d(i2, i3)) {
            return true;
        }
        return a() && d(i3, i2);
    }

    int f();

    Range g();

    Range h(int i2);

    Range i();

    Range j();
}
