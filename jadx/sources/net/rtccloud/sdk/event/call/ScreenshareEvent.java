package net.rtccloud.sdk.event.call;

import defpackage.d21;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final class ScreenshareEvent extends CallEvent {
    private final boolean isReceiving;
    private final boolean isSending;

    public ScreenshareEvent(Call call, boolean z, boolean z2) {
        super(call);
        this.isSending = z;
        this.isReceiving = z2;
    }

    public boolean isReceiving() {
        return this.isReceiving;
    }

    public boolean isSending() {
        return this.isSending;
    }

    @Override // net.rtccloud.sdk.event.call.CallEvent
    public String toString() {
        StringBuilder sb = new StringBuilder("ScreenshareEvent{call=");
        sb.append(this.call.id());
        sb.append(", isSending=");
        sb.append(this.isSending);
        sb.append(", isReceiving=");
        return d21.q(sb, this.isReceiving, '}');
    }
}
