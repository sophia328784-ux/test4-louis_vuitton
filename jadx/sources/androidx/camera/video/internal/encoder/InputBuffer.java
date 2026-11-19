package androidx.camera.video.internal.encoder;

import com.google.common.util.concurrent.ListenableFuture;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public interface InputBuffer {
    ByteBuffer N();

    boolean a();

    void b(long j2);

    void c();

    boolean cancel();

    ListenableFuture d();
}
