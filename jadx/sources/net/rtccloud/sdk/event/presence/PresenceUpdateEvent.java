package net.rtccloud.sdk.event.presence;

import defpackage.tr;

/* JADX INFO: loaded from: classes4.dex */
public final class PresenceUpdateEvent {
    private final String uid;
    private final int value;

    public PresenceUpdateEvent(String str, int i2) {
        this.uid = str;
        this.value = i2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("PresenceUpdateEvent{uid='");
        sb.append(this.uid);
        sb.append("', value=");
        return tr.k(sb, this.value, '}');
    }

    public String uid() {
        return this.uid;
    }

    public int value() {
        return this.value;
    }
}
