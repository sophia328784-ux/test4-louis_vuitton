package net.rtccloud.sdk.event.acd;

import net.rtccloud.sdk.AcdModule;

/* JADX INFO: loaded from: classes4.dex */
public final class AcdQueueEvent {
    private final AcdModule.Request request;

    public AcdQueueEvent(AcdModule.Request request) {
        this.request = request;
    }

    public int index() {
        return this.request.index();
    }

    public int length() {
        return this.request.length();
    }

    public AcdModule.Request request() {
        return this.request;
    }

    public String toString() {
        return "AcdQueueEvent{request=" + this.request + '}';
    }
}
