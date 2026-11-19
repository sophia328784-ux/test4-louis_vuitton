package androidx.media3.exoplayer.drm;

import android.os.Handler;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.source.MediaSource;
import defpackage.b5;
import defpackage.ev;
import defpackage.q6;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public interface DrmSessionEventListener {
    default void T(int i2, MediaSource.MediaPeriodId mediaPeriodId, KeyRequestInfo keyRequestInfo) {
    }

    default void V(int i2, MediaSource.MediaPeriodId mediaPeriodId, int i3) {
    }

    default void Z(int i2, MediaSource.MediaPeriodId mediaPeriodId) {
    }

    default void a0(int i2, MediaSource.MediaPeriodId mediaPeriodId, Exception exc) {
    }

    default void l0(int i2, MediaSource.MediaPeriodId mediaPeriodId) {
    }

    default void v0(int i2, MediaSource.MediaPeriodId mediaPeriodId) {
    }

    public static class EventDispatcher {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f15079a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MediaSource.MediaPeriodId f15080b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final CopyOnWriteArrayList f15081c;

        public static final class ListenerAndHandler {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Handler f15082a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final DrmSessionEventListener f15083b;

            public ListenerAndHandler(Handler handler, DrmSessionEventListener drmSessionEventListener) {
                this.f15082a = handler;
                this.f15083b = drmSessionEventListener;
            }
        }

        public EventDispatcher() {
            this(new CopyOnWriteArrayList(), 0, null);
        }

        public final void a(Handler handler, DrmSessionEventListener drmSessionEventListener) {
            handler.getClass();
            this.f15081c.add(new ListenerAndHandler(handler, drmSessionEventListener));
        }

        public final void b(KeyRequestInfo keyRequestInfo) {
            for (ListenerAndHandler listenerAndHandler : this.f15081c) {
                Util.W(listenerAndHandler.f15082a, new b5(this, listenerAndHandler.f15083b, keyRequestInfo, 11));
            }
        }

        public final void c() {
            for (ListenerAndHandler listenerAndHandler : this.f15081c) {
                Util.W(listenerAndHandler.f15082a, new ev(this, listenerAndHandler.f15083b, 1));
            }
        }

        public final void d() {
            for (ListenerAndHandler listenerAndHandler : this.f15081c) {
                Util.W(listenerAndHandler.f15082a, new ev(this, listenerAndHandler.f15083b, 2));
            }
        }

        public final void e(int i2) {
            for (ListenerAndHandler listenerAndHandler : this.f15081c) {
                Util.W(listenerAndHandler.f15082a, new q6(this, listenerAndHandler.f15083b, i2, 6));
            }
        }

        public final void f(Exception exc) {
            for (ListenerAndHandler listenerAndHandler : this.f15081c) {
                Util.W(listenerAndHandler.f15082a, new b5(this, listenerAndHandler.f15083b, exc, 10));
            }
        }

        public final void g() {
            for (ListenerAndHandler listenerAndHandler : this.f15081c) {
                Util.W(listenerAndHandler.f15082a, new ev(this, listenerAndHandler.f15083b, 0));
            }
        }

        public final void h(DrmSessionEventListener drmSessionEventListener) {
            CopyOnWriteArrayList<ListenerAndHandler> copyOnWriteArrayList = this.f15081c;
            for (ListenerAndHandler listenerAndHandler : copyOnWriteArrayList) {
                if (listenerAndHandler.f15083b == drmSessionEventListener) {
                    copyOnWriteArrayList.remove(listenerAndHandler);
                }
            }
        }

        public EventDispatcher(CopyOnWriteArrayList copyOnWriteArrayList, int i2, MediaSource.MediaPeriodId mediaPeriodId) {
            this.f15081c = copyOnWriteArrayList;
            this.f15079a = i2;
            this.f15080b = mediaPeriodId;
        }
    }
}
