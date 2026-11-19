package net.rtccloud.sdk.event.datachannel;

import defpackage.tr;
import net.rtccloud.sdk.DataChannelModule;

/* JADX INFO: loaded from: classes4.dex */
public final class DataChannelInBandEvent extends DataChannelEvent {
    private final byte[] payload;

    public DataChannelInBandEvent(DataChannelModule dataChannelModule, byte[] bArr) {
        super(dataChannelModule);
        this.payload = bArr;
    }

    public byte[] payload() {
        return this.payload;
    }

    @Override // net.rtccloud.sdk.event.datachannel.DataChannelEvent
    public String toString() {
        StringBuilder sb = new StringBuilder("DataChannelInBandEvent{payload=");
        byte[] bArr = this.payload;
        return tr.k(sb, bArr == null ? -1 : bArr.length, '}');
    }
}
