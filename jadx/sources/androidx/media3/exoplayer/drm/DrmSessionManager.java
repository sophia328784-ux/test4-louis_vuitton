package androidx.media3.exoplayer.drm;

import android.os.Looper;
import androidx.media3.common.Format;
import androidx.media3.exoplayer.analytics.PlayerId;
import defpackage.mt;

/* JADX INFO: loaded from: classes.dex */
public interface DrmSessionManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DrmSessionManager f15084a = new AnonymousClass1();

    /* JADX INFO: renamed from: androidx.media3.exoplayer.drm.DrmSessionManager$1, reason: invalid class name */
    public class AnonymousClass1 implements DrmSessionManager {
        @Override // androidx.media3.exoplayer.drm.DrmSessionManager
        public final void a(Looper looper, PlayerId playerId) {
        }

        @Override // androidx.media3.exoplayer.drm.DrmSessionManager
        public final DrmSession b(DrmSessionEventListener.EventDispatcher eventDispatcher, Format format) {
            if (format.s == null) {
                return null;
            }
            return new ErrorStateDrmSession(new DrmSession.DrmSessionException(new UnsupportedDrmException(1), 6001));
        }

        @Override // androidx.media3.exoplayer.drm.DrmSessionManager
        public final int c(Format format) {
            return format.s != null ? 1 : 0;
        }
    }

    public interface DrmSessionReference {
        public static final mt d0 = new mt(3);

        void release();
    }

    void a(Looper looper, PlayerId playerId);

    DrmSession b(DrmSessionEventListener.EventDispatcher eventDispatcher, Format format);

    int c(Format format);

    default DrmSessionReference d(DrmSessionEventListener.EventDispatcher eventDispatcher, Format format) {
        return DrmSessionReference.d0;
    }

    default void f() {
    }

    default void release() {
    }
}
