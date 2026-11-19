package com.google.firebase.sessions;

import com.google.firebase.encoders.annotations.Encodable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0081\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/google/firebase/sessions/SessionEvent;", "", "Lcom/google/firebase/sessions/EventType;", "eventType", "Lcom/google/firebase/sessions/SessionInfo;", "sessionData", "Lcom/google/firebase/sessions/ApplicationInfo;", "applicationInfo", "<init>", "(Lcom/google/firebase/sessions/EventType;Lcom/google/firebase/sessions/SessionInfo;Lcom/google/firebase/sessions/ApplicationInfo;)V", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Encodable
public final /* data */ class SessionEvent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EventType f35470a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SessionInfo f35471b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ApplicationInfo f35472c;

    public SessionEvent(EventType eventType, SessionInfo sessionInfo, ApplicationInfo applicationInfo) {
        eventType.getClass();
        sessionInfo.getClass();
        applicationInfo.getClass();
        this.f35470a = eventType;
        this.f35471b = sessionInfo;
        this.f35472c = applicationInfo;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SessionEvent)) {
            return false;
        }
        SessionEvent sessionEvent = (SessionEvent) obj;
        return this.f35470a == sessionEvent.f35470a && Intrinsics.c(this.f35471b, sessionEvent.f35471b) && Intrinsics.c(this.f35472c, sessionEvent.f35472c);
    }

    public final int hashCode() {
        return this.f35472c.hashCode() + ((this.f35471b.hashCode() + (this.f35470a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "SessionEvent(eventType=" + this.f35470a + ", sessionData=" + this.f35471b + ", applicationInfo=" + this.f35472c + ')';
    }
}
