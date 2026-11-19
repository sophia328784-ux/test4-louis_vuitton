package net.rtccloud.sdk.event.presence;

import defpackage.tr;
import net.rtccloud.sdk.User;

/* JADX INFO: loaded from: classes4.dex */
public final class RegistrationEvent {
    private final int rosterLength;
    private final User.Status status;

    public RegistrationEvent(User.Status status, int i2) {
        this.status = status;
        this.rosterLength = i2;
    }

    public int rosterLength() {
        return this.rosterLength;
    }

    public User.Status status() {
        return this.status;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("RegistrationEvent{status=");
        sb.append(this.status);
        sb.append(", rosterLength=");
        return tr.k(sb, this.rosterLength, '}');
    }
}
