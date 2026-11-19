package net.rtccloud.sdk.event.datachannel;

import defpackage.tr;
import net.rtccloud.sdk.DataChannelModule;

/* JADX INFO: loaded from: classes4.dex */
public final class DataChannelOutOfBandEvent extends DataChannelEvent {
    private final int id;
    private final byte[] payload;
    private final String uid;

    public DataChannelOutOfBandEvent(DataChannelModule dataChannelModule, int i2, String str, byte[] bArr) {
        super(dataChannelModule);
        this.id = i2;
        this.uid = str;
        this.payload = bArr;
    }

    public final boolean ack(int i2) {
        return dataChannel().ack(this.uid, this.id, i2);
    }

    public int id() {
        return this.id;
    }

    public byte[] payload() {
        return this.payload;
    }

    @Override // net.rtccloud.sdk.event.datachannel.DataChannelEvent
    public String toString() {
        StringBuilder sb = new StringBuilder("DataChannelOutOfBandEvent{id=");
        sb.append(this.id);
        sb.append(", uid='");
        sb.append(this.uid);
        sb.append("', payload=");
        byte[] bArr = this.payload;
        return tr.k(sb, bArr == null ? -1 : bArr.length, '}');
    }

    public String uid() {
        return this.uid;
    }
}
