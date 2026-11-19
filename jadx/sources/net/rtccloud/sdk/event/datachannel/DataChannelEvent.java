package net.rtccloud.sdk.event.datachannel;

import net.rtccloud.sdk.DataChannelModule;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DataChannelEvent {
    private final DataChannelModule dataChannelModule;

    public DataChannelEvent(DataChannelModule dataChannelModule) {
        this.dataChannelModule = dataChannelModule;
    }

    public DataChannelModule dataChannel() {
        return this.dataChannelModule;
    }

    public String toString() {
        return "DataChannelEvent{}";
    }
}
