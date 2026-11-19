package net.rtccloud.sdk;

import com.sightcall.uvc.Camera;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import net.rtccloud.sdk.event.call.ScreenshareEvent;
import net.rtccloud.sdk.internal.Preconditions;
import net.rtccloud.sdk.util.OldLogger;
import org.bouncycastle.pqc.crypto.crystals.dilithium.DilithiumEngine;

/* JADX INFO: loaded from: classes4.dex */
public class ScreenshareModule {
    private static final OldLogger log = OldLogger.get(OldLogger.Internal.SCREEN_SHARE);
    private final Call call;
    private final FrameFetcher frameFetcher;
    private boolean isTeardown;
    private final Rtcc rtcc;
    private final AtomicBoolean isSending = new AtomicBoolean(false);
    private final AtomicBoolean isReceiving = new AtomicBoolean(false);
    private WeakReference<ScreenshareProducer> producerReference = new WeakReference<>(null);
    private WeakReference<ScreenshareConsumer> consumerReference = new WeakReference<>(null);

    /* JADX INFO: loaded from: classes3.dex */
    public enum Profile {
        QVGA(DilithiumEngine.DilithiumPolyT1PackedBytes, 240),
        VGA(Camera.DEFAULT_PREVIEW_WIDTH, Camera.DEFAULT_PREVIEW_HEIGHT),
        HD_720(Sink.Video.MAX_DIMENSION_HIGH, Sink.Video.MAX_DIMENSION_LOW),
        HD_1080(Sink.Screenshare.MAX_DIMENSION_HIGH, Sink.Screenshare.MAX_DIMENSION_LOW),
        UHD(3840, 2160);

        public final int high;
        public final int low;

        Profile(int i2, int i3) {
            this.high = i2;
            this.low = i3;
        }

        public Profile next() {
            Profile[] profileArrValues = values();
            return profileArrValues[(ordinal() + 1) % profileArrValues.length];
        }

        public Profile previous() {
            Profile[] profileArrValues = values();
            return profileArrValues[((ordinal() + profileArrValues.length) - 1) % profileArrValues.length];
        }
    }

    public ScreenshareModule(Rtcc rtcc, Call call, FrameFetcher frameFetcher) {
        this.rtcc = rtcc;
        this.call = call;
        this.frameFetcher = frameFetcher;
    }

    private boolean ensureNotTeardown() {
        if (!this.isTeardown) {
            return true;
        }
        log.i("ScreenshareModule must not be [teardown]");
        return false;
    }

    private void teardownConsumer() {
        ScreenshareConsumer screenshareConsumer = this.consumerReference.get();
        if (screenshareConsumer != null) {
            if (screenshareConsumer.isStarted()) {
                screenshareConsumer.onStop();
            }
            screenshareConsumer.onUnbind();
            this.consumerReference.clear();
        }
    }

    private void teardownProducer() {
        ScreenshareProducer screenshareProducer = this.producerReference.get();
        if (screenshareProducer != null) {
            if (screenshareProducer.isStarted()) {
                screenshareProducer.onStop();
            }
            screenshareProducer.onUnbind();
            this.producerReference.clear();
        }
    }

    public void consumer(ScreenshareConsumer screenshareConsumer) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("consumer(%s)", String.valueOf(screenshareConsumer));
        }
        if (ensureNotTeardown() && this.consumerReference.get() != screenshareConsumer) {
            teardownConsumer();
            if (screenshareConsumer == null) {
                return;
            }
            screenshareConsumer.onBind(this.call);
            if (this.isReceiving.get()) {
                screenshareConsumer.onStart();
                Frame frameLastFrame = this.call.frameFetcher.screenshareFrameCache.lastFrame();
                if (frameLastFrame != null) {
                    screenshareConsumer.onFrame(frameLastFrame);
                }
            }
            this.consumerReference = new WeakReference<>(screenshareConsumer);
        }
    }

    public boolean isReceiving() {
        return this.isReceiving.get();
    }

    public boolean isSending() {
        return this.isSending.get();
    }

    public void producer(ScreenshareProducer screenshareProducer) {
        OldLogger oldLogger = log;
        if (oldLogger.d()) {
            oldLogger.d("producer(%s)", String.valueOf(screenshareProducer));
        }
        if (ensureNotTeardown() && this.producerReference.get() != screenshareProducer) {
            teardownProducer();
            if (screenshareProducer == null) {
                return;
            }
            Call call = this.call;
            screenshareProducer.onBind(call, call.screenshareSink);
            if (this.isSending.get()) {
                screenshareProducer.onStart();
            }
            this.producerReference = new WeakReference<>(screenshareProducer);
        }
    }

    public void releaseConsumer() {
        log.d("releaseConsumer()");
        teardownConsumer();
    }

    public void releaseProducer() {
        log.d("releaseProducer()");
        teardownProducer();
    }

    public Rtcc rtcc() {
        return this.rtcc;
    }

    public void start() {
        OldLogger oldLogger = log;
        oldLogger.d("start()");
        if (ensureNotTeardown() && Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceCallStatus(oldLogger, this.call, Call.Status.ACTIVE)) {
            if (this.isReceiving.get()) {
                oldLogger.i("Call must not be [receiving] screenshare");
            }
            if (this.isSending.get()) {
                oldLogger.i("Call is already [sending] screenshare");
            }
            Call call = this.call;
            call.nativeInterface.control(Call.Control.STARTSHARE, call.id, 0);
        }
    }

    public void stop() {
        OldLogger oldLogger = log;
        oldLogger.d("stop()");
        if (ensureNotTeardown() && Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) && Preconditions.enforceCallStatus(oldLogger, this.call, Call.Status.ACTIVE)) {
            if (!this.isSending.get()) {
                oldLogger.i("Call must be [sending] screenshare");
            }
            Call call = this.call;
            call.nativeInterface.control(Call.Control.STOPSHARE, call.id, -1);
        }
    }

    public void teardown() {
        this.isTeardown = true;
        teardownConsumer();
        teardownProducer();
    }

    public synchronized void updateReceivingStatus(boolean z) {
        try {
            if (this.isTeardown) {
                return;
            }
            if (this.isReceiving.compareAndSet(!z, z)) {
                FrameFetcher frameFetcher = this.frameFetcher;
                if (z) {
                    frameFetcher.startShare();
                } else {
                    frameFetcher.stopShare();
                }
                ScreenshareConsumer screenshareConsumer = this.consumerReference.get();
                if (screenshareConsumer != null) {
                    if (z) {
                        screenshareConsumer.onStart();
                    } else {
                        screenshareConsumer.onStop();
                        this.call.frameFetcher.screenshareFrameCache.teardown();
                    }
                }
                this.rtcc.bus.post(new ScreenshareEvent(this.call, this.isSending.get(), this.isReceiving.get()));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void updateSendingStatus(boolean z) {
        try {
            if (this.isTeardown) {
                return;
            }
            if (this.isSending.compareAndSet(!z, z)) {
                ScreenshareProducer screenshareProducer = this.producerReference.get();
                if (screenshareProducer != null) {
                    if (z) {
                        screenshareProducer.onStart();
                    } else {
                        screenshareProducer.onStop();
                    }
                }
                this.rtcc.bus.post(new ScreenshareEvent(this.call, this.isSending.get(), this.isReceiving.get()));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public ScreenshareProducer producer() {
        return this.producerReference.get();
    }

    public ScreenshareConsumer consumer() {
        return this.consumerReference.get();
    }
}
