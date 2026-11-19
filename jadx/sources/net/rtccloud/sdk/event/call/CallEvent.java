package net.rtccloud.sdk.event.call;

import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CallEvent {
    protected final Call call;

    public CallEvent(Call call) {
        this.call = call;
    }

    public Call call() {
        return this.call;
    }

    public String toString() {
        return "CallEvent{call=" + this.call.id() + '}';
    }
}
