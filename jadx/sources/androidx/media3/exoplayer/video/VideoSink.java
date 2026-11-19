package androidx.media3.exoplayer.video;

import android.view.Surface;
import androidx.media3.common.Format;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.Size;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public interface VideoSink {

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface FirstFrameReleaseInstruction {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface InputType {
    }

    public interface Listener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Listener f15990a = new AnonymousClass1();

        /* JADX INFO: renamed from: androidx.media3.exoplayer.video.VideoSink$Listener$1, reason: invalid class name */
        public class AnonymousClass1 implements Listener {
        }

        default void a() {
        }

        default void b(VideoSize videoSize) {
        }

        default void c() {
        }

        default void d() {
        }
    }

    public interface VideoFrameHandler {
        void e();

        void f(long j2);
    }

    public static final class VideoSinkException extends Exception {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Format f15991b;

        public VideoSinkException(Throwable th, Format format) {
            super(th);
            this.f15991b = format;
        }
    }

    boolean a();

    boolean e();

    boolean f(long j2, VideoFrameHandler videoFrameHandler);

    void g(long j2, long j3);

    void h(long j2);

    void i(VideoFrameMetadataListener videoFrameMetadataListener);

    void j();

    void k(Format format, long j2, int i2, List list);

    void l(List list);

    boolean m(boolean z);

    boolean n(Format format);

    void o();

    Surface p();

    void q();

    void r(Surface surface, Size size);

    void release();

    void s();

    void t(float f2);

    void u();

    void v(int i2);

    void w();

    void x(boolean z);

    void y(boolean z);

    void z(Listener listener, Executor executor);
}
