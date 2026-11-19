package net.rtccloud.sdk.event.call;

import defpackage.d21;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final class AudioEvent extends CallEvent {
    private final boolean isPlayerMuted;
    private final boolean isRecorderMuted;

    public AudioEvent(Call call, boolean z, boolean z2) {
        super(call);
        this.isRecorderMuted = z;
        this.isPlayerMuted = z2;
    }

    public boolean isPlayerMuted() {
        return this.isPlayerMuted;
    }

    public boolean isRecorderMuted() {
        return this.isRecorderMuted;
    }

    @Override // net.rtccloud.sdk.event.call.CallEvent
    public String toString() {
        StringBuilder sb = new StringBuilder("AudioEvent{call=");
        sb.append(this.call.id());
        sb.append(", isRecorderMuted=");
        sb.append(this.isRecorderMuted);
        sb.append(", isPlayerMuted=");
        return d21.q(sb, this.isPlayerMuted, '}');
    }
}
