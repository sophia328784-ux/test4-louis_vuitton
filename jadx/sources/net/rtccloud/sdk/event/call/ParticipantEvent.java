package net.rtccloud.sdk.event.call;

import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Participant;

/* JADX INFO: loaded from: classes4.dex */
public final class ParticipantEvent extends CallEvent {
    private final Participant participant;

    public ParticipantEvent(Call call, Participant participant) {
        super(call);
        this.participant = participant;
    }

    public Participant participant() {
        return this.participant;
    }

    @Override // net.rtccloud.sdk.event.call.CallEvent
    public String toString() {
        return "ParticipantEvent{call=" + this.call.id() + ", participant=" + this.participant + '}';
    }
}
