package androidx.camera.core;

import android.media.Image;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public interface ImageProxy extends AutoCloseable {

    public interface PlaneProxy {
        ByteBuffer L();

        int M();

        int N();
    }

    PlaneProxy[] L0();

    Image O();

    int getFormat();

    int getHeight();

    int getWidth();

    ImageInfo p1();
}
