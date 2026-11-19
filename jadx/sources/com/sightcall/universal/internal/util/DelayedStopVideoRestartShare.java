package com.sightcall.universal.internal.util;

import com.sightcall.universal.Universal;
import java.lang.ref.WeakReference;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Rtcc;
import net.rtccloud.sdk.ScreenshareModule;
import net.rtccloud.sdk.event.Event;
import net.rtccloud.sdk.event.call.StatusEvent;
import net.rtccloud.sdk.event.call.VideoEvent;

/* JADX INFO: loaded from: classes3.dex */
public class DelayedStopVideoRestartShare {
    private final WeakReference<Call> ref;

    public DelayedStopVideoRestartShare(Call call) {
        this.ref = new WeakReference<>(call);
    }

    private void unregister() {
        Rtcc.instance().bus().unregister(this);
    }

    @Event
    public void onCallStatusEvent(StatusEvent statusEvent) {
        if (statusEvent.status() == Call.Status.ENDED) {
            unregister();
        }
    }

    @Event
    public void onVideoEvent(VideoEvent videoEvent) {
        unregister();
        Call call = videoEvent.call();
        ScreenshareModule screenshareModuleScreenshare = call.screenshare();
        if (call != this.ref.get() || call.status() != Call.Status.ACTIVE || videoEvent.isSending() || screenshareModuleScreenshare.isSending()) {
            return;
        }
        Universal.logger().d("DelayedStopVideoRestartShare restarting screenshare");
        screenshareModuleScreenshare.start();
    }
}
