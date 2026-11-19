package net.rtccloud.sdk.internal.view;

import android.view.View;
import java.lang.ref.WeakReference;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.ScreenshareProducer;
import net.rtccloud.sdk.Sink;
import net.rtccloud.sdk.internal.RtccExceptions;
import net.rtccloud.sdk.internal.util.ScreenshareProducerHandler;
import net.rtccloud.sdk.util.OldLogger;
import net.rtccloud.sdk.util.ViewUtils;

/* JADX INFO: loaded from: classes4.dex */
public final class ScreenshareProducerFactory {
    protected static final OldLogger log = OldLogger.get(OldLogger.Internal.SCREENSHARE_PRODUCER);

    public static ScreenshareProducer from(View view) {
        if (view != null) {
            return new ScreenshareProducerLeech(view, 0);
        }
        throw RtccExceptions.newNullPointerException("[view] must not be null");
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static class ScreenshareProducerLeech implements ScreenshareProducer {
        private Call call;
        private ScreenshareProducerHandler handler;
        private boolean isStarted;
        private Sink.Screenshare sink;
        private final WeakReference<View> view;
        private final String who;

        private ScreenshareProducerLeech(View view) {
            this.view = new WeakReference<>(view);
            this.who = ViewUtils.whoami(view);
        }

        @Override // net.rtccloud.sdk.ScreenshareProducer
        public boolean isStarted() {
            return this.isStarted;
        }

        @Override // net.rtccloud.sdk.ScreenshareProducer
        public void onBind(Call call, Sink.Screenshare screenshare) {
            OldLogger oldLogger = ScreenshareProducerFactory.log;
            if (oldLogger.d()) {
                oldLogger.d("onBind() %s", this.who);
            }
            this.call = call;
            this.sink = screenshare;
        }

        @Override // net.rtccloud.sdk.ScreenshareProducer
        public void onStart() {
            OldLogger oldLogger = ScreenshareProducerFactory.log;
            if (oldLogger.d()) {
                oldLogger.d("onStart() %s", this.who);
            }
            if (this.view.get() == null) {
                oldLogger.e("[view] reference is null");
            } else {
                this.isStarted = true;
                this.handler = new ScreenshareProducerHandler(this.view.get(), this.sink);
            }
        }

        @Override // net.rtccloud.sdk.ScreenshareProducer
        public void onStop() {
            OldLogger oldLogger = ScreenshareProducerFactory.log;
            if (oldLogger.d()) {
                oldLogger.d("onStop() %s", this.who);
            }
            this.isStarted = false;
            ScreenshareProducerHandler screenshareProducerHandler = this.handler;
            if (screenshareProducerHandler != null) {
                screenshareProducerHandler.teardown();
                this.handler = null;
            }
        }

        @Override // net.rtccloud.sdk.ScreenshareProducer
        public void onUnbind() {
            OldLogger oldLogger = ScreenshareProducerFactory.log;
            if (oldLogger.d()) {
                oldLogger.d("onUnbind() %s", this.who);
            }
            this.sink = null;
            this.call = null;
        }

        public /* synthetic */ ScreenshareProducerLeech(View view, int i2) {
            this(view);
        }
    }
}
