package net.rtccloud.sdk.event.datachannel;

import defpackage.tr;
import net.rtccloud.sdk.DataChannelModule;

/* JADX INFO: loaded from: classes4.dex */
public final class DataChannelAckEvent extends DataChannelEvent {
    private final int flag;
    private final int id;
    private final String uid;

    public DataChannelAckEvent(DataChannelModule dataChannelModule, int i2, int i3, String str) {
        super(dataChannelModule);
        this.id = i2;
        this.flag = i3;
        this.uid = str;
    }

    public int flag() {
        return this.flag;
    }

    public int id() {
        return this.id;
    }

    @Override // net.rtccloud.sdk.event.datachannel.DataChannelEvent
    public String toString() {
        StringBuilder sb = new StringBuilder("DataChannelAckEvent{id=");
        sb.append(this.id);
        sb.append(", uid='");
        sb.append(this.uid);
        sb.append("', flag=");
        return tr.k(sb, this.flag, '}');
    }

    public String uid() {
        return this.uid;
    }
}
