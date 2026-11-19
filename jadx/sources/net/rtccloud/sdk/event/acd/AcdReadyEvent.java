package net.rtccloud.sdk.event.acd;

import net.rtccloud.sdk.AcdModule;

/* JADX INFO: loaded from: classes4.dex */
public final class AcdReadyEvent {
    private final AcdModule.Request request;

    public AcdReadyEvent(AcdModule.Request request) {
        this.request = request;
    }

    public AcdModule.Request request() {
        return this.request;
    }

    public String toString() {
        return "AcdReadyEvent{request=" + this.request + '}';
    }

    public String uid() {
        return this.request.uid();
    }
}
