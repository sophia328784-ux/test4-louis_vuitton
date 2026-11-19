package net.rtccloud.sdk.event.call;

import defpackage.n00;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public class SipEvent extends CallEvent {
    private final String sipId;

    public SipEvent(Call call, String str) {
        super(call);
        this.sipId = str;
    }

    public String sipId() {
        return this.sipId;
    }

    @Override // net.rtccloud.sdk.event.call.CallEvent
    public String toString() {
        StringBuilder sb = new StringBuilder("SipEvent{call=");
        sb.append(this.call.id());
        sb.append(", sipId='");
        return n00.r(this.sipId, "'}", sb);
    }
}
