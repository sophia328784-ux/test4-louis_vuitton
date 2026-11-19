package androidx.camera.video.internal.encoder;

import android.media.MediaCodec;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public interface EncodedData extends AutoCloseable {
    ByteBuffer N();

    MediaCodec.BufferInfo Y();

    boolean c0();

    long size();

    long y0();
}
