package net.rtccloud.sdk.event.meetingpoint;

import net.rtccloud.sdk.MeetingPoint;

/* JADX INFO: loaded from: classes4.dex */
public abstract class MeetingPointEvent {
    private final MeetingPoint meetingPoint;

    public MeetingPointEvent(MeetingPoint meetingPoint) {
        this.meetingPoint = meetingPoint;
    }

    public MeetingPoint meetingPoint() {
        return this.meetingPoint;
    }

    public String toString() {
        return "MeetingPointEvent{id='" + this.meetingPoint.id() + "'}";
    }
}
