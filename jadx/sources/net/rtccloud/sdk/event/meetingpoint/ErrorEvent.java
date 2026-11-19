package net.rtccloud.sdk.event.meetingpoint;

import defpackage.n00;
import net.rtccloud.sdk.MeetingPoint;

/* JADX INFO: loaded from: classes4.dex */
public final class ErrorEvent extends MeetingPointEvent {
    private final Action action;
    private final String message;

    public enum Action {
        UNKNOWN,
        HOST,
        JOIN,
        ACCEPT,
        ACCEPTONETOONE,
        DENY,
        CANCEL,
        STOP,
        INVITE,
        LOCK,
        LIST,
        DETAILS,
        CREATE,
        UPDATE,
        DELETE
    }

    public ErrorEvent(MeetingPoint meetingPoint, Action action, String str) {
        super(meetingPoint);
        this.action = action;
        this.message = str;
    }

    public Action action() {
        return this.action;
    }

    public String message() {
        return this.message;
    }

    @Override // net.rtccloud.sdk.event.meetingpoint.MeetingPointEvent
    public String toString() {
        StringBuilder sb = new StringBuilder("ErrorEvent{id='");
        sb.append(meetingPoint().id());
        sb.append("', action=");
        sb.append(this.action);
        sb.append(", message='");
        return n00.r(this.message, "'}", sb);
    }
}
