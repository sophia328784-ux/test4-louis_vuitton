package net.rtccloud.sdk.event.call;

import net.rtccloud.sdk.AudioModule;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final class AudioRouteEvent extends CallEvent {
    private final AudioModule.AudioRoute route;

    public AudioRouteEvent(Call call, AudioModule.AudioRoute audioRoute) {
        super(call);
        this.route = audioRoute;
    }

    public AudioModule.AudioRoute route() {
        return this.route;
    }

    @Override // net.rtccloud.sdk.event.call.CallEvent
    public String toString() {
        return "AudioRouteEvent{call=" + this.call.id() + ", route=" + this.route + '}';
    }
}
