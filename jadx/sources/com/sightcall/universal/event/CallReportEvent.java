package com.sightcall.universal.event;

import com.sightcall.universal.model.Session;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.event.call.CallEvent;

/* JADX INFO: loaded from: classes3.dex */
public class CallReportEvent extends CallEvent {
    private final Session session;

    public CallReportEvent(Call call) {
        super(call);
        this.session = null;
    }

    public long activeDuration() {
        return this.call.activeDuration();
    }

    public long duration() {
        return this.call.duration();
    }

    public Call.EndReason result() {
        return this.call.endReason();
    }

    public Session session() {
        return this.session;
    }

    @Override // net.rtccloud.sdk.event.call.CallEvent
    public String toString() {
        return "CallReportEvent{call=" + this.call.id() + ", duration=" + duration() + ", activeDuration=" + activeDuration() + ", result=" + result() + '}';
    }

    public CallReportEvent(Call call, Session session) {
        super(call);
        this.session = session;
    }
}
