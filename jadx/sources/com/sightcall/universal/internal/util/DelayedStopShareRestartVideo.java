package com.sightcall.universal.internal.util;

import com.sightcall.universal.Universal;
import java.lang.ref.WeakReference;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Rtcc;
import net.rtccloud.sdk.VideoModule;
import net.rtccloud.sdk.event.Event;
import net.rtccloud.sdk.event.call.ScreenshareEvent;
import net.rtccloud.sdk.event.call.StatusEvent;

/* JADX INFO: loaded from: classes3.dex */
public class DelayedStopShareRestartVideo {
    private final WeakReference<Call> ref;

    public DelayedStopShareRestartVideo(Call call) {
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
    public void onScreenshareEvent(ScreenshareEvent screenshareEvent) {
        unregister();
        Call call = screenshareEvent.call();
        VideoModule videoModuleVideo = call.video();
        if (call != this.ref.get() || call.status() != Call.Status.ACTIVE || screenshareEvent.isSending() || videoModuleVideo.isSending()) {
            return;
        }
        Universal.logger().d("DelayedStopShareRestartVideo restarting video");
        videoModuleVideo.start();
    }
}
