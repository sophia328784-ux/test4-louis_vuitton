package net.rtccloud.sdk.event.call;

import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.VideoModule;

/* JADX INFO: loaded from: classes4.dex */
public final class VideoProfileEvent extends CallEvent {
    private final VideoModule.Profile profile;

    public VideoProfileEvent(Call call, VideoModule.Profile profile) {
        super(call);
        this.profile = profile;
    }

    public VideoModule.Profile profile() {
        return this.profile;
    }

    @Override // net.rtccloud.sdk.event.call.CallEvent
    public String toString() {
        return "VideoProfileEvent{call=" + this.call.id() + ", profile=" + this.profile + '}';
    }
}
