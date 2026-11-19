package androidx.camera.video.internal.audio;

import java.nio.ByteBuffer;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public interface AudioStream {

    public interface AudioStreamCallback {
        default void a(boolean z) {
        }
    }

    public static abstract class PacketInfo {
        public abstract int a();

        public abstract long b();
    }

    void a(AudioStreamCallback audioStreamCallback, Executor executor);

    PacketInfo read(ByteBuffer byteBuffer);

    void release();

    void start();

    void stop();

    public static class AudioStreamException extends Exception {
        public AudioStreamException() {
        }

        public AudioStreamException(String str) {
            super(str);
        }

        public AudioStreamException(String str, Throwable th) {
            super(str, th);
        }

        public AudioStreamException(Throwable th) {
            super(th);
        }
    }
}
