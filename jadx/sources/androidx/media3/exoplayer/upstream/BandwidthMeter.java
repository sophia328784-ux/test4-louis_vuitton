package androidx.media3.exoplayer.upstream;

import android.os.Handler;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public interface BandwidthMeter {

    public interface EventListener {

        public static final class EventDispatcher {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final CopyOnWriteArrayList f15751a = new CopyOnWriteArrayList();

            public static final class HandlerAndListener {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public final Handler f15752a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final EventListener f15753b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public boolean f15754c;

                public HandlerAndListener(Handler handler, EventListener eventListener) {
                    this.f15752a = handler;
                    this.f15753b = eventListener;
                }
            }
        }

        void x(int i2, long j2, long j3);
    }

    void a(EventListener eventListener);

    void c(Handler handler, EventListener eventListener);

    DefaultBandwidthMeter d();

    long e();
}
