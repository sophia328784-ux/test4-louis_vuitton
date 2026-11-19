package net.rtccloud.sdk.event.call;

import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final class StatusEvent extends CallEvent {
    private final Call.Status status;

    public StatusEvent(Call call, Call.Status status) {
        super(call);
        this.status = status;
    }

    public Call.Status status() {
        return this.status;
    }

    @Override // net.rtccloud.sdk.event.call.CallEvent
    public String toString() {
        return "StatusEvent{call=" + this.call.id() + ", status=" + this.status + '}';
    }
}
