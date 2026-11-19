package net.rtccloud.sdk;

import android.util.LruCache;
import net.rtccloud.sdk.util.OldLogger;

/* JADX INFO: loaded from: classes4.dex */
public class FrameCache extends LruCache<Integer, Frame> {
    private static final OldLogger log = OldLogger.get(OldLogger.Internal.CACHE);
    private Integer lastKey;

    public FrameCache(int i2) {
        super(i2);
    }

    private synchronized String dump() {
        return toString() + " size: " + size();
    }

    public synchronized Frame acquire(int i2, int i3, int i4) {
        if (i2 == 4096) {
            i2 = -1;
        }
        Integer numValueOf = Integer.valueOf(i2);
        this.lastKey = numValueOf;
        Frame frame = get(numValueOf);
        if (frame == null) {
            Frame frameCreate = Frame.create(numValueOf, i3, i4);
            log.d(frameCreate + " created");
            put(numValueOf, frameCreate);
            return frameCreate;
        }
        if (frame.bitmap.getWidth() != i3 || frame.bitmap.getHeight() != i4) {
            frame.resizeBitmap(i3, i4);
            log.d(frame + " resized");
        }
        return frame;
    }

    @Override // android.util.LruCache
    public void entryRemoved(boolean z, Integer num, Frame frame, Frame frame2) {
        super.entryRemoved(z, num, frame, frame2);
        if (frame2 != null) {
            OldLogger oldLogger = log;
            if (oldLogger.d()) {
                oldLogger.d("%s replaced by %s", String.valueOf(frame), String.valueOf(frame2));
            }
        } else {
            OldLogger oldLogger2 = log;
            if (oldLogger2.d()) {
                oldLogger2.d("%s removed", String.valueOf(frame));
            }
        }
        frame.bitmap.recycle();
    }

    public Frame lastFrame() {
        Integer num = this.lastKey;
        if (num != null) {
            return get(num);
        }
        return null;
    }

    public synchronized void teardown() {
        OldLogger oldLogger = log;
        oldLogger.d("teardown()");
        evictAll();
        this.lastKey = null;
        oldLogger.d(dump());
    }
}
