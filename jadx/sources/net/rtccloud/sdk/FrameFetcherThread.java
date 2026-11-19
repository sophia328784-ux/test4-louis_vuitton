package net.rtccloud.sdk;

import net.rtccloud.sdk.util.OldLogger;

/* JADX INFO: loaded from: classes4.dex */
public abstract class FrameFetcherThread extends Thread {
    private static final int SLEEP_TIMEOUT = 50;
    private static final OldLogger log = OldLogger.get(OldLogger.Internal.ENGINE);
    final FrameCache cache;
    final Call call;
    volatile boolean isRunning;
    private final Object lock;
    private volatile boolean teardown;

    public static class ScreenshareFrameFetcherThread extends FrameFetcherThread {
        public ScreenshareFrameFetcherThread(Call call, FrameCache frameCache) {
            super("ScreenshareFrameFetcherThread", call, frameCache);
            FrameFetcherThread.log.d("new ScreenshareFrameFetcherThread()");
            setPriority(1);
            start();
        }

        @Override // net.rtccloud.sdk.FrameFetcherThread
        public void fetchAndDispatch() throws InterruptedException {
            Frame frameNCallGetShareFrame = Jni.nCallGetShareFrame(this.cache);
            if (!this.isRunning) {
                FrameFetcherThread.log.i("Screenshare fetcher Thread is [paused]");
                return;
            }
            if (frameNCallGetShareFrame == null) {
                FrameFetcherThread.log.i("Fetched screenshare frame is [null]");
                Thread.sleep(50L);
                return;
            }
            ScreenshareConsumer screenshareConsumerConsumer = this.call.screenshare().consumer();
            if (screenshareConsumerConsumer == null) {
                FrameFetcherThread.log.i("Fetched screenshare frame but [ScreenshareConsumer] is null");
            } else if (screenshareConsumerConsumer.isStarted()) {
                screenshareConsumerConsumer.onFrame(frameNCallGetShareFrame);
            } else {
                FrameFetcherThread.log.w("Fetched screenshare frame but [ScreenshareConsumer] is not started");
            }
        }
    }

    public static class VideoFrameFetcherThread extends FrameFetcherThread {
        public VideoFrameFetcherThread(Call call, FrameCache frameCache) {
            super("VideoFrameFetcherThread", call, frameCache);
            FrameFetcherThread.log.d("new VideoFrameFetcherThread()");
            setPriority(5);
            start();
        }

        @Override // net.rtccloud.sdk.FrameFetcherThread
        public void fetchAndDispatch() throws InterruptedException {
            Participant participant;
            Frame frameNCallGetVideoFrame = Jni.nCallGetVideoFrame(this.cache);
            if (!this.isRunning) {
                FrameFetcherThread.log.i("Video fetcher Thread is [paused]");
                return;
            }
            if (frameNCallGetVideoFrame == null) {
                FrameFetcherThread.log.i("Fetched video frame is [null]");
                Thread.sleep(50L);
                return;
            }
            if (this.call.isConference()) {
                int i2 = frameNCallGetVideoFrame.pid;
                Call call = this.call;
                participant = i2 == -1 ? call.conference().activeSpeaker() : call.conference().participant(frameNCallGetVideoFrame.pid);
            } else {
                participant = this.call.participant();
            }
            if (participant == null) {
                FrameFetcherThread.log.w("Fetched video frame but [Participant " + frameNCallGetVideoFrame.id + "] is null");
                return;
            }
            VideoConsumer videoConsumer = participant.videoConsumer();
            if (videoConsumer == null) {
                if (FrameFetcherThread.log.i()) {
                    FrameFetcherThread.log.i("Fetched video frame but [VideoConsumer of participant " + frameNCallGetVideoFrame.id + "] is null");
                    return;
                }
                return;
            }
            if (!participant.isSendingVideo()) {
                FrameFetcherThread.log.w("Fetched video frame but [Participant " + frameNCallGetVideoFrame.id + "] is not sending video -> dropping frame");
                this.cache.remove(frameNCallGetVideoFrame.id);
                return;
            }
            if (videoConsumer.isStarted()) {
                videoConsumer.onFrame(frameNCallGetVideoFrame);
                return;
            }
            FrameFetcherThread.log.w("Fetched video frame but [" + getClass().getName() + "@" + Integer.toHexString(hashCode()) + " of participant " + frameNCallGetVideoFrame.id + "] is not started");
        }
    }

    public FrameFetcherThread(String str, Call call, FrameCache frameCache) {
        super(str);
        this.lock = new Object();
        this.call = call;
        this.cache = frameCache;
        this.isRunning = false;
    }

    public void doPause() {
        log.d("doPause(" + getName() + ")");
        if (this.isRunning) {
            this.isRunning = false;
        }
    }

    public void doResume() {
        log.d("doResume(" + getName() + ")");
        if (this.isRunning) {
            return;
        }
        this.isRunning = true;
        synchronized (this.lock) {
            this.lock.notify();
        }
    }

    public abstract void fetchAndDispatch() throws InterruptedException;

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        while (!Thread.currentThread().isInterrupted() && !this.teardown) {
            if (!this.isRunning) {
                try {
                    synchronized (this.lock) {
                        try {
                            this.lock.wait();
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                } catch (InterruptedException unused) {
                    log.i(getName() + " interrupted [paused]");
                    return;
                }
            }
            try {
                fetchAndDispatch();
            } catch (InterruptedException unused2) {
                log.i(getName() + " interrupted [active]");
                return;
            }
        }
    }

    public void teardown() {
        log.d("teardown(" + getName() + ")");
        this.isRunning = false;
        this.teardown = true;
        interrupt();
    }
}
