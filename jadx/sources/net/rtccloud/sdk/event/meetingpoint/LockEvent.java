package net.rtccloud.sdk.event.meetingpoint;

import net.rtccloud.sdk.MeetingPoint;

/* JADX INFO: loaded from: classes4.dex */
public final class LockEvent extends MeetingPointEvent {
    private final MeetingPoint.Lock lock;

    public LockEvent(MeetingPoint meetingPoint, MeetingPoint.Lock lock) {
        super(meetingPoint);
        this.lock = lock;
    }

    public MeetingPoint.Lock lock() {
        return this.lock;
    }

    @Override // net.rtccloud.sdk.event.meetingpoint.MeetingPointEvent
    public String toString() {
        return "LockEvent{id='" + meetingPoint().id() + "', lock=" + this.lock + '}';
    }
}
