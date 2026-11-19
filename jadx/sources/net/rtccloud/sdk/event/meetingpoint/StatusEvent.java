package net.rtccloud.sdk.event.meetingpoint;

import net.rtccloud.sdk.MeetingPoint;

/* JADX INFO: loaded from: classes4.dex */
public final class StatusEvent extends MeetingPointEvent {
    private final MeetingPoint.Status status;

    public StatusEvent(MeetingPoint meetingPoint, MeetingPoint.Status status) {
        super(meetingPoint);
        this.status = status;
    }

    public MeetingPoint.Status status() {
        return this.status;
    }

    @Override // net.rtccloud.sdk.event.meetingpoint.MeetingPointEvent
    public String toString() {
        return "StatusEvent{id='" + meetingPoint().id() + "', status=" + this.status + '}';
    }
}
