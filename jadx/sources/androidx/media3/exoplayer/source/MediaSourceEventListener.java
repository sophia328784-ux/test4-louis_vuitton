package androidx.media3.exoplayer.source;

import android.os.Handler;
import androidx.media3.common.Format;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Util;
import defpackage.aa0;
import defpackage.pc;
import defpackage.tc0;
import defpackage.uc0;
import java.io.IOException;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public interface MediaSourceEventListener {
    default void W(int i2, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z) {
    }

    default void b0(int i2, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
    }

    default void e(int i2, MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData) {
    }

    default void j0(int i2, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
    }

    default void k0(int i2, MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData) {
    }

    default void z(int i2, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, int i3) {
    }

    public static class EventDispatcher {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f15520a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MediaSource.MediaPeriodId f15521b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final CopyOnWriteArrayList f15522c;

        public static final class ListenerAndHandler {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Handler f15523a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final MediaSourceEventListener f15524b;

            public ListenerAndHandler(Handler handler, MediaSourceEventListener mediaSourceEventListener) {
                this.f15523a = handler;
                this.f15524b = mediaSourceEventListener;
            }
        }

        public EventDispatcher() {
            this(new CopyOnWriteArrayList(), 0, null);
        }

        public final void a(Consumer consumer) {
            for (ListenerAndHandler listenerAndHandler : this.f15522c) {
                Util.W(listenerAndHandler.f15523a, new aa0(consumer, listenerAndHandler.f15524b, 11));
            }
        }

        public final void b(LoadEventInfo loadEventInfo, int i2, int i3, Format format, int i4, Object obj, long j2, long j3) {
            a(new tc0(this, loadEventInfo, new MediaLoadData(i2, i3, format, i4, obj, Util.f0(j2), Util.f0(j3)), 1));
        }

        public final void c(LoadEventInfo loadEventInfo, int i2, int i3, Format format, int i4, Object obj, long j2, long j3) {
            a(new tc0(this, loadEventInfo, new MediaLoadData(i2, i3, format, i4, obj, Util.f0(j2), Util.f0(j3)), 0));
        }

        public final void d(LoadEventInfo loadEventInfo, int i2, int i3, Format format, int i4, Object obj, long j2, long j3, IOException iOException, boolean z) {
            a(new uc0(this, loadEventInfo, new MediaLoadData(i2, i3, format, i4, obj, Util.f0(j2), Util.f0(j3)), iOException, z));
        }

        public final void e(LoadEventInfo loadEventInfo, int i2, IOException iOException, boolean z) {
            d(loadEventInfo, i2, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, iOException, z);
        }

        public final void f(LoadEventInfo loadEventInfo, int i2, int i3, Format format, int i4, Object obj, long j2, long j3, int i5) {
            a(new pc(this, loadEventInfo, new MediaLoadData(i2, i3, format, i4, obj, Util.f0(j2), Util.f0(j3)), i5));
        }

        public EventDispatcher(CopyOnWriteArrayList copyOnWriteArrayList, int i2, MediaSource.MediaPeriodId mediaPeriodId) {
            this.f15522c = copyOnWriteArrayList;
            this.f15520a = i2;
            this.f15521b = mediaPeriodId;
        }
    }
}
