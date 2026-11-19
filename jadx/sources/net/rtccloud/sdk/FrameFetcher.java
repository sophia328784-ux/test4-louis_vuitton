package net.rtccloud.sdk;

import net.rtccloud.sdk.util.OldLogger;

/* JADX INFO: loaded from: classes4.dex */
public final class FrameFetcher {
    private static final int SCREENSHARE_CACHE_SIZE = 1;
    private static final int VIDEO_CACHE_SIZE = 5;
    private static final OldLogger log = OldLogger.get(OldLogger.Internal.FRAME_FETCHER);
    private volatile boolean isTeardown;
    final FrameCache screenshareFrameCache;
    private final FrameFetcherThread.ScreenshareFrameFetcherThread share;
    private final FrameFetcherThread.VideoFrameFetcherThread video;
    final FrameCache videoFrameCache;

    public FrameFetcher(Call call) {
        FrameCache frameCache = new FrameCache(5);
        this.videoFrameCache = frameCache;
        FrameCache frameCache2 = new FrameCache(1);
        this.screenshareFrameCache = frameCache2;
        this.video = new FrameFetcherThread.VideoFrameFetcherThread(call, frameCache);
        this.share = new FrameFetcherThread.ScreenshareFrameFetcherThread(call, frameCache2);
    }

    private boolean ensureNotTeardown() {
        if (!this.isTeardown) {
            return true;
        }
        log.i("FrameFetcher must not be [teardown]");
        return false;
    }

    public void startShare() {
        if (ensureNotTeardown()) {
            this.share.doResume();
        }
    }

    public void startVideo() {
        if (ensureNotTeardown()) {
            this.video.doResume();
        }
    }

    public void stopShare() {
        if (ensureNotTeardown()) {
            this.share.doPause();
        }
    }

    public void stopVideo() {
        if (ensureNotTeardown()) {
            this.video.doPause();
        }
    }

    public void teardown() {
        this.isTeardown = true;
        this.video.teardown();
        this.share.teardown();
        this.videoFrameCache.teardown();
        this.screenshareFrameCache.teardown();
    }
}
