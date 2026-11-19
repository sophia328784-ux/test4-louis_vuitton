package net.rtccloud.sdk.event.meetingpoint;

import defpackage.n00;
import net.rtccloud.sdk.MeetingPoint;

/* JADX INFO: loaded from: classes4.dex */
public final class RequestEvent extends MeetingPointEvent {
    private final String displayName;
    private final Type type;
    private final String uid;

    /* JADX INFO: loaded from: classes3.dex */
    public enum Type {
        ACCEPT,
        ACCEPTONETOONE,
        DENY,
        CANCEL,
        JOIN,
        INVITE
    }

    public RequestEvent(MeetingPoint meetingPoint, Type type) {
        super(meetingPoint);
        this.type = type;
        this.uid = null;
        this.displayName = null;
    }

    public String displayName() {
        return this.displayName;
    }

    @Override // net.rtccloud.sdk.event.meetingpoint.MeetingPointEvent
    public String toString() {
        StringBuilder sb = new StringBuilder("RequestEvent{id='");
        sb.append(meetingPoint().id());
        sb.append("', type=");
        sb.append(this.type);
        sb.append(", uid='");
        sb.append(this.uid);
        sb.append("', displayName='");
        return n00.r(this.displayName, "'}", sb);
    }

    public Type type() {
        return this.type;
    }

    public String uid() {
        return this.uid;
    }

    public RequestEvent(MeetingPoint meetingPoint, Type type, String str, String str2) {
        super(meetingPoint);
        this.type = type;
        this.uid = str;
        this.displayName = str2;
    }
}
