package net.rtccloud.sdk.event.meetingpoint;

import net.rtccloud.sdk.MeetingPoint;

/* JADX INFO: loaded from: classes4.dex */
public final class UpdateEvent extends MeetingPointEvent {
    public UpdateEvent(MeetingPoint meetingPoint) {
        super(meetingPoint);
    }

    @Override // net.rtccloud.sdk.event.meetingpoint.MeetingPointEvent
    public String toString() {
        return "UpdateEvent{id='" + meetingPoint().id() + "'}'";
    }
}
