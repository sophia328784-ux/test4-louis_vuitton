package androidx.camera.video.internal.encoder;

import android.view.Surface;
import androidx.camera.video.internal.BufferProvider;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public interface Encoder {

    public interface ByteBufferInput extends EncoderInput, BufferProvider<InputBuffer> {
    }

    public interface EncoderInput {
    }

    public interface SurfaceInput extends EncoderInput {

        public interface OnSurfaceUpdateListener {
            void a(Surface surface);
        }

        void c(Executor executor, androidx.camera.video.j jVar);
    }

    void a(EncoderCallback encoderCallback, Executor executor);

    void b(long j2);

    EncoderInfoImpl c();

    ListenableFuture d();

    void e();

    int f();

    void pause();

    void release();

    void start();
}
