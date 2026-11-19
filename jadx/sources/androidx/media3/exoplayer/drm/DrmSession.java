package androidx.media3.exoplayer.drm;

import androidx.media3.decoder.CryptoConfig;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public interface DrmSession {

    public static class DrmSessionException extends IOException {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f15078b;

        public DrmSessionException(Throwable th, int i2) {
            super(th);
            this.f15078b = i2;
        }
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface State {
    }

    DrmSessionException a();

    UUID b();

    default boolean c() {
        return false;
    }

    CryptoConfig d();

    void e(DrmSessionEventListener.EventDispatcher eventDispatcher);

    void f(DrmSessionEventListener.EventDispatcher eventDispatcher);

    boolean g(String str);

    int getState();
}
