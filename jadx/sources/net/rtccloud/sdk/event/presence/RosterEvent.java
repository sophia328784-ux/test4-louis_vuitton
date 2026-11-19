package net.rtccloud.sdk.event.presence;

import defpackage.tr;

/* JADX INFO: loaded from: classes4.dex */
public final class RosterEvent {
    private final int delta;
    private final int size;

    public RosterEvent(int i2, int i3) {
        this.delta = i2;
        this.size = i3;
    }

    public int delta() {
        return this.delta;
    }

    public int size() {
        return this.size;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("RosterEvent{delta=");
        sb.append(this.delta);
        sb.append(", size=");
        return tr.k(sb, this.size, '}');
    }
}
