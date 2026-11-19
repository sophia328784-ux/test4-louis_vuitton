package net.rtccloud.sdk.event.call;

import java.util.Arrays;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Participant;

/* JADX INFO: loaded from: classes4.dex */
public final class FloorEvent extends CallEvent {
    private final Participant[] participants;

    public FloorEvent(Call call, Participant[] participantArr) {
        super(call);
        this.participants = (Participant[]) Arrays.copyOf(participantArr, participantArr.length);
    }

    public Participant[] participants() {
        return this.participants;
    }

    @Override // net.rtccloud.sdk.event.call.CallEvent
    public String toString() {
        return "FloorEvent{call=" + this.call.id() + ", participants=" + Arrays.toString(this.participants) + '}';
    }
}
